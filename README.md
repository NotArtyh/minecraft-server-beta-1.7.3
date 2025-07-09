# Minecraft b1.7.3 server docker image

A docker image for running a **Minecraft beta 1.7.3 server**

The image allows to:
- Bind a external volume to store the world on the host system
- Configure a port binded to the default server port `25565`
- [todo] Define a `server.properties` with the prefered settings

## How to run

Build your image via `docker build -t <image-name>`

The image can be modified as one may wish.

### Mentions

Original inspiration from [CardosoDev04](https://github.com/cardosodev04/beta_1.7.3_minecraft_server_docker) and [bbuuttzzzz](https://github.com/bbuuttzzzz/beta_1.7.3_minecraft_server_docker) respectively the original and forked version of the project that inspired this one.

Server image provided by [betacraft](https://betacraft.uk/server-archive/)

`jdk 8` image provided by [eclipse-temurin](https://hub.docker.com/_/eclipse-temurin)
