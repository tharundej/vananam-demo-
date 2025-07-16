# Use Node.js base image
FROM node:16

# Set working directory
WORKDIR /app

# Copy package and source code
RUN npm init -y
RUN npm install express
COPY package*.json ./
COPY . .

# Install dependencies
RUN npm install

# Expose port
EXPOSE 8080

# Start the application
CMD ["node", "app.js"]
