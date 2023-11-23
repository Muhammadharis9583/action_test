# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Vite.js app for production
RUN npm run build

# Expose the port that the Vite.js app will run on (default is 3000)
EXPOSE 5173

# Define the command to start your application
CMD ["npm", "run", "dev"]
