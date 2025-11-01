FROM tomcat:9.0-jdk17-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/mywebapp.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 80
CMD ["catalina.sh","run"]