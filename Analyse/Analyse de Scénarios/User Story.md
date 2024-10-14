# User stories Scénario 1:

## User Story 1:
### En tant qu’utilisateur:

Je veux m'inscrire sur le site en fournissant mes informations personnelles, mes préférences alimentaires et mes allergies connues, afin de bénéficier (plus tard) de menus adaptés à mon mode de vie et à mes besoins spécifiques.

### Critères d'acceptation :

    - Inscription : Lors de mon inscription, je peux renseigner :
        Mes informations personnelles (nom, email, etc.).
        Mon mode de vie, mes préférences alimentaires et mes allergies connues.

    - Validation de compte : Après avoir rempli le formulaire d’inscription, je reçois un email pour valider mon compte.

    - Récupération de mot de passe : Si j'oublie mon mot de passe, je peux demander à recevoir un lien de réinitialisation par email.

    - Identification sécurisée : Une fois inscrit, je m'identifie via un jeton JWT (JSON Web Token) pour accéder à mon compte de manière sécurisée.

    - Gestion des droits : Avoir une visualisation d'utilisateur

    - Modification du profil : Je peux visualiser et modifier mes informations personnelles, mes préférences alimentaires ou mes allergies depuis mon espace utilisateur.

## User Story 2:
### En tant qu’utilisateur

Une fois inscrit, Je veux ajouter des membres de mon foyer pour gérer leurs préférences alimentaires et leurs besoins individuels, afin de personnaliser les menus pour tout le foyer.

### Critères d'acceptation :

    - Ajouter des membres : Je peux ajouter les membres de mon foyer en renseignant leurs informations personnelles (mode de vie, préférences alimentaires et mes allergies connues).

    - Supprimer des membres : Je peux retirer des membres du foyer si nécessaire.

## User Story 3:
### En tant qu’utilisateur

Une fois inscrit et connecter, je peux modifier mes préférences alimentaires.

### Critères d'acceptation :

    Je peux accéder à mes préfèrences et modifier les champs pour mettre à jour celle-ci. Mes futures menus prendrons ces nouvelles préfèrences

## User Story 4:
### En tant qu’utilisateur

Une fois inscrit, je veux accéder au site et aux formulaires en ligne pour consulter et modifier les informations relatives à mon compte ou à mon foyer.

### Critères d'acceptation :

    Je peux me connecter et accéder au formulaire d'inscription du compte en ligne et le modifier. Le système doit mettre à jour les modifications.

## User Story 5:
### En tant qu’utilisateur

Une fois inscrit, je veux consulter tous les menus existants sur la plateforme, afin de choisir les plus adaptés à mes besoins et à ceux de ma famille.

### Critères d'acceptation :

    Je peux accéder à la liste complète des menus disponibles sur le site après identification. Le système renvois la liste des menus.

## User Story 6 (admin): 

### En tant que administrateur,
je veux pouvoir créer, éditer et supprimer des comptes utilisateurs, nutritionnistes ou administrateurs, afin de gérer efficacement les accès et l'administration des comptes sur le site.

### Critères d'acceptation :

    -L'administrateur peut créer un nouveau compte en remplissant les informations nécessaires (nom, email, mot de passe, rôle initial).
    -Lors de la création du compte par l'administrateur, une notification est envoyée par mail. 
    -L'administrateur peut modifier les informations d'un compte existant (nom, email, rôle).
    -L'administrateur peut désactiver ou supprimer définitivement un compte.
    -Un message de confirmation s'affiche après la création, la modification ou la suppression d'un compte.
    -Les utilisateurs concernés reçoivent une notification en cas de modification ou suppression de leur compte.

## User Story 7(admin): 

### En tant que administrateur,
je veux pouvoir gérer les rôles et les droits associés aux comptes, afin de contrôler l'accès aux différentes fonctionnalités du site.

### Critères d'acceptation :

    -L'administrateur peut attribuer ou modifier les rôles d'un utilisateur (utilisateur, administrateur, nutritionniste).
    -L'administrateur peut configurer les droits associés à chaque rôle (accès en lecture, écriture, gestion, etc.).
    -Les modifications de rôles ou de droits prennent effet immédiatement.
    -Les utilisateurs concernés reçoivent une notification les informant des changements de leurs droits d'accès.
    -Une interface permet de visualiser facilement les rôles et droits de chaque utilisateur.

## User Story 8(admin): 

### En tant que administrateur,
je veux pouvoir visualiser les statistiques du site, afin de suivre les performances, l'utilisation et identifier les éventuelles améliorations à apporter.

### Critères d'acceptation :

    -L'administrateur peut visualiser des graphiques pour des données spécifiques (croissance du nombre d'utilisateurs, activité par rôle, mail de menus envoyés dans la semaines, etc.).
