#Use a lightweight base image
FROM alpine:latest

#Set a working directory
WORKDIR /app

#Install some dependencies
RUN apk add --no-cache curl

#Create a simple script
RUN echo 'echo "Hello from Docker!"' > run.sh && chmod +x run.sh

#Set the script as the default
CMD ["sh", "./run.sh"]