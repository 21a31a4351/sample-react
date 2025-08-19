 FROM node:lts AS build
  2 COPY sample-react /kishore
  3 WORKDIR /kishore
  4 RUN npm install && npm run build
  5
  6 FROM nginx
  7 COPY --from=build /kishore/build  /usr/share/nginx/html/hll
  8 EXPOSE 80/tcp
