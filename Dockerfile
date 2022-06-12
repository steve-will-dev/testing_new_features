FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ["./testing-new-features/package.json", "./testing-new-features/package-lock.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
EXPOSE 3000
