# Stage 1: Production stage
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package*.json files
COPY package*.json ./

# Install only production dependencies
RUN npm install --omit=dev

# Expose the listening port
EXPOSE 3000


# Run the app
CMD ["npm", "start"]