FROM node:alpine AS development

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /react-app

# Installing dependencies
COPY ./package*.json ./

RUN npm install

# Copying all the files in our project
COPY . .

EXPOSE 8080

# Starting our application
CMD ["npm","start"]
