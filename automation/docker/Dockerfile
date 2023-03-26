# Use the latest Node.js Alpine image
FROM node:alpine

# Create the app directory
WORKDIR /app

# Copy package.json and yarn.lock for better caching
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --production --frozen-lockfile

# Install Vite separately to improve caching
RUN yarn add vite

# Copy the rest of the application files
COPY . .

# Build TypeScript files
RUN yarn build-only

# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["yarn", "preview"]