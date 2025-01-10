# Analyse des Failles de Sécurité - Groupe 2

## 1. Points de Vulnérabilité Identifiés

### Authentification et Gestion des Sessions
- Risque de vol de tokens JWT si non correctement sécurisés
- Nécessité de mettre en place une expiration appropriée des tokens
- Vulnérabilité potentielle dans le processus de récupération de mot de passe par email

### Contrôle d'Accès
- Risque d'escalade de privilèges si les contrôles d'accès ne sont pas strictement appliqués
- Vulnérabilité potentielle dans la gestion des rôles (ADMIN vs Utilisateur standard)
- Nécessité de vérifier l'accès aux ressources sensibles
- Route d'entités générées automatiquement par JHipster non sécurisées (accessibles à tous)

### Sécurité des Données
- Protection des données personnelles des utilisateurs (RGPD)
- Sécurisation des informations du profil et des préférences alimentaires
- Risques liés au stockage des mots de passe

## 2. Mesures de Sécurité Mises en Place

### Infrastructure
- Déploiement sur Azure avec certificat SSL valide
- Communications chiffrées via HTTPS

### Application
- Utilisation de Spring Security pour la sécurisation des endpoints
- Authentification via JWT
- Validation des comptes par email
- Système de récupération de mot de passe sécurisé
- Ajout de règles de sécurité dans le SecurityConfiguration pour restreindre l'accès aux routes d'entités générées par JHipster
- Création de routes personnalisées pour les fonctionnalités spécifiques aux utilisateurs

### Qualité du Code
- Analyse continue avec SonarQube
- Revues de code

## 3. Améliorations Possibles

### Renforcement de l'Authentification
- Implémenter une authentification à deux facteurs
- Renforcer la politique de mots de passe
- Ajouter des limites de tentatives de connexion

### Sécurisation des Données
- Chiffrement des données sensibles en base
- Mise en place de logs de sécurité

### Contrôles d'Accès
- Principe du moindre privilège
- Vérification systématique des autorisations

### Maintenance
- Mises à jour régulières des dépendances
- Tests de pénétration périodiques