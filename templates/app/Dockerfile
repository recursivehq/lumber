FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install lumber-cli -g
RUN if [ -z $forestEmail ] ; then npm install lumber-forestadmin --save && lumber install lumber-forestadmin --email $forestEmail --projectName $forestProjectName ; else echo "Your Forest variables are not setup properly." ; fi  
RUN npm install
COPY . .
EXPOSE <%= port %>
CMD ["npm", "start"]
