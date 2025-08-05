# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose port and run the app
EXPOSE 3000
CMD ["npm", "start"]
