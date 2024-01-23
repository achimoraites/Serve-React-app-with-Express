# Serve-React-app-with-Express

A boilerplate to deploy react apps on heroku.

## Requirements

- node 16.x

## How to get started

```
npm run dev-install
cd client
yarn build
cd ..
npm run start

```
After go to http://localhost:5000
your app is now served by the express.js server.

## Docker

```sh
# docker version 24.x or greater
docker compose build

docker compose up # running in foreground
docker compose up -d # running in background
```

After go to http://localhost:5000

## Development

```
cd client
yarn start

```
and you can start building your app.

## Heroku

Remember when you have developed your react project , you simply deploy to heroku.
After that heroku will install the server dependencies and runs 'heroku-postbuild' 
script to install the react dependencies for your app.


