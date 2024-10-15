## Certificat SSL

**Issue** : Intégration d’un certificat SSL pour sécuriser les communications

**Description** : Nous devons installer un certificat SSL pour chiffrer les communications entre le serveur et les utilisateurs, garantissant ainsi la sécurité des échanges de données. Ce certificat sera utilisé pour activer le protocole HTTPS lors du déploiement sur Azure.

**Tâches** :

- Obtenir un certificat SSL.
- Configurer le serveur web pour utiliser le certificat SSL.
- Tester et valider que le site est bien accessible en HTTPS.

*Critère d'acceptation* : Le site est accessible via HTTPS et les communications sont chiffrées avec un certificat SSL valide.

## Création de la pipeline CI/CD
**Issue** : Mise en place d'une pipeline CI/CD avec GitHub Actions.

**Description** : Mettre en place un pipeline CI/CD qui s'exécute
automatiquement à chaque commit ou pull request (à nous de choisir) sur la branche principale.

**Tâches** :
- Configurer un fichier .yml (dans .github/workflows) pour GitHub Actions.
- Inclure les étapes de build, test, et déploiement.

*Critère d'acceptation* : Le pipeline doit s'exécuter automatiquement et inclure des tests et un build Docker.

## Configuration de l'analyse statique de code

**Issue** : Intégrer SonarQube pour l'analyse statique du code

**Description** : Ajouter SonarQube dans la pipeline CI pour effectuer une analyse continue de la qualité du code.

**Tâches** :
- Ajouter une étape dans GitHub Actions pour l'analyse statique.

*Critère d'acceptation* : Le pipeline échoue si des problèmes critiques sont détectés.

## Surveillance et alertes

**Issue** : Mise en place d'une solution de monitoring pour l'application.

**Description** : Installer une solution de monitoring (comme Prometheus, Grafana, ou Azure Monitor) pour surveiller l'état de l'application et de l'infrastructure.

**Tâches** :
- Configurer le monitoring de l'application sur Azure.
- Définir des alertes pour les erreurs critiques ou les performances.

*Critère d'acceptation* : Les métriques de performance sont collectées et les alertes sont configurées.

## Documentation des processus DevOps

**Issue** : Rédiger la documentation DevOps.

**Description** : Rédiger la documentation pour décrire la configuration du pipeline CI/CD, l'utilisation de Docker et Terraform, et les processus de déploiement.

**Tâches** :
- Documenter les étapes du pipeline CI/CD.
- Décrire comment utiliser et gérer les images Docker et Terraform.

*Critère d'acceptation* : La documentation est complète et compréhensible par les autres membres de l'équipe.