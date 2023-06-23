# Argument for node version
ARG NODE_VERSION=14
FROM mcr.microsoft.com/devcontainers/universal:linux
# Install dependencis in the container using install-deps.sh
COPY library-scripts/*.sh /tmp/library-scripts/
RUN apt-get update && bash /tmp/library-scripts/install-deps.sh

