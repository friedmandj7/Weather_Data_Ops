FROM node:22-slim
WORKDIR /app
COPY package*.json ./
RUN npm ci
// ^npm clean install
COPY . .
ENV PORT=5000
CMD ["node", "app.js"]