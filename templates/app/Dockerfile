FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install lumber-cli -g
RUN if [ -z $forest-email ] ; then npm install lumber-forestadmin --save && lumber install lumber-forestadmin --email $forest-email --projectName $forest-projectName ; else echo "Not wooorking" ; fi  
RUN npm install
COPY . .
EXPOSE <%= port %>
CMD ["npm", "start"]
