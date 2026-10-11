
# using offical Node.js version 16 as base enviroment
FROM node:16
#Set working directory to /app
WORKDIR /app
#copy package.json file to working directory for dependency installation
COPY package.json ./
#install the project dependencies using npm
RUN npm install
#Copy all remaining application source code into containers directory
COPY . .
#expose port 3000 so the app can receieve network traffic to that port
EXPOSE 3000

CMD ["npm", "start"]