# Use Node.js 18 image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose port (optional, if your app listens on a port)
EXPOSE 3000

# Command to start the app
CMD ["node", "index.js"]
