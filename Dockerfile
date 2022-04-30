FROM adoptopenjdk/openjdk11:alpine-jre
CMD mnv clean package
COPY target/pos-helper-api-0.0.1-SNAPSHOT.jar pos-helper-api.jar
ENTRYPOINT ["java", "-jar", "pos-helper-api.jar"]
EXPOSE 8084