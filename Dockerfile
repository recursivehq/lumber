FROM node:lts-jessie

WORKDIR /usr/src/app
RUN npm install -g https://github.com/ForestAdmin/lumber.git#feature/lumber-plugins-with-docker

VOLUME /usr/src/app

EXPOSE 3000
CMD lumber generate $APP_NAME -c $DATABASE_URL && \
  cd $APP_NAME && \
  npm install
