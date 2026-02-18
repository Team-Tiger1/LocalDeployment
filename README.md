# TheLastFork Local Deployment And Tests
Repository configured To Pull from all Relevant repos for local deployment of entire architecture for easy local deployment and testing.

# Contributions

### Jed Leas
- Created Deployment Guide

### Toby Becket
- Tested MacOS

### Alexander Greasley
- Tested Linux 
- Tested Windows

---
# Requirements For Testing
- **Git**
- **Java 17 jdk** 
- **Python 3.12** 
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
    chmod +x setup.sh
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
