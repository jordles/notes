
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
  db:
    image: postgres:latest
    container_name: postgres_container
    environment:
      POSTGRES_USER: ${POSTGRES_USER}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
      POSTGRES_DB: ${POSTGRES_DB}
    ports:
      - "5432:5432"
    volumes:
      - db_data:/var/lib/postgresql/data

  pgadmin:
    image: dpage/pgadmin4
    container_name: pgadmin_container
    depends_on:
      - db
    environment:
      PGADMIN_DEFAULT_EMAIL: ${PGADMIN_DEFAULT_EMAIL}
      PGADMIN_DEFAULT_PASSWORD: ${PGADMIN_DEFAULT_PASSWORD}
    ports:
      - "5050:80"

volumes:
  db_data:
```


### Commands

\c - connect to a database
\l - list databases
\d - describe a database
\q - quit the database
