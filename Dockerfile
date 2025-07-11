# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose port and start app
EXPOSE 3000
CMD ["npm", "start"]
