FROM bellsoft/liberica-runtime-container:jdk-21-musl
ARG JAR_FILE=be.jar
ENV SPRING_CONFIG prod
COPY ${JAR_FILE} app.jar
ENTRYPOINT java -Dspring.profiles.active=${SPRING_CONFIG} -jar /app.jar
