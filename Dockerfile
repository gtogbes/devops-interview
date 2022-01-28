FROM node:8-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install 
COPY app.js ./
EXPOSE 5000 
CMD [ "npm", "start" ]
