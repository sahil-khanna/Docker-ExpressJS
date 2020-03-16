# Download base image
FROM ubuntu

# Update the software repository
RUN apt-get update -y

# Installs the updated software repository
RUN apt-get upgrade -y

# Installs apt-utils as this package is required by a lot of other configurations
RUN apt-get install apt-utils -y

# Install curl
RUN apt-get install curl -y

# Install sudo
RUN apt-get install sudo -y

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
RUN apt-get install -y nodejs

# Install Git
RUN apt-get install git -y

# Expose the default port
EXPOSE 3000

# Create Express Workspace
RUN mkdir Express_Workspace
# CMD cd Express_Workspace

# Clone GIT Repo
RUN git clone https://github.com/sahil-khanna/JWT_Express.git Express_Workspace/JWT
WORKDIR Express_Workspace/JWT

# Prepare express project
RUN npm install