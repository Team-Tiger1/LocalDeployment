@echo off
echo  Setting up TheLastFork...

if exist userservice (
    echo userservice already exists, pulling changes...
    cd userservice
    git pull
) else (
    echo Cloning userservice...
    git clone https://github.com/Team-Tiger1/userservice.git
    cd userservice
)
echo Building User Service...
call mvnw.cmd clean package -DskipTests
cd ..

if exist productservice (
    echo productservice already exists, pulling changes...
    cd productservice
    git pull
) else (
    echo Cloning productservice...
    git clone https://github.com/Team-Tiger1/productservice.git
    cd productservice
)
echo Building Product Service...
call mvnw.cmd clean package -DskipTests
cd ..


if exist apigateway (
    echo apigateway already exists, pulling changes...
    cd apigateway
    git pull
) else (
    echo Cloning apigateway...
    git clone https://github.com/Team-Tiger1/apigateway.git
    cd apigateway
)
echo Building API Gateway...
call mvnw.cmd clean package -DskipTests
cd ..


if exist forecastservice (
    echo forecastservice already exists, pulling changes...
    cd forecastservice && git pull && cd ..
) else (
    echo Cloning forecastservice...
    git clone https://github.com/Team-Tiger1/forecastservice.git
)


if exist websitefrontend (
    echo websitefrontend already exists, pulling changes...
    cd websitefrontend && git pull && cd ..
) else (
    echo Cloning websitefrontend...
    git clone https://github.com/Team-Tiger1/websitefrontend.git
)


echo Setup and Build Complete
echo now run: docker-compose up --build
pause