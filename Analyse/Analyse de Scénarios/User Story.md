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


# User stories Scénario 2:

## User Story 1:
### En tant qu’utilisateur :
Je veux recevoir chaque semaine une proposition de menus respectant mes préférences alimentaires, sans que les plats ne se répètent trop souvent, afin d’avoir une variété de repas adaptés à mes besoins.

### Critères d'acceptation :
- **Proposition hebdomadaire** : Je reçois chaque semaine une proposition de menus via email ou notification, prenant en compte mes préférences alimentaires et celles de mon foyer.
- **Diversité des menus** : Les plats proposés doivent changer chaque semaine et ne pas se répéter 2 semaine a suivre.
- **Gestion des préférences** : Les modifications de mes préférences ou allergies dans mon profil doivent être prises en compte dans les propositions futures.

## User Story 2:
### En tant qu’utilisateur :
Je veux pouvoir demander une liste de courses associée aux menus proposés afin de faciliter la préparation des repas.

### Critères d'acceptation :
- **Génération de la liste de courses** : Je peux générer une liste de courses correspondant aux menus proposés, incluant tous les ingrédients nécessaires pour la semaine.
- **Téléchargement** : Je peux télécharger la liste de courses 


## User Story 3:
### En tant qu’utilisateur :
Je veux que la liste de courses inclue une estimation du coût des ingrédients, fournie par le site, afin de pouvoir planifier mon budget.

### Critères d'acceptation :
- **Estimation du coût** : La liste de courses inclut une estimation du coût total des ingrédients.
 
## User Story 4:
### En tant qu’administrateur :
Je veux pouvoir mettre à jour les prix des ingrédients afin que les utilisateurs aient des estimations de coûts réalistes et à jour.

### Critères d'acceptation :
- **Gestion des prix par région** : Je peux définir et mettre à jour les prix des ingrédients.
- **Mise à jour visible pour les utilisateurs** : Les utilisateurs doivent voir l’estimation mise à jour lors de la prochaine génération de leur liste de courses après la mise à jour des prix.


## User Story 5:
### En tant qu’utilisateur :
Je veux pouvoir attribuer des notes aux menus en fonction de différents critères (goût, difficulté de réalisation, coût, temps de préparation) et consulter la moyenne des notes pour chaque critère afin d’avoir un aperçu global de la qualité du menu.

### Critères d'acceptation :
- **Notation des menus** : Je peux attribuer une note globale aux menus ou évaluer chaque critère individuellement (goût, difficulté, coût, temps).
- **Consultation des moyennes** : Je peux consulter la moyenne des notes attribuées par tous les utilisateurs pour chaque critère (goût, difficulté, coût, temps).
- **Historique des notes** : Je peux consulter les notes que j'ai attribuées aux menus dans l'historique de mon compte.


## User Story 6:
### En tant qu’utilisateur :
Je veux pouvoir laisser des commentaires détaillés sur les menus proposés afin de partager des suggestions d'amélioration, des variantes ou des retours spécifiques sur mon expérience.

### Critères d'acceptation :
- **Commentaires sur les menus** : Je peux ajouter des commentaires pour chaque menu afin de partager des détails supplémentaires (suggestions, variantes, avis personnel).
- **Affichage des commentaires** : Les autres utilisateurs ou moi-même peuvent voir les commentaires que j'ai laissés sous les menus notés.


## User Story 7:
### En tant qu’utilisateur :
Je veux pouvoir marquer certains menus ou plats comme favoris afin de les retrouver facilement pour les refaire dans le futur.

### Critères d'acceptation :
- **Ajout aux favoris** : Je peux ajouter n'importe quel menu ou plat en favoris depuis l'interface utilisateur.
- **Accès aux favoris** : Je peux accéder à la liste de mes menus favoris à tout moment, et ils doivent être facilement retrouvables depuis mon profil.
- **Suppression des favoris** : Je peux retirer un menu ou plat de mes favoris si je ne souhaite plus le conserver.
