FROM node:22.1.0-alpine3.18
WORKDIR /app
COPY vue-project ./
RUN apk update
CMD ["npm", "run", "dev", "--", "--host"]