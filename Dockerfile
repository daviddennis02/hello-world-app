# syntax=docker/dockerfile:experimental
# Use Alpine Linux to reduce image size
FROM node:alpine 

# environment in which the application is running
ENV NODE_ENV=production

WORKDIR /app

# copy package* files into our working directory
COPY ["package.json", "package-lock.json*", "./"]

# Install app dependencies
RUN npm install --production

# copy source code into the image
COPY . .    

# Expose and map PORT to 8000
EXPOSE 8000

CMD ["npm" , "start"]

