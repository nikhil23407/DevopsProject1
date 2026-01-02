FROM node:18-alpine

WORKDIR /app

# Copy package files FIRST (cache npm install)
COPY package*.json ./
RUN npm install --omit=dev

# Copy source LAST
COPY backend/ .

EXPOSE 3000
CMD ["npm", "start"]
