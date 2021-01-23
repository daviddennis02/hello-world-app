# syntax=docker/dockerfile:experimental
# Use Alpine Linux to reduce image size
FROM node:12.18.1 

# environment in which the application is running
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

