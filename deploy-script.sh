
# Pull the latest Docker image and restart the container
docker pull  ldawit/docker-react
docker ps --format "{{.Names}}" as cname 
docker stop cname
docker rm cname
docker run -d -p 80:80 --name cname  ldawit/docker-react