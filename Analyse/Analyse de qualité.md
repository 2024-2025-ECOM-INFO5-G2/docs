# Analyse de Qualité
Démarche qualité : qu’est-ce que vous mettez en place pour garantir la qualité ?

## Analyse du code
### Revue de code
Nous allons mettre en place une procédure de revue de code systématique. Avant chaque pull request, la 2ème personne du binome (CICD, BackEnd ou FrontEnd) fera une revue de code. Et régulièrement, la revue de code sera faite en présence d'un membre d'un autre binôme pour aider à la cohérence des 3 parties. En cas de désaccord ou de problème, une 3ème personne sera systématiquement consulté.

En plus de la revue de code humaine, nous utiliserons l'outil **Sonar** pour l'analyse continue de la qualité du code.

### Rapport de tests

Nous écrirons ou génèrerons des rapports de tests tout au long du projet pour pouvoir suivre en continue l'avancée des fonctionnalitées.

## CI/CD

Pour garantir une intégration continue (CI) et un déploiement continu (CD) de notre application, nous mettons en place un pipeline automatisé via GitHub Actions. Ce pipeline est déclenché automatiquement à chaque commit ou pull request dans le repository, et assure les étapes suivantes :

- **Analyse statique du code** : Nous utilisons SonarQube pour effectuer une analyse continue de la qualité du code. Cette étape est cruciale pour détecter les éventuels problèmes ou améliorations possibles.
- **Exécution des tests unitaires et d’intégration** : Le pipeline exécutera les tests unitaires sur les services back-end et front-end. Si tous les tests passent avec succès, la build continuera, sinon la pipeline échouera pour signaler un problème.
- **Build de l’application** : Une fois les tests réussis, GitHub Actions effectuera le build de l’application, en utilisant Docker pour packager notre application dans des conteneurs, garantissant sa portabilité.
- **Déploiement automatique** : Si les tests et la build sont réussis, le pipeline déploiera l'application sur notre infrastructure Azure, en utilisant des outils comme Terraform pour gérer les ressources et le déploiement sur le cloud.

Ce processus garantit que chaque modification de code est vérifiée et testée avant d'être intégrée en production, minimisant ainsi les risques d’erreurs.

## BackEnd
Nous allons mettre en place une batterie de tests unitaires mais aussi des tests de performances. Nous suivrons une méthode **TDD**, ie: nous allons écrire la plupart des tests avant de commencer à écrire le code. Cela renforce l'importance et l'utilité des tests.

Pour les tests de performance nous utiliserons l'outil de test **Gatling**. Celui-ci permet de simuler des centaines ou des milliers d'utilisateurs virtuels pour évaluer la performance et la capacité de charge de notre infrastructure.

Le lancement de l'ensemble de ces tests sera simplifié par la **pipeline ...[TO DO]**.

## FrontEnd

Nous avons jugé que la méthode TDD était moins adapté pour le Front et ne sera donc pas utilisé ici. Nous allons utiliser des tests end-to-end au fur et à mesure.
