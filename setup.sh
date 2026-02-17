#!/bin/bash
set -e

echo "Setting up Setting up TheLastFork..."


setup_java_service() {
    service_name=$1
    repo_url=$2

    if [ -d "$service_name" ]; then
        echo "$service_name exists, pulling changes..."
        cd "$service_name" && git pull
    else
        echo "Cloning $service_name..."
        git clone "$repo_url"
        cd "$service_name"
    fi

    echo "Building $service_name..."

    chmod +x mvnw

    ./mvnw clean package -DskipTests
    cd ..
}

setup_simple_service() {
    service_name=$1
    repo_url=$2

    if [ -d "$service_name" ]; then
        echo "$service_name exists, pulling changes..."
        cd "$service_name" && git pull && cd ..
    else
        echo "Cloning $service_name..."
        git clone "$repo_url"
    fi
}

setup_java_service "userservice" "https://github.com/Team-Tiger1/userservice.git"
setup_java_service "productservice" "https://github.com/Team-Tiger1/productservice.git"
setup_java_service "apigateway" "https://github.com/Team-Tiger1/apigateway.git"

setup_simple_service "forecastservice" "https://github.com/Team-Tiger1/forecastservice.git"
setup_simple_service "websitefrontend" "https://github.com/Team-Tiger1/websitefrontend.git"


echo "Setup and Build Complete"
echo "You can now run the tests"
