# Analyses du besoin 

## Fonctionnalités 

### Scénario 1
- S'inscrire sur le site
    - mode de vie, préférences alimentaires, allergies connues.
    - validation d’un compte via l’envoi de mail
    - récupération des mots de passe perdu
    - identification via JWT
    - gestion des droits
    - modification par l’utilisateur ?
- Ajouter des membres de son foyer
    - supprimer
- Accéder au site / formulaire en ligne
- Accéder à tous les menus existant


### Scénario 2
- Recevoir par mail une proposition de menus hebdomadaire
    - respect des préférences
    - différent chaque semaine
- Recevoir la liste de course correspondant aux menus
    - estimation du coût (différent selon région)
- Noter les menus
    - plusieurs critères (goût, difficulté, coût, temps)
    - laisser des commentaires
- Définir des favoris

### Scénario 3a
- Modifier les menus
    - déplacer dans la semaine
    - remplacer par d'autres
- Indiquer les repas externes
    - estimations apport caloriques
- Ajouter séances de sport effectuées
    - réalisées ou prévues
- Gérer un calendrier personnel
- Renseigner régulièrement son poids (courbe suivi)



### Scénario 3b
- Ajouter  et modifier les menus (nutritionnistes)
    - en copiant un menu existant
    - respecter la nomenclature CIQUAL
    - décrire la recette avec du texte, des images et des vidéos
- Elaborer une traduction (nutritionniste)
    - Traducteur automatique
    - possibilité de corriger


## Contraites 

- Création d'une interface REST en open API avec description
- Déploiement en SSL (nom de domaine public) let’s enscript
- Solution déployée sur une infrastructure cloud sécurisée (https avec certificat valide)
- Techniques et technologiques : architecture SPA, JHipster, mobile first, web responsive
- gestion de projet : versioning github, utilisation des issues, agile, livrables (avec dates)
- Architecture Monolithique