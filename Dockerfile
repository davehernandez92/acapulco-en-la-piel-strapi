# Use the official Node.js 14 base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci --production

# Copy the built Strapi project
COPY . .

# Expose the Strapi server port
EXPOSE 1337

# Start the Strapi server
CMD ["npm", "start"]
