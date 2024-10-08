# Terraform with Azure: Setup and Usage Guide

This guide provides a comprehensive overview of how to set up and use Terraform with Azure, including installation instructions, prerequisites, and detailed steps for deploying resources using a Terraform configuration file.

## Prerequisites

Before you begin, ensure you have the following installed:

1. **Terraform**
2. **Azure CLI**
3. **A valid Azure account**

### Installing Terraform

1. **Download Terraform:**
   - For macOS/Windows:
      - Visit the [Terraform downloads page](https://www.terraform.io/downloads.html).
      - Download the appropriate package for your operating system (Windows, macOS, or Linux).
   -for Linux:
      - ```bash
        wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
        ```
2. **Install Terraform:**
   - For Windows:
     - Extract the downloaded ZIP file.
     - Move the `terraform.exe` file to a directory included in your system's `PATH` (e.g., `C:\Program Files\Terraform`).
   - For macOS:
     - Extract the downloaded archive.
     - Move the `terraform` binary to `/usr/local/bin/`:
       ```bash
       sudo mv terraform /usr/local/bin/
       ```
     - Make it executable:
       ```bash
       sudo chmod +x /usr/local/bin/terraform
       ```
   - For Linux:
     - ```bash
       echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
       sudo apt update && sudo apt install terraform
       ```


3. **Verify Installation:**
   - Open your terminal or command prompt and run:
     ```bash
     terraform -v
     ```
   - You should see the installed version of Terraform.

### Installing Azure CLI

1. **Install Azure CLI:**
   - Follow the installation instructions specific to your operating system on the [Azure CLI installation guide](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).

2. **Verify Installation:**
   - Open your terminal or command prompt and run:
     ```bash
     az --version
     ```
   - You should see the installed version of Azure CLI.

## Getting Started with Terraform

### 1. Clone or Create Your Terraform File

You should have your Terraform configuration file (e.g., `main.tf`) ready. This file defines the Azure resources you want to create.

### 2. Configure Azure Authentication

1. **Log in to your Azure Account:**
   - Run the following command in your terminal:
     ```bash
     az login
     ```
   - Follow the prompts to authenticate.

2. **Set the Subscription (optional):**
   - If you have multiple subscriptions, set the desired subscription:
     ```bash
     az account set --subscription "Your Subscription Name or ID"
     ```

### 3. Initialize Terraform

Navigate to the directory containing your `main.tf` file, and run the following command to initialize Terraform:

```bash
terraform init
```

This command downloads the necessary provider plugins specified in your configuration.

### 4. Validate Your Configuration

You can validate your Terraform configuration file for syntax errors by running:

```bash
terraform validate
```

### 5. Plan Your Deployment

To see what actions Terraform will take to create the defined resources, run:

```bash
terraform plan -var="ssh_key=path_to_your_ssh_key" -var="subscription_id=your_subscription_id"
```

### 6. Apply Your Configuration

To create the resources defined in your Terraform file, run:

```bash
terraform apply -var="ssh_key=path_to_your_ssh_key" -var="subscription_id=your_subscription_id"
```

### 7. Get the Public IP Address

After a successful deployment, you can retrieve the public IP address of your virtual machine using the output defined in your Terraform file:

```bash
terraform output public_ip
```

## Obtaining the Public SSH Key

1. **Generate SSH Key Pair (if you don't have one):**
   - Open your terminal and run:
     ```bash
     ssh-keygen -t rsa -b 2048 -f ~/.ssh/my_ssh_key
     ```
   - This command will generate a private key (`my_ssh_key`) and a public key (`my_ssh_key.pub`) in the `~/.ssh` directory.

2. **Use the Public Key:**
   - Use the content of the public key (`my_ssh_key.pub`) in your Terraform command as the `ssh_key` variable.

To view the content of your public key, use:
```bash
cat ~/.ssh/my_ssh_key.pub
```

## Obtaining Your Azure Subscription ID

1. **List Subscriptions:**
   - Run the following command to list all your subscriptions:
     ```bash
     az account list --output table
     ```

2. **Find Your Subscription ID:**
   - Locate the `SubscriptionId` column for the subscription you want to use.

3. **Set the Subscription ID:**
   - You can use this ID as the `subscription_id` variable in your Terraform command.

## Conclusion

You are now ready to use Terraform with Azure! This guide covered the installation of Terraform and Azure CLI, as well as how to configure and deploy Azure resources using a Terraform configuration file. 

For more detailed information, refer to the [Terraform documentation](https://www.terraform.io/docs) and the [Azure Terraform Provider documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs).
