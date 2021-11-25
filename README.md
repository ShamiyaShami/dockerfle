# dockerfle
networking assignment: static file for docker.
create home.html,style.css,script.js.
create a dockerfile in current directory and insert following code.
FROM nginx:alpine
COPY . /usr/share/nginx/html  #for using nginx web server

build docker image by using command 
docker build -t static-html-docker-image  .

run docker image by 
docker run -it -d -p 8080:80 static-html-docker-image 