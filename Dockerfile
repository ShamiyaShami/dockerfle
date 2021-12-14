FROM scratch as static-site
WORKDIR /website
COPY . .
FROM nginx:1.16.0-alpine as server
COPY --from=static-site /website /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"]
