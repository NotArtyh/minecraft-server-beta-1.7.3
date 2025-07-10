# Minecraft b1.7.3 server docker

A docker image for running a **Minecraft beta 1.7.3 server**

The image allows to:
- Bind a external volume to store the world on the host system
- Configure a port binded to the default server port `25565`
- Define a `server.properties` with the prefered settings

## How to run

For convience a `compose.yaml` with a default setup is provided. 

Simply run `docker compose up -d` and the server will run generating a persistent docker volume with the world on the host system and building the image that this repo provides. One could expand the compose to integrate with systems like a reverse-proxy for public use o a vpn for a *private* setup. The image can then be stoped or simply remove the whole server setup via `docker compose down` but the world will be preserved as a docker volume.

If one preferes to just create and run the image independently then you can:

- Build your image via `docker build -t <image-name:tag>`
- [optional] Create your own persistent volume so that the world is stored when the container gets deleted by running `docker volume create <world>`
- Run the image via `docker run -d -v <volume>:/app/world -p <dinded-external-ports>:25565 --name <container-name> <image-name:tag>`

**[note]** 
The result is virtually the same amongst the two options, the first just streamlines the integration and process but as you don't usually create a server every hour you can simply rely on the manual aproach.

## Mentions

Original inspiration from [CardosoDev04](https://github.com/cardosodev04/beta_1.7.3_minecraft_server_docker) and [bbuuttzzzz](https://github.com/bbuuttzzzz/beta_1.7.3_minecraft_server_docker) respectively the original and forked version of the project that inspired this one.

`Server jar` provided by [betacraft](https://betacraft.uk/server-archive/)

`jdk 8` base image provided by [eclipse-temurin](https://hub.docker.com/_/eclipse-temurin)
