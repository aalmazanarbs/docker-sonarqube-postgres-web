## Build environment

```
sh build.sh
```

## Stop and restart environment

```
docker stop sonarqube_postgres9.6.2 sonarqube6.3
docker-compose up -d
```

## Restart Sonar container

```
docker-compose restart sonarqube6.3
```

## Get shell in the containers

```
docker exec -it container_name sh
```

## Analize a project

- Set up project file sonar-project.properties
- Move to project folder and run:
```
sonar-runner -Dsonar.host.url=http://localhost:9000
```

## Add new plugin from local folder

Add .jar file to extensions-plugins folder and restart sonar containter with
```
docker-compose restart sonarqube6.3
```
