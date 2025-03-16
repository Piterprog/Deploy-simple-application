# Use official Node.js image as a base 
FROM node:18

# Maintainer
LABEL maintainer="piterbog@gmail.com"

# Set system locale
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 8080 for the application
EXPOSE 8080

# Command to run the application
CMD ["node", "server.js"]
