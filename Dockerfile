FROM maven:3.6.3
WORKDIR /app
COPY . /app/
RUN mvn clean install

FROM tomcat:9.0.84
WORKDIR /app
COPY /target/onlinebookstore.war /opt/tomcat/webapps/
EXPOSE 8080
