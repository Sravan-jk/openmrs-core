FROM tomcat:8.5.35-jre8
RUN apt-get update
LABEL 'Author'='Sravan'
COPY openmrs.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

