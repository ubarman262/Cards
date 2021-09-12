# Stage 1

FROM node:12-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g @angular/cli
RUN npm install
COPY . ./
RUN npm run build
EXPOSE 8080

# Stage 2

CMD [ "node", "server.js" ]


