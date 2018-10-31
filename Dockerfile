FROM 8.5.34-jre8
LABEL "purpose"="Dockerfile Deployment"
WORKDIR /usr/loca/tomcat/webapps
RUN apt-get update && apt-get install git -y
COPY /var/lib/jenkins/workspace/deploy-docker/webapp/target/*.war  /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
