FROM node:16-alpine as client

WORKDIR /app

COPY client/package*.json /app/client/

RUN cd /app/client && \
    npm install
COPY client/ /app/client/
RUN cd /app/client && \
        npm run build

FROM node:16-alpine as server

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY index.js .
COPY --from=client /app/client/build /app/client/build/
RUN chown node:node /app/

CMD ["node", "index.js"]
