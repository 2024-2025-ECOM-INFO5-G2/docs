# Déclaration des variables
variable "ssh_key" {
  description = "SSH public key for the instances"  # Clé publique SSH utilisée pour accéder aux instances
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID"  # ID de souscription Azure pour l'authentification
  type        = string
}

# Configuration du provider Azure Resource Manager
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id  # ID de souscription fourni par la variable
}

# Ressource : Groupe de ressources
resource "azurerm_resource_group" "rg" {
  name     = "MMM01_Group"  # Nom du groupe de ressources
  location = "West Europe"   # Localisation du groupe de ressources
}

# Ressource : Réseau virtuel
resource "azurerm_virtual_network" "vnet" {
  name                = "MMM01_VNet"  # Nom du réseau virtuel
  location            = azurerm_resource_group.rg.location  # Localisation du réseau virtuel
  resource_group_name = azurerm_resource_group.rg.name  # Nom du groupe de ressources associé
  address_space       = ["10.0.0.0/16"]  # Plage d'adresses IP pour le réseau virtuel
}

# Ressource : Sous-réseau
resource "azurerm_subnet" "subnet" {
  name                 = "MMM01_Subnet"  # Nom du sous-réseau
  resource_group_name  = azurerm_resource_group.rg.name  # Nom du groupe de ressources associé
  virtual_network_name = azurerm_virtual_network.vnet.name  # Nom du réseau virtuel associé
  address_prefixes     = ["10.0.1.0/24"]  # Plage d'adresses IP pour le sous-réseau
}

# Ressource : Interface réseau
resource "azurerm_network_interface" "nic" {
  name                = "MMM01_NIC"  # Nom de l'interface réseau
  location            = azurerm_resource_group.rg.location  # Localisation de l'interface réseau
  resource_group_name = azurerm_resource_group.rg.name  # Nom du groupe de ressources associé

  ip_configuration {
    name                          = "internal"  # Nom de la configuration IP
    subnet_id                    = azurerm_subnet.subnet.id  # ID du sous-réseau associé
    private_ip_address_allocation = "Dynamic"  # Allocation dynamique de l'adresse IP privée
    public_ip_address_id         = azurerm_public_ip.pub_ip.id  # ID de l'adresse IP publique associée
  }
}

# Ressource : Adresse IP publique
resource "azurerm_public_ip" "pub_ip" {
  name                = "MMM01_PublicIP"  # Nom de l'adresse IP publique
  location            = azurerm_resource_group.rg.location  # Localisation de l'adresse IP publique
  resource_group_name = azurerm_resource_group.rg.name  # Nom du groupe de ressources associé
  allocation_method   = "Static"  # Méthode d'allocation d'adresse IP (statique)
  sku                 = "Standard"  # SKU de l'adresse IP
}

# Ressource : Groupe de sécurité réseau
resource "azurerm_network_security_group" "nsg" {
  name                = "MMM01_NSG"  # Nom du groupe de sécurité réseau
  location            = azurerm_resource_group.rg.location  # Localisation du groupe de sécurité
  resource_group_name = azurerm_resource_group.rg.name  # Nom du groupe de ressources associé

  # Règle de sécurité pour autoriser le trafic SSH
  security_rule {
    name                       = "allow_ssh"
    priority                   = 1000  # Priorité de la règle
    direction                  = "Inbound"  # Direction du trafic (entrant)
    access                     = "Allow"  # Autoriser le trafic
    protocol                   = "Tcp"  # Protocole utilisé
    source_port_range          = "*"  # Plage de ports source
    destination_port_range     = 22  # Port de destination pour SSH
    source_address_prefix      = "*"  # Plage d'adresses source
    destination_address_prefix = "*"  # Plage d'adresses destination
  }

  # Règle de sécurité pour autoriser le trafic HTTP
  security_rule {
    name                       = "allow_http"
    priority                   = 1001  # Priorité de la règle
    direction                  = "Inbound"  # Direction du trafic (entrant)
    access                     = "Allow"  # Autoriser le trafic
    protocol                   = "Tcp"  # Protocole utilisé
    source_port_range          = "*"  # Plage de ports source
    destination_port_range     = 80  # Port de destination pour HTTP
    source_address_prefix      = "*"  # Plage d'adresses source
    destination_address_prefix = "*"  # Plage d'adresses destination
  }

  # Règle de sécurité pour autoriser le trafic HTTPS
  security_rule {
    name                       = "allow_https"
    priority                   = 1002  # Priorité de la règle
    direction                  = "Inbound"  # Direction du trafic (entrant)
    access                     = "Allow"  # Autoriser le trafic
    protocol                   = "Tcp"  # Protocole utilisé
    source_port_range          = "*"  # Plage de ports source
    destination_port_range     = 443  # Port de destination pour HTTPS
    source_address_prefix      = "*"  # Plage d'adresses source
    destination_address_prefix = "*"  # Plage d'adresses destination
  }
}

# Ressource : Machine virtuelle Linux
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "MMM01VM"  # Nom de la machine virtuelle
  resource_group_name = azurerm_resource_group.rg.name  # Nom du groupe de ressources associé
  location            = azurerm_resource_group.rg.location  # Localisation de la machine virtuelle
  size                = "Standard_B1s"  # Taille de la machine virtuelle
  admin_username      = "azureuser"  # Nom d'utilisateur administrateur

  network_interface_ids = [
    azurerm_network_interface.nic.id,  # ID de l'interface réseau associée
  ]

  admin_ssh_key {
    username   = "azureuser"  # Nom d'utilisateur pour la clé SSH
    public_key = file("path/to/your/public/ssh/key")  # Chemin vers la clé publique SSH
  }

  os_disk {
    name                 = "MMM01_OSDisk"  # Nom du disque OS
    caching              = "ReadWrite"  # Politique de cache pour le disque
    storage_account_type = "Standard_LRS"  # Type de compte de stockage
  }

  source_image_reference {
    publisher = "Canonical"  # Éditeur de l'image
    offer     = "0001-com-ubuntu-server-jammy"  # Offre de l'image
    sku       = "22_04-lts-gen2"  # SKU de l'image
    version   = "latest"  # Version de l'image
  }
}

# Sortie : Adresse IP publique
output "public_ip" {
  value = azurerm_public_ip.pub_ip.ip_address  # Valeur de l'adresse IP publique à afficher après l'exécution
}
