# Groupe 2 - Contrôles d'accès de l'application
## Architecture de sécurité
### Authentification
- Utilisation de JWT (JSON Web Token) pour l'authentification des utilisateurs
- Processus de validation de compte via email lors de l'inscription
- Système de récupération de mot de passe par email
### Gestion des rôles
L'application définit 3 rôles principaux :

1. Utilisateur standard.

- Accès aux menus et fonctionnalités de base
- Gestion de son profil et des membres de son foyer
- Modification de ses préférences alimentaires
2. Administrateur

- Gestion complète des comptes utilisateurs (création, modification, suppression)
- Attribution et modification des rôles
- Accès aux statistiques du site

## Implémentation technique
- Sécurisation des endpoints API REST avec Spring Security
- Stockage sécurisé des données utilisateurs dans PostgreSQL en production
- Utilisation d'une base H2 en développement
- Pipeline CI/CD avec GitHub Actions intégrant des tests de sécurité
## Bonnes pratiques appliquées
- Revue de code systématique avec une attention particulière sur la sécurité
- Utilisation de SonarQube pour l'analyse continue de la qualité et de la sécurité du code
- Certificat SSL pour le chiffrement des communications (HTTPS)