FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /home/runner/work/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
RUN chown -R node /home/runner/work/app
USER node
CMD ["npm", "start"]
