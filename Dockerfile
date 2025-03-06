FROM eclipse-temurin:17-jdk-alpine
LABEL "Author"="Thunder"
ENV APP_HOME /usr/src/app
ADD target/*.jar $APP_HOME/app.jar
WORKDIR $APP_HOME
CMD ["java", "-jar", "app.jar"]
EXPOSE 8080
