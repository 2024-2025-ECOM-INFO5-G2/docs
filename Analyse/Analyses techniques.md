# Analyses Techniques

**TODO** : choisir une technologie et/ou un outil (si ce
n’est pas imposé), il est nécessaire de faire une analyse pour définir
l’adéquation avec les besoins du projet. Ces analyses doivent être
suffisamment détaillées pour ne pas avoir à les remettre en cause en cours
du projet. 

### 1. Cloud Azure
Le choix d'**Azure** comme fournisseur de cloud pour notre projet repose sur plusieurs facteurs clés :
- **Évolutivité** : Azure offre une infrastructure hautement évolutive qui nous permet d'ajuster facilement les ressources en fonction des besoins de l'application.
- **Services managés** : Azure propose une large gamme de services managés qui réduisent la complexité de la gestion de l'infrastructure.
- **Sécurité** : Avec ses certifications de conformité et ses outils de sécurité intégrés, Azure permet de répondre aux exigences de sécurité de notre application.
- **Intégration avec les outils DevOps** : Azure s'intègre facilement avec nos outils d'automatisation et de CI/CD, facilitant ainsi la gestion du cycle de vie des applications.

### 2. Docker pour la Conteneurisation
Nous avons choisi **Docker** pour la conteneurisation des services applicatifs, car il présente plusieurs avantages :
- **Portabilité** : Docker nous permet d'encapsuler notre application dans des conteneurs, garantissant ainsi que l'application fonctionne de manière cohérente, quel que soit l'environnement (local, test, production).
- **Isolation des environnements** : Chaque conteneur fonctionne indépendamment, ce qui améliore la gestion des dépendances et réduit les conflits entre services.
- **Facilité de déploiement** : Docker simplifie et accélère le déploiement des services applicatifs.

### 3. Terraform pour la Gestion des Ressources Cloud
**Terraform** a été sélectionné pour la gestion de l'infrastructure cloud grâce à ses caractéristiques suivantes :
- **Infrastructure as Code (IaC)** : Terraform permet de définir notre infrastructure sous forme de code, facilitant ainsi le contrôle de version, la collaboration et la reproductibilité des environnements.
- **Multi-cloud** : Bien que nous ayons choisi Azure, Terraform offre la flexibilité de déployer notre infrastructure sur plusieurs fournisseurs cloud si nécessaire, garantissant ainsi l'évolutivité future.
- **Automatisation et Cohérence** : Grâce à son modèle déclaratif, Terraform assure la création et la gestion cohérente des ressources cloud, tout en minimisant les erreurs humaines liées aux configurations manuelles.

### 4. React pour le Développement Frontend
Le choix de **React** comme framework frontend pour notre projet repose sur plusieurs facteurs déterminants :
- **Compatibilité avec JavaScript** : React utilise exclusivement JavaScript, ce qui facilite l'apprentissage et l'intégration pour des équipes déjà familières avec ce langage. Contrairement à Angular, qui impose TypeScript, React permet une adoption rapide et plus simple pour les développeurs.
- **Performance** : React propose un excellent compromis en termes de performance, avec un poids de **98 KB**, positionné entre Vue (**60 KB**) et Angular (**143 KB**). Dans le cadre de tâches lourdes, comme le tri de caractères, React s'avère performant avec un temps d'exécution de **88 433 ms**, surpassant Angular (**237 868 ms**). Bien que Vue soit plus rapide pour le chargement d'images, React reste compétitif tout en offrant une flexibilité accrue.
- **DOM Virtuel** : Le **DOM virtuel** de React permet un rendu rapide et dynamique, ce qui améliore les performances des applications complexes. Cela le distingue d'Angular, qui utilise un **DOM réel**, souvent plus coûteux en ressources.
- **Écosystème et Migration** : React bénéficie d'un écosystème mature et d'une large communauté, facilitant la migration et l'évolution des projets. À l'inverse, Angular peut s'avérer plus rigide et difficile à migrer entre versions, tandis que Vue souffre parfois d'un manque de ressources communautaires.

