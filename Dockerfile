FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.7flot.mongodb.net
ENV MONGODB_USERNAME bizoncristi
ENV MONGODB_PASSWORD 8a4bGBj9CkdR2b

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]