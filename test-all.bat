@echo off
echo Running User Service Tests...
cd userservice
powershell -Command "& { ./mvnw.cmd test | Select-String 'Tests run:' }"
cd ..
echo Above /\ are the User Service Test Results
echo ----------------------------------------------------------------

echo Running Product Service Tests...
cd productservice
powershell -Command "& { ./mvnw.cmd test | Select-String 'Tests run:' }"
cd ..
echo Above /\ are the Product Service Test Results
echo ----------------------------------------------------------------

echo Running Gateway Tests...
cd apigateway
powershell -Command "& { ./mvnw.cmd test | Select-String 'Tests run:' }"
cd ..
echo Above /\ are the API Gateway Test Results
echo ----------------------------------------------------------------

echo Running Forecast Tests...
cd forecastservice
call pip install poetry
call poetry install
echo Forecast Tests Results: \/
powershell -Command "& { poetry run pytest | Select-String '==='}"
cd ..

echo All tests finished successfully!
pause