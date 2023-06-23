#!/bin/bash


# Backend Dependencies
# Install Golang if not already installed
command -v go &> /dev/null || sudo apt-get install -y golang

# Install GNU make if not already installed
command -v make &> /dev/null || sudo apt-get install -y make

# Install Docker if not already installed
command -v docker &> /dev/null || sudo apt-get install -y docker.io

# Install Docker Compose if not already installed
command -v docker-compose &> /dev/null || sudo apt-get install -y docker-compose

# Install Swagger if not already installed
command -v swagger &> /dev/null || (dir=$(mktemp -d) && git clone https://github.com/go-swagger/go-swagger "$dir" && cd "$dir" && go install ./cmd/swagger)

#Frontend Dependencies
# Install NodeJS 14.x if not already installed. If the version is not node 14, then remove it and install node 14
command -v node &> /dev/null || (curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt-get install -y nodejs)