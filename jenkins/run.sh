sudo docker run \
--name jenkins \
-v /apps/jenkins:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 8080:8080 -d \
docker-jenkins
