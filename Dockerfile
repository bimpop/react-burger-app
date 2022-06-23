#base image
FROM node:12.13.1

# ENV NODE_ENV=production

# set working directory
WORKDIR /app

#install and cache app dependencies
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

#Bundle app source
COPY . .

# specify port
EXPOSE 3000

# start app
CMD [ "npm", "start" ]

# # set working directory
# WORKDIR /usr/src/app

# RUN apt-get update && apt-get install -y nodejs
# # RUN apt-get install -y npm

# # RUN mkdir /usr/src/app
# #copy all files from current directory to docker
# # COPY . /usr/src/app

# # add `/usr/src/app/node_modules/.bin` to sPATH
# ENV PATH /usr/src/app/node_modules/.bin:sPATH

# #install and cache app dependencies
# # COPY package*.json ./
# # ADD package.json /usr/src/app/package.json
# COPY ["package.json", "package-lock.json*", "./"]
# RUN npm install

# #Bundle app source
# COPY . .

# # specify port
# EXPOSE 3000

# # start app
# CMD ["npm", "start"]