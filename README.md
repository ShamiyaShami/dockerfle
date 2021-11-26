# dockerfle
networking assignment: static file for docker.

create home.html,style.css,script.js.

create a dockerfile in current directory and insert following code.
FROM scratch as static-site
WORKDIR /website
COPY . .
FROM nginx:1.16.0-alpine as server
COPY --from=static-site /website /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"]  #for using nginx web server

build docker image by using command 
docker build -t shamidocker/static-html-docker-image -f Dockerfile .

here shamidocker is my docker hub username.

In dockerhub create a new container for this docker-image
