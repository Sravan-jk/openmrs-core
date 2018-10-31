FROM 8.5.34-jre8
LABEL "purpose"="Dockerfile Deployment"
WORKDIR /usr/loca/tomcat/webapps
RUN apt-get update && apt-get install git -y
COPY /var/lib/jenkins/workspace/open-mrs  /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
