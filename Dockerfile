# 1. Use Node.js base image
FROM node:22-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy package.json & install dependencies
COPY package*.json ./
RUN npm install --only=production

# 4. Copy application code
COPY . .

# 5. Expose the app port
EXPOSE 8080

# 6. Start the server
CMD ["npm", "start"]
