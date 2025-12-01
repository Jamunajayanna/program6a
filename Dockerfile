# Use official Node runtime as base image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json and install dependencies
COPY package*.json ./
RUN npm install express

# Copy application source
COPY . .

# Expose port the app listens on
EXPOSE 3000

# Start command
CMD ["node", "index.js"]
