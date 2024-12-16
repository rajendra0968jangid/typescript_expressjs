# Use the official Node.js image as a base image  
FROM node:18  

# Set the working directory in the container  
WORKDIR /usr/src/app  

# Copy package.json and yarn.lock files to the working directory  
COPY package.json yarn.lock ./  

# Install the dependencies using Yarn  
RUN npm install -g yarn

# Copy the rest of the application code to the working directory  
COPY . .  

# Expose the application port  
EXPOSE 3000  

# Command to run the application  
CMD ["yarn", "start"]  
