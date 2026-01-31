#!/bin/bash

echo "Running User Service Tests..."
cd userservice && ./mvnw test && cd ..

echo "Running Product Service Tests..."
cd productservice && ./mvnw test && cd ..

echo "Running Gateway Tests..."
cd apigateway && ./mvnw test && cd ..

echo "Running Forecast Tests..."
cd forecastservice
poetry install && poetry run pytest
cd ..

echo "All tests finished."./