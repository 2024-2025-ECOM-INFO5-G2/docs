# Analyse de Qualité
Démarche qualité : qu’est-ce que vous mettez en place pour garantir la qualité ?

## Analyse du code
### Revue de code
Nous allons mettre en place une procédure de revue de code systématique. Avant chaque pull request, la 2ème personne du binome (CICD, BackEnd ou FrontEnd) fera une revue de code. Et régulièrement, la revue de code sera faite en présence d'un membre d'un autre binôme pour aider à la cohérence des 3 parties. En cas de désaccord ou de problème, une 3ème personne sera systématiquement consulté.

En plus de la revue de code humaine, nous utiliserons l'outil **Sonar** pour l'analyse continue de la qualité du code.

### Rapport de tests

Nous écrirons ou génèrerons des rapports de tests tout au long du projet pour pouvoir suivre en continue l'avancée des fonctionnalitées.

## CI/CD

Pour garantir une intégration continue (CI) et un déploiement continu (CD) de notre application, nous mettons en place un pipeline automatisé via GitHub Actions. Ce pipeline est déclenché automatiquement à chaque pull request dans le repository (ou commit si nécessaire), et assure les étapes suivantes :

- **Analyse statique du code** : Nous utilisons SonarQube pour effectuer une analyse continue de la qualité du code. Cette étape est cruciale pour détecter les éventuels problèmes ou améliorations possibles.
- **Exécution des tests unitaires et d’intégration** : Le pipeline exécutera les tests unitaires sur les services back-end et front-end. Si tous les tests passent avec succès, la build continuera, sinon la pipeline échouera pour signaler un problème.
- **Build de l’application** : Une fois les tests réussis, GitHub Actions effectuera le build de l’application, en utilisant Docker pour packager notre application dans des conteneurs, garantissant sa portabilité.
- **Déploiement automatique** : Si les tests et la build sont réussis, le pipeline déploiera l'application sur notre infrastructure Azure, en utilisant des outils comme Terraform pour gérer les ressources et le déploiement sur le cloud.

Ce processus garantit que chaque modification de code est vérifiée et testée avant d'être intégrée en production, minimisant ainsi les risques d’erreurs.

## BackEnd
Nous mettons en place une pipeline automatisée pour exécuter tous les tests backend dès que de nouvelles modifications sont apportées au code. La pipeline CI/CD pour le back-end inclut les étapes suivantes :

- **Tests unitaires** : À chaque push ou pull request, GitHub Actions exécutera automatiquement l’ensemble des tests unitaires pour valider les nouvelles fonctionnalités et assurer que les anciennes fonctionnalités ne sont pas impactées. Nous suivons une approche Test-Driven Development (TDD), ce qui signifie que la majorité des tests seront écrits avant la mise en place des fonctionnalités.
- **Tests de performance avec Gatling** : En complément des tests unitaires, nous exécuterons des tests de performance via Gatling pour simuler la charge utilisateur et vérifier que l'application backend peut supporter des volumes élevés de trafic.
- **Reporting des tests** : À la fin de chaque exécution de pipeline, un rapport de tests sera généré, détaillant les résultats des tests unitaires, d'intégration et de performance. Ces rapports seront disponibles pour tous les membres de l'équipe afin de suivre l'évolution de la qualité du code.

En résumé, la pipeline permet d'automatiser et d'accélérer les processus de test et de build, assurant que notre code est testé et prêt à être déployé en production.

## FrontEnd

Nous avons jugé que la méthode TDD était moins adapté pour le Front et ne sera donc pas utilisé ici. Nous allons utiliser des tests end-to-end au fur et à mesure.

Nous allons plutôt utiliser **Jest** comme framework de test pour plusieurs raisons :

- **Conçu pour React** : Jest est spécifiquement développé pour les applications React, ce qui en fait un choix idéal pour notre projet. Son intégration avec React permet de tester facilement les composants et d'assurer leur bon fonctionnement.

- **Facilité d'utilisation** : Jest est simple à configurer et à utiliser, ce qui permet une adoption rapide par l'équipe de développement.

- **Exécution rapide des tests** : Grâce à sa capacité à exécuter des tests en parallèle, Jest permet d'obtenir des résultats rapidement.

- **Fonctionnalités avancées** : Jest offre des fonctionnalités puissantes telles que le mocking, les snapshots, et des assertions intégrées, permettant de tester efficacement les composants et les fonctionnalités sans avoir à recourir à des bibliothèques tierces.

- **Communauté et support** : Étant un projet maintenu par Facebook et largement adopté dans la communauté React, Jest bénéficie d'une documentation riche et d'un large éventail de ressources en ligne, facilitant la résolution des problèmes et l'apprentissage.

- **Couverture de code intégrée** : Jest propose des rapports de couverture de code par défaut, permettant de s'assurer que nos tests couvrent efficacement les différentes parties de l'application.

En résumé, Jest se présente comme un choix judicieux pour notre projet en raison de sa conception spécifique pour React, de sa facilité d'utilisation, de ses performances, et de ses fonctionnalités avancées qui facilitent les tests unitaires et l'assurance qualité.



### Tests End-to-End avec Cypress

Pour garantir une qualité optimale de l'expérience utilisateur, nous allons intégrer **Cypress** comme outil principal pour réaliser des tests end-to-end. Cypress est un framework de test moderne qui offre plusieurs avantages pour notre projet :

- **Tests en temps réel** : Cypress permet d'exécuter des tests dans le navigateur en temps réel, offrant ainsi une vue d'ensemble immédiate des interactions utilisateur et de l'état de l'application à chaque étape du test.

- **Facilité de mise en place** : Avec une installation simple et une configuration intuitive, Cypress permet à notre équipe de démarrer rapidement sans complexité excessive. La syntaxe claire et lisible facilite également l'écriture et la maintenance des tests.

- **Débogage simplifié** : Grâce à son interface utilisateur interactive, Cypress fournit des outils de débogage puissants, comme la possibilité de prendre des captures d'écran et d'enregistrer des vidéos des tests échoués, ce qui simplifie l'identification et la résolution des problèmes.

- **Tests asynchrones** : Cypress gère automatiquement les promesses et les appels asynchrones, permettant d'écrire des tests qui se synchronisent facilement avec le comportement de l'application, sans nécessiter de logique de synchronisation complexe.

- **Intégration avec CI/CD** : Nous allons configurer Cypress pour s'intégrer dans notre pipeline CI/CD avec GitHub Actions, permettant ainsi d'exécuter les tests end-to-end à chaque pull request et de s'assurer que chaque déploiement maintient la fonctionnalité et la performance de l'application.

- **Communauté active et ressources** : Cypress bénéficie d'une communauté dynamique qui propose de nombreuses ressources, plugins et documentation, facilitant ainsi l'adoption et l'enrichissement de notre suite de tests.

En résumé, Cypress se révèle être un choix idéal pour tester nos fonctionnalités end-to-end. En intégrant cet outil dans notre démarche qualité, nous nous assurons que l'application répond aux attentes des utilisateurs finaux et que les régressions sont rapidement identifiées et corrigées.
