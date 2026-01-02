FROM node:18-alpine

WORKDIR /app

# copy package files from correct folder
COPY backend/package*.json ./

RUN npm install --omit=dev

# copy app source
COPY backend/ .

EXPOSE 3000

CMD ["npm", "start"]
