
A Docker Compose file is a YAML file that defines the services and their configurations that you want to run in your Docker environment.

Docker Desktop is designed with Windows environments, so **powershell, cmd, and even WSL** (Windows Subsystem for Linux) are supported (if you have WSL distro installed).

WSL allows Windows to run a real Linux environment inside your Windows environment.

## Steps to run docker compose file:

Make sure you have the appropriate env variables set in your .env file.
```bash
# run docker compose build, the d flag is for detached and it means it will run in the background
docker compose up -d
# connect to postgres container and run psql
docker exec -it postgres_container psql -U ${POSTGRES_USER} -d ${POSTGRES_DB}

# login to pgadmin through localhost:5050 to access the database and see it through GUI

# run docker compose down to stop the containers, v flag is for volumns to reset all the data. 
docker compose down -v

```

```yaml
# an example docker compose file
services:
  db: # creates a container for postgres 
    image: postgres:latest
    container_name: postgres_container
    environment:
      POSTGRES_USER: ${POSTGRES_USER}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
      POSTGRES_DB: ${POSTGRES_DB}
    ports: # this port maps the ports configuration from port 5432 on my local machine to port 5432 inside the container, its used to connect to the database as part of the connection string. Port 5432 is the default port for PostgreSQL, and it is used for database connectionsPort 5432 is the default port for PostgreSQL, and it is used for database connections.  
    # It is the port used by PostgreSQL to accept database connections from clients like psql, pgAdmin, or your application (e.g., Express server). Browsers cannot directly interact with PostgreSQL because it doesn't serve HTTP traffic. 
      - "5432:5432"
    volumes:
      - db_data:/var/lib/postgresql/data

  # pgadmin service in this file is creating a pgAdmin application inside the docker container. This containerized pgAdmin functions just like a standalone pgAdmin application, but its hosted in the docker environment. 
  pgadmin: # creates a container for pgadmin 
    image: dpage/pgadmin4
    container_name: pgadmin_container
    depends_on:
      - db
    environment:
      PGADMIN_DEFAULT_EMAIL: ${PGADMIN_DEFAULT_EMAIL}
      PGADMIN_DEFAULT_PASSWORD: ${PGADMIN_DEFAULT_PASSWORD}
    ports: # this maps the ports configuration from port 5050 on my local machine to port 80 inside the container
      - "5050:80"
    volumes: # ensures the pgAdmin's configurations (like registered servers) is persisted across container restarts
      - pgadmin_data:/var/lib/pgadmin
volumes:
  db_data:
  pgadmin_data:
```


### Commands

\c - connect to a database
\l - list databases
\d - describe a database
\q - quit the database

docker ps - list running containers
docker exec -it <container_name> psql -U ${POSTGRES_USER} -d ${POSTGRES_DB} - connect to your container_name and run psql
