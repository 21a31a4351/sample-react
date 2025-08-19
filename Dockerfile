  FROM node:lts AS build
  COPY sample-react /kishore
  WORKDIR /kishore
  RUN npm install && npm run build
  
  FROM nginx
  COPY --from=build /kishore/build  /usr/share/nginx/html/hll
  EXPOSE 80/tcp
