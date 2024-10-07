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

Une fois inscrit, je veux accéder au site et aux formulaires en ligne pour consulter et modifier les informations relatives à mon compte ou à mon foyer.

### Critères d'acceptation :

    Je peux me connecter et accéder au formulaire d'inscription du compte en ligne et le modifier. Le système doit mettre à jour les modifications.

## User Story 4:
### En tant qu’utilisateur

Une fois inscrit, je veux consulter tous les menus existants sur la plateforme, afin de choisir les plus adaptés à mes besoins et à ceux de ma famille.

### Critères d'acceptation :

    Je peux accéder à la liste complète des menus disponibles sur le site après identification. Le système renvois la liste des menus.
