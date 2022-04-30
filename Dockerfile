#stage 1
FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
CMD npm run start

#stage 2
EXPOSE 4200