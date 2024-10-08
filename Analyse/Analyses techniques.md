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
- 
### 5. Gradle pour l'automatisation de build5.

L'utilisation de Gradle comme moteur de production se justifie par :

- **Performance**: Plus rapide que Maven grâce à la mise en cache et à l'exécution incrémentale.
- **Flexibilité**: Utilise un DSL (Domain-Specific Language) basé sur Groovy ou Kotlin, permettant une personnalisation des scripts de build plus facile.
- **Intégration**: Meilleure prise en charge des builds multi-langages (Java et JavaScript).
- **Accessibilité** : Moins verbeux avec un langage non balisé proche du JSON.
    
### 6. **JWT pour l'authentification**
**JWT (JSON Web Token)** est un standard ouvert pour la transmission sécurisée d'informations entre les parties sous forme d'objet JSON.
- **Sans état** : Pas besoin de stocker les sessions côté serveur, ce qui facilite la scalabilité.
- **Performance** : Authentification rapide sans requêtes supplémentaires au serveur.
- **Sécurité** : Tokens signés et chiffrés pour garantir l’intégrité et la confidentialité.
- **Interopérabilité** : Large support par de nombreuses bibliothèques et frameworks.
### 7. **PostgreSQL pour la base de données de production**
**PostgreSQL** est un système de gestion de base de données relationnelle, connu pour sa robustesse et sa fiabilité.
- **Fiabilité** : Base de données relationnelle éprouvée, stable, robuste et adaptée aux environnements de production, que nous avons déjà utilisée.
- **Fonctionnalités avancées** : Support des transactions ACID, types de données complexes (JSON, XML), transactions multiversion.
- **Scalabilité** : Peut évoluer facilement en fonction des besoins de l'application.
- **Open source** : Large communauté active, documentation complète et de nombreux plugins.

### 8. **H2 pour la persistance en développement**
**H2** est une base de données relationnelle légère, souvent utilisée pour les environnements de développement.
- **Simplicité** : H2 est facile à configurer et à utiliser, ce qui accélère le démarrage du développement.
- **Persistance** : La persistance sur disque permet de conserver les données entre les redémarrages de l’application, utile pour les tests et le développement continu.
- **Léger** : H2 est une base de données légère, idéale pour les environnements de développement où la performance n’est pas critique.

### 9. **Ehcache pour la mise en cache**
**Ehcache** est une solution de mise en cache open source pour Java, intégrée à Spring.
- **Simplicité** : Facile à configurer et à intégrer avec Spring.
- **Performance** : Améliore les performances en réduisant les temps d’accès aux données fréquemment utilisées.
- **Adapté aux monolithes** : Idéal pour les applications monolithiques qui ne nécessitent pas de mise à l’échelle horizontale immédiate.
- **Fiabilité** : Solution éprouvée et largement utilisée dans l’industrie.

### 10. **Cucumber pour les tests**
**Cucumber** est un outil de test qui prend en charge le Behavior-Driven Development (BDD).
- **Lisibilité** : Tests en langage naturel, facilitant la compréhension.
- **Collaboration** : Facilite la communication entre les équipes.
- **Automatisation** : Tests fonctionnels automatisés.
- **Intégration** : Compatible avec divers outils.
- **Documentation vivante** : Scénarios de test comme documentation.
