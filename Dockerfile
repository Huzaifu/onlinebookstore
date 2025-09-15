FROM maven:latest as builder
WORKDIR /app
COPY . /app/
RUN mvn clean install

FROM tomcat:latest
WORKDIR /app
COPY --from=builder /app/target/onlinebookstore.war /opt/tomcat/webapps
EXPOSE 8080
