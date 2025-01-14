# Groupe 2 - Contrôles d'accès de l'application

## Architecture de sécurité

### Authentification

- Sécurisation des endpoints API REST avec Spring Security
- Utilisation de JWT (JSON Web Token) pour l'authentification des utilisateurs
- Processus de validation de compte via email lors de l'inscription
- Système de récupération de mot de passe par email

### Sécurisation des routes d'entités générées

- Restriction d'accès sur toutes les routes CRUD générées automatiquement par JHipster
- Ajouter des règles de sécurité dans le SecurityConfiguration `hasAuthority(AuthoritiesConstants.ADMIN)` sur les routes liées aux entités
- Seuls les utilisateurs avec le rôle ADMIN peuvent accéder aux opérations de gestion des entités
- Protection contre les attaques potentielles de type CSRF
- Ajout de routes personnalisées pour les fonctionnalités spécifiques aux utilisateurs assurant le bon fonctionnement de l'application

### Gestion des rôles

L'application définit 2 rôles principaux :

1. **Utilisateur standard**
    - Accès aux menus et fonctionnalités de base
    - Gestion de son profil et des membres de son foyer
    - Modification de ses préférences alimentaires

2. **Administrateur**
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