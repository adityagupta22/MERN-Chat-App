FROM node:18

ENV NODE_ENV=production

ENV PORT=5000

ENV MONGO_URI=mongodb+srv://adityag22:adityag123@cluster0.eyxolti.mongodb.net/?retryWrites=true&w=majority

ENV JWT_SECRET=aditya

ENV NODE_VERSION=18.18.0

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm run build

COPY . .

EXPOSE 5000

CMD [ "node", "backend/server.js" ]

# FROM node:18
# ENV NODE_ENV=production
# ENV PORT=5000
# ENV MONGO_URI=mongodb+srv://adityag22:adityag123@cluster0.eyxolti.mongodb.net/?retryWrites=true&w=majority
# ENV JWT_SECRET=aditya
# ENV NODE_VERSION=18.18.0
# WORKDIR /app
# COPY package.json package-lock.json* ./
# RUN npm run build
# COPY ./app /app
# EXPOSE 5000
# CMD [ \
