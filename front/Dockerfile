# Use the official Node.js image with Yarn from the Docker Hub
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install npm dependencies
RUN npm install --silent

# Copy the rest of the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
