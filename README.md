# TheLastFork Local Deployment And Tests
Repository configured To Pull from all Relevant repos for local deployment of entire architecture for easy local deployment and testing.

---
# Contributions

## DevOps
**Author: Jed Leas**
- My focus has been setting up the instances of the achirtecture designed by Daniel Jackson which included setting up the:
  - Nginx (Reverse proxy)
  - K3s
  - Postgres
  - RabbitMQ
  - Nginx (Website hosting)
- As well as setting up all CI/CD workflows to handle 
  - Automatic testing on push of main branch on each microservices repo
  - Automatic Deployment onto k3s with zero downtime on compleation of automatic testing so broken code wont make it to deployment
- And Sorting out bug fixes and connections between each microservices to eachother and the databases for both deployment and testings  

<br>

## Backend Services  

### API Gateway
**Author: Daniel Jackson**
- Setup this routing service to manage sending request to the right service, using pattern matching based on the URL.
- Configured CORS so the production website and development environments can send requests to the backend.
- Setup Authentication Security Filter that:
  - Verifies token signature for authenticity
  - Verifies token has not expired
  - Written explicit paths that are exempt from authentication (E.G Endpoint Documentation Website)
  - Used Maven Licensing Plugin to check permissions of dependency licenses (Software Inventory)
  - Created README file to show details about the repository

<br>


### User Service
**Author: Daniel Jackson**
- Setup Authentication Components:
  - Created Refresh and Access Token Generation using Secret Key
  - Created methods to extract user type and Id from access token
  - Created endpoint for users and vendors to refresh their access token
- Setup User Components:
  - Created User Endpoints and specified the data required in the request
  - Validated incoming request data at the DTO layer
  - Defined the User and Streak database tables and linked them using Spring Boot JPA
  - Wrote custom SQL queries using JPARepository
  - Wrote business logic in the service layer that accesses the database
  - Defined Custom Exceptions to improve visibility in the logs
  - Setup a RabbitMQ Listener that receives updates to the streak
  - Created a Component that generates a unique username using random adjectives and nouns
 - Setup Vendor Components:
   - Created Vendor Endpoints and specified the data required in the request
   - Validated incoming request data at the DTO layer
   - Defined the Vendor database table using Spring Boot JPA
   - Wrote business logic in the Vendor Service layer that accesses the database
- Added OpenAPI documentation to improve visibility of the backend for the front-end developers
- Enforced Controller-Service-Repository model to improve consistency across services for developers
- Setup Spring Boot Profiles to manage configurations for production, development and testing environments
- Used Maven Licensing Plugin to check permissions of dependency licenses (Software Inventory)
- Created README file to show details about the repository

<br>

**Author: Ivy Figari**
- Unit tests
    - User controller: successful user registration, user registering with email already in use, successful user login, password incorrect login, email doesnt exist login
    - User services: successful login, creating invalid user profile with taken email, retireiving user from repository, using an email that doesnt exist,
    - Vendor services: creating a vendor successfully, trimmed
- Integration tests
    - Initial streak is 0 when user registers, streak is then 1 after first purchase
    - 2 reservations made the same day the streak doesnt increase twice
  - test_evidence.pdf, main initial evaluation

<br>

### Product Service 
**Author: Robert Rainer**
- Developed Product and Allergen Components:
   - Created Product REST Endpoints and specified the data required in requests    
   - Implemented Product Service Layer with JWT ownerships checks
   - Implemented Product–Allergen many-to-many relationship mapping
   - Designed and implemented the DTO layer for product operations
   - Implemented ProductService interface and ProductServiceJPA service layer
   - Wrote business logic in Product Service Layer that accesses the database
   - Developed ProductMapper to convert entities into DTOs 
   - Created repository interfaces for Product and Allergy database operations
- Commented Product Service    



<br>

**Author: Daniel Jackson**
- Led code structure discussions with Robert Rainer about using the MVC model
- Setup Bundle Components:
  - Created Bundle Endpoints and specified the data required in the request
  - Created endpoints that support pagination for SQL queries
  - Validated incoming requests data at the DTO layer
  - Wrote SQL Queries that joined multiple tables
  - Defined Bundle and BundleProducts (joining table) database tables using Spring Boot JPA
  - Wrote business logic in Bundle Service Layer that accesses the database
  - Defined Custom Exceptions to improve visibility in the logs
- Setup Reservation Components:
  - Created Reservation Endpoints and specified the data required in the request
  - Validated incoming request data at the DTO layer
  - Defined Reservation and Claim code database tables and linked them
  - Defined RabbitMQ configuration and published messages to the queue
  - Defined Custom Exceptions to improve visibility in the logs
  - Wrote business logic in the Reservation Service Layer that accesses the database
- Added OpenAPI documentation to improve visibility of the backend for the front-end developers
- Enforced Controller-Service-Repository model to improve consistency across services for developers
- Used Maven Licensing Plugin to check permissions of dependency licenses (Software Inventory)
- Created README file to show details about the repository

 <br>

### Forecast Service
**Author: Alex Greasley**
- Created the scripts used for generating seeded data, simulating realistic user behaviour to establish trends for the ML models
- Wrote scripts that cleaned and denormalised relational data to prepare it for bulk transfer into the production database
- Developed the Machine Learning training pipeline, including data preprocessing, feature engineering, and the training of the Gradient Boosting classifiers used for predicting reservations and collections
- Built the Forecast Service API, using FastAPI to create the /predict and /simulate endpoints and authorised them using JWT Auth
- Integrated the Weather API to fetch historical data for model training and real-time conditions for predicting reservations and collections
- Co-Developed unit and integration tests using pytest and FastAPI TestClient with Jed Leas.

<br>

**Author: Jed Leas**
- Setting up all CI/CD workflows to handle 
    1. Automatic testing on push of main branch on the forcast service repo
  2. Automatic Deployment onto k3s with zero downtime on completion of automatic testing so broken code won't make it to deployment
- And Sorting out bug fixes and connections between each microservice's to the forecast service and set up the connection to the postgre database
- Co-Developed unit and integration tests using pytest and FastAPI TestClient with Alex Greasley.
- Helped with bug fixing of Auth and Forecast service

<br>

**Author: Daniel Jackson**
- Used pip-licenses to check permissions of python module licenses (Software Inventory)

<br>

## Website 
**Author: Toby Beckett**
- My role was Team-Lead/Scrum-Master, Front end
- Created the Lofi Designs for the Login (supplier and user), register(Supplier and user), Orders, catalog, impact, and the report issue pages that are all on the user side of the website
- Created the user Login page: HTML, CSS and javascript
- Created the user Signup page: HTML, CSS and javascript
- Created the supplier Login page: HTML, CSS and javascript
- Created the supplier Signup page: HTML, CSS and javascript
- Created the users Catalog page: HTML, CSS and javascript
- Created the users Orders page: HTML, CSS and javascript
- Created the suppliers forecast page: HTML, CSS and javascript
- Created the index page: javascript and HTML
- Created the README file for the front end repository
- Being Team Lead, this included taking all the meeting notes and monitoring jira. This also included having frequent calls with the backend team to understand proguess and if any problems needed to be discussed in the coming team meeting.

<br>

**Author: William Foulger**
- Created the Lofi designs for the Dashboard, Forecast, Create produce, create bunlde, Analytics and forecast pages
- Created the supplier Dashboard page: HTML, CSS, javascript
- Created the supplier Create Products page: HTML, CSS, javascript
- Created the supplier Create Bundles page: HTML, CSS, javascript
- Role front end

<br>

**Author: Daniel Jackson**
- Integrated the Authentication Mechanism into the Website
  - Created a check to see if the access token is valid
  - Created standard POST and GET methods with retry mechanisms
- Created the Vendor Page
  - Created Display for Vendor Information and Google Map Embed
  - Created List of Available Bundles with Drop-Down for Product List
- Created Standard Header and Footer for all Web pages
- Added Analytics Page so vendors can see reservation statistics
  
<br>

## Testing
**Author: Ivy Figari**
- {Description here}

<br>

## Documentation

**Author: Daniel Jackson**
- Wrote the Architecture descriptions
  - Created the Entity-Relationship Diagram
  - Created the overall backend architecture diagram
  - Wrote about each service and the overall data flow through our system
  - Wrote about architectural decisions we made and their impact
  - Explained the rationale behind choosing our languages and frameworks
- Made the Software/Data Licensing document

<br>

**Author: Alex Greasley**
- Wrote Data Seeding description
  - Explained each tables generation
  - Discussed early versions and improvements made
  - Justified decisions made
- Wrote Forecasting Model description
  - Explained preprocessing techniques used
  - Discussed previous models used and improvements made
  - Justified decisions made
  - Wrote about future plans for the forecasting models
  - Highlighted areas for improvement
- Wrote Process Evidence
  - NOT DONE YET WILL WRITE HERE WHEN DONE

<br>


**Author: Jed Leas**
- Wrote Prioritized Requirements
  - Created User Stories based on:
    - Project Requirements
    - Teams goals 
  - Created Criteria to judge if requirements have been met
  - Created Traceability to instruct a person how to independently verify if we met our specified requirements
- Wrote Sprint Two Plan
  - Spoke to every group members about:
    - Their goals for sprint two
    - What they want to work on
    - If they want to do something else or stay in their role
  - Compiled this information into:
      - The user story’s
      - Story point estimations
      - Who’s going to be working on what
      - Technical Rational if needed
<br>


**Author: Toby Beckett**
- Wrote the Executive Summary
- Wrote the front-end design section
  - Drew the front end lofi designs for the user pages
  - Drew the front end lofi designs for the login/register page for the Users/Vendors
  - Created the initial powerpoint template
  - Write the front end explanation
<br>

**Author: Robert Rainer**
- Wrote the Problem Statement
  - Researched food waste statistics and impact
  - Identified root causes of food waste within context
  - Investigated problems with existing systems/platforms
  - Addressed project scope and limitations

<br>

**Author: Ivy Figari**

<br>

## Ethical and Legal considerations
**Author: Oscar De Lemos**
- Produced the full Ethical and Legal considerations document covering food safety, allergen disclosure, consumer fairness, gamification risks, accessibility, environmental impact, privacy, security, intellectual property and data licensing.
- Described the food safety responsibilities and liabilities of the platform, sellers, and users.
- Identified key risks such as misleading listings, allergen inaccuracies and potential data exposure, and documented approaches the platform implements to mitigate these risks.
- Wrote the website footer policy content, including: Terms of Use, Privacy Policy, Food Safety & Allergy statements, Cookies statement, and Accessibility Statement including known limitations.
- Produced the Ethics Approval Statement, explaining why ethics approval was not required.
<br>

## License Decision 
**Author: Oscar De Lemos**
- Researched multiple potential licences, comparing their benefits and limitations.
- Selected MIT Licence as the project's licence following my assessment.
- Wrote the licence decision with justification, explaining the licence's suitability and compatibility with third party dependencies.
- Configured and inserted the MIT LICENSE file across all project repositories.

<br>

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
