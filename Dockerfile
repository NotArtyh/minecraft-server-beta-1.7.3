FROM eclipse-temurin:8

WORKDIR /app

COPY b1.7.3.jar server.jar

COPY server.properties server.properties

RUN echo "eula=ture" > eula.txt

RUN mkdir world

VOLUME /app/world

EXPOSE 25565

ENTRYPOINT [ "java", "-jar", "server.jar" ]

