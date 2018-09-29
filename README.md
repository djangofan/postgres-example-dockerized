# dockerized-postgres-example

An example of a dockerized Postgres with Flyway migration.

## Instructions

Simply install Docker on your machine and then run the included shell script OR run directly :

    docker-compose up -d


See docker-compose.yml for more info.

Verify its running by accessing it at:  http://localhost:9000


## Loading DB

Data comes from : https://resources.oreilly.com/examples/9780596526887/

For the mini book "A Guide to SQL Usage, Pocket Guide"  

### Add data manually

After its running, use the adminer app to load the .sql file script into the database.

### Add data with Flyway:

    mvn flyway:clean
    mvn flyway:baseline

#### Optional commands:

    mvn flyway:migrate
    mvn flyway:info
    mvn flyway:repair
