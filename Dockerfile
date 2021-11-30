FROM node:17

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY . /app
RUN npm init vite@latest
RUN npm install firebase
RUN npm install

CMD ["npm", "start"]