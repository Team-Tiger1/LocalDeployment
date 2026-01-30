# The Last Fork Local Deployment And Tests
Repository configured To Pull from all Relevant repos for local deployment of entire architecture for easy local deployment and testing.

# Requirements
-  **Docker Desktop**
- **Git**
### Requirements for running Tests
- **Java 17+** 
- **Python 3.9+** 

# Docker Installation

### windows
- Download and install [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/).
- Ensure WSL 2 is enabled during installation

### MacOs
- Download and install [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/).

### Linux
- Install based on your distribution: [Docker Engine Installation](https://docs.docker.com/engine/install/).
- Ensure you install `docker-compose` if it is not included.

# Run Local Deployment

This will clone all microservices (`UserService`, `ProductService`, `APIGateway`, `ForecastService`, `WebsiteFrontend`) and start them in Docker containers.

### windows
1. Open Docker Desktop

2. Open Terminal in the Project folder of this repo
```cmd
cd {path}/LocalDeployment
```
3. Verify Docker is running:
```
docker ps
```
You should see
```
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
4. Run the setup script to clone/update repositories:
   ```cmd
   .\setup.bat
   ```
5. Start the application using Docker Compose:
    ```DOS
   docker-compose up --build
   ```
6. Access the application:
- At: http://localhost

