# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the application's dependencies
RUN npm install

# Copy the rest of the application's code to the container
COPY . .

# Expose port 3000 so it can be accessed from the host
EXPOSE 3000

# Define the command to run when the container starts
CMD [ "npm", "start" ]
