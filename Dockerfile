FROM node:18-alpine

WORKDIR /app

# Copy root files
COPY . .

# Install root-level deps if needed
RUN yarn install || true

# Move into server dir and install backend dependencies
WORKDIR /app/server
RUN yarn install

EXPOSE 3001

CMD ["node", "index.js"]
