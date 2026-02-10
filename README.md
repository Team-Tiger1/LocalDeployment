# The Last Fork Local Deployment And Tests
Repository configured To Pull from all Relevant repos for local deployment of entire architecture for easy local deployment and testing.

---
# Contributions

### DevOps
- Author: Jed Leas
- My focus has been setting up the instances of the achirtecture designed by Daniel Jackson which included setting up the:
  1. Nginx (Reverse proxy)
  2. K3s
  3. Postgres
  4. RabbitMQ
  5. Nginx (Website hosting)
- As well as setting up all CI/CD workflows to handle 
    1. Automatic testing on push of main branch on each microservices repo
  2. Automatic Deployment onto k3s with zero downtime on compleation of automatic testing so broken code wont make it to deployment
- And Sorting out bug fixes and connections between each microservices to eachother and the databases for both deployment and testings

### MicroServices

---
#### API Gateway (Daniel Jackson)
- Author: Daniel Jackson
- Co Author: Robert Rainer
- {Description here}

#### User Service (Daniel Jackson)
- Author: Daniel Jackson
- Co Author: Robert Rainer
- {Description here}

#### Product Service 
- Author: Robert Rainer
- Co Author: Daniel Jackson
- {Description here}

#### Forcast Service
- Author: Alex Greasly
- Co Author: Jed Leas
- {Description here}

--- 
## Website 
- Author: Toby Becket
- Co Authour: William Foulger
- {Description here}

## Testing
- Author: Ivy Figari
- {Description here}

## Documentation

---
### Ethical and Legal considerations (Maybe have other headings / change this)
- Author: Oscar De Lemos
- {Description here}
### other heading etc

---
# Requirements For Testing
- **Git**
- **Java 17 jdk** 
- **Python 3.12+** 
- Poetry
### If on linux
- pipx (Install Poetry through pipx if using linux)

---
# Run Tests 

## Run Tests (Windows)

1. Open Terminal, Clone and open this repository
```Bash
  git clone https://github.com/Team-Tiger1/LocalDeployment

  cd LocalDeployment
```
2. (If not done already) Run the setup script to clone/update microservice repositories for TheLastFork:
```Bash
   .\setup.bat
```

3. Run The following command to run the tests
```Bash
    .\test-all.bat
```
4. It should take a few minutes to run but if successful you should see 
```Bash
  All tests finished successfully!
```

##  Run Tests (Linux)
1. Clone this repository
``` Bash
    git clone https://github.com/Team-Tiger1/LocalDeployment

    cd LocalDeployment
```

2. Install Pipx if not installed already 
>Only use the below installation method on Ubuntu/Debain Based Linux Distrubutions, if you are on another Linux Distribution
go to https://pipx.pypa.io/stable/installation/
```Bash
  sudo apt update
  sudo apt install -y pipx
  pipx ensurepath
```
3. install poetry using pipx
```Bash
  pipx install poetry
  source ~/.bashrc
```

4. (If not done already) Run the setup script to clone/update microservice repositories for TheLastFork:
```Bash
   ./setup.sh
```

5. Make the setup script executable and Run the tests:
```Bash
   chmod +x test-all.sh
   ./test-all.sh
```

6. It should take a few minutes to run but if successful you should see
```Bash
  All tests finished successfully!
```

## Run Tests (MacOs)

1. Open Terminal, Clone this repositiory (If Not done so already)
``` Bash
    git clone https://github.com/Team-Tiger1/LocalDeployment

    cd LocalDeployment
```

3. Run the setup script to clone/update microservice repositories for TheLastFork:
```Bash
  chmod +x setup.sh
   ./setup.sh
```
4. Turn off AirPlay Receiver
> Airplay Reciever uses port 5000 which our Forecast service uses
- Go to System Prefrences
- General -> AirDrop & Handoff
- Turn off __AirPlay Reciever__

5. Make the setup script executable and Run the tests:
```Bash
   chmod +x test-all.sh
   ./test-all.sh
```

6. It should take a few minutes to run but if successful you should see
```Bash
  All tests finished successfully!
```
---

---

---

---

# ***!WARNING! Not Currently working as this is a CW2 deliverable and is not important to get working currently !WARNING!***
# Requirements for Local Deployment
-  **Docker Desktop**
- - **Git**
# Docker Installation

### windows
- Download and install [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/).
- Ensure WSL 2 is enabled during installation

### MacOs
- Download and install [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/).

### Linux
- Install based on your distribution: [Docker Desktop for Linux](https://docs.docker.com/desktop/setup/install/linux).
- Ensure you install `docker-compose` if it is not included.
---
# Run Local Deployment

This will clone all microservices (`UserService`, `ProductService`, `APIGateway`, `ForecastService`, `WebsiteFrontend`) and start them in Docker containers.

## Run Local Deployment (Windows)
1. Open Docker Desktop

2. Open Terminal, Clone this repo, and open the Project
```Bash
  git clone https://github.com/Team-Tiger1/LocalDeployment

  cd LocalDeployment
```
3. Verify Docker is running:
```Bash
  docker ps
```
You should see
```
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
4. Run the setup script to clone/update microservice repositories for TheLastFork:
```Bash
   .\setup.bat
```
5. Start the application using Docker Compose:
```Bash
   docker-compose up --build
```
6. Access the application:
- At: http://localhost
7. To stop deployment in the same terminal press, Or stop it in the Docker app
> Control+c

## Run Local Deployment (Linux)
1. Clone this repository
```Bash
  git clone https://github.com/Team-Tiger1/LocalDeployment

  cd LocalDeployment
```
2. Run the setup script to clone/update microservice repositories for TheLastFork:
```Bash
  chmod +x setup.sh
   ./setup.sh
```

3. Start the Application using Docker Compose:
```Bash
   docker-compose up --build
```
4. Access the application:
- At: http://localhost

5. To stop deployment in the same terminal press, Or stop it in the Docker app
> Control+c



## Run Local Deployment (MacOS)
1. Open Terminal, Clone this repositiory
``` Bash
    git clone https://github.com/Team-Tiger1/LocalDeployment

    cd LocalDeployment
```
2. Open Docker Desktop, Verify it's running by running the below in terminal
``` Bash
    docker ps
```
> You should see
```
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
3. Run the setup script to clone/update microservice repositories for TheLastFork:
```Bash
  chmod +x setup.sh
   ./setup.sh
```
4. Turn off AirPlay Receiver
> Airplay Reciever uses port 5000 which our Forecast service uses
- Go to System Prefrences
- General -> AirDrop & Handoff
- Turn off __AirPlay Reciever__
4. Start the Application using Docker Compose:
```Bash
   docker-compose up --build
```
5. Access the application:
- At: http://localhost
6. To stop deployment in the same terminal press, Or stop it in the Docker app
> Control+c
---

