# docker-compose 
```
docker-compose build # generates the Docker images

docker-compose pull # downloads the Docker images

docker-compose up -d # start the containers in the background 
# docker-compose up -d --scale order=2

docker-compose up -d <service—name>


docker-compose down # stop and delete container

docker-compose stop # stop the containers, network and system
```

# state of the container
```
docker ps 

docker logs <container_name>

docker exec -it <container_name> /bin/sh

docker stop <container_name>

docker rm <container_name>

docker restart <container_name>
```

# clean up
```
docker container prune

docker image prune

docker network prune

docker volume prune

docker system prune -a

```
