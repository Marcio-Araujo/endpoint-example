FROM openjdk:8-jdk-alpine

ADD ./target/*.jar endpoint-example.jar

ENV JAVA_OPTS="-Xms256m -Xmx512m -XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=512m"
ENV PROFILE="prod"
ENTRYPOINT exec java -Dspring.profiles.active=$PROFILE $JAVA_OPTS -jar /endpoint-example.jar