FROM node:18.12.0
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "start"]

# Открытие порта
EXPOSE 3000

