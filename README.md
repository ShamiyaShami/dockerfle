# dockerfle
networking assignment: static file for docker.

create home.html,style.css,script.js.

create a dockerfile in current directory and insert following code.
FROM nginx:alpine
COPY . /usr/share/nginx/html

build docker image by using command 
 docker build -t static-docker-img .

run this docker image in my computer by browsing 
http://localhost:80

In dockerhub create a new container for this docker-image

push the docker image to dockerhub

run docker ps for show all containers

run docker login

before pushing docker image to hub tag it by running command
docker tag static-docker-img shamidocker/docker-website:v1 
static-docker-img : image name
shamidocker: hub username
docker-website: repository
v1: new tag

push command;
docker push shamidocker/docker-website  

create azure container registry:mydockerregister007.azurecr.io on azure portal
note login credentials from access key part of acr for later login purpose.

login to azure
command: az login

login to azure container registry: mydockerregister007.azurecr.io
az login mydockerregister007.azurecr.io   or   docker login mydockerregister007.azurecr.io 
shows login succeed

push container image from local dockerhub to acr
docker push mydockerregister007/static-docker-img 

view docker image list run 
docker image ls
 we can see the pushed image in acr repository page
 and also there is a log for note activity
 
 create a web app from web services in azure portal for get an url for this static website
 
 An error occured while creating web app:
 {"code":"InvalidTemplateDeployment","details":[{"code":"ValidationForResourceFailed","message":"Validation failed for a resource. Check 'Error.Details[0]' for more information.","details":[{"code":"InvalidSkusForXenon","message":"Apps running on Windows Containers are available only in Hyper-V Container enabled SKU."}]}],"message":"The template deployment 'Microsoft.Web-WebApp-Portal-46670ad8-b8e7' is not valid according to the validation procedure. The tracking id is '18c01907-cbbe-4920-bb12-73aa6231020e'. See inner errors for details."}
 
 my azure student subsciption don't allow me to do



