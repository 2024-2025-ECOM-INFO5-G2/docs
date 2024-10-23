# Local Application Launch Guide

This guide provides instructions to launch a JHipster application using Gradle.

## Global Prerequisites

Ensure you have the following installed:
- Java Development Kit (JDK) 8 or higher
- npm
- Gradle
- Docker Engine

## Initial Step

```sh
mkdir ~/jhipster
git clone https://github.com/2024-2025-ECOM-INFO5-G2/app.git ~/jhipster
cd ~/jhipster
```

*NB - You can change the destination folder, but you have to adapt the next instruction*

## Launch the Application (Dev profile)

### Prerequisites for Dev 

- Docker Engine

### Step to Launch

1. **Install docker image**
    ```sh
    docker pull jhipster/jhipster:v8.6.0
    ```

2. **Create Network**
    ```sh
    docker network create jhipster-maildev-network
    ```

3. **Run local mail server containers**
    ```sh
    docker container run --network jhipster-maildev-network --name maildev -d -p 1080:80 -p 25:25 djfarrelly/maildev
    ```

4. **Run jhipster container**
    ```sh
    docker container run --network jhipster-maildev-network --name jhipster -v ~/jhipster:/home/jhipster/app -v ~/.m2:/home/jhipster/.m2 -p 8080:8080 -p 9000:9000 -p 3001:3001 -d -t jhipster/jhipster:v8.6.0
    ```

5. **Run the application jhipster container and launch backend**
    ```sh
    docker container exec -it jhipster bash
    ./gradlew
    ```

6. **Launch app**
    ```sh
    docker container exec -it jhipster bash
    ./npm start
    ```

7. **Access the Application**
    Open your browser and navigate to `http://localhost:8080`.

## Launch the Application (Prod profile)

### Prerequisites for Prod

- Java Development Kit (JDK) 8 or higher
- npm
- Gradle
- Docker engine

### Step to Launch

1. ** Compose postgre**

1. **Compose PostgreSQL**
    ```sh
    docker-compose -f src/main/docker/postgresql.yml up -d
    ```

2. **Build the application**
    ```sh
    ./gradlew -Pprod clean bootJar
    ```

1. **Run the application**
    ```sh
    java -jar build/libs/*.jar
    ```

3. **Access the Application**
    Open your browser and navigate to `http://localhost:8080`.

## Additional Commands

- **Run Tests**
  ```sh
  ./gradlew test
  ```

- **Build the Application**
  ```sh
  ./gradlew build
  ```

- **Clean the Project**
  ```sh
  ./gradlew clean
  ```

## Troubleshooting

- Ensure all prerequisites are installed and properly configured.
- Check the application logs for any errors.

For more detailed information, refer to the [JHipster documentation](https://www.jhipster.tech/documentation-archive/).
