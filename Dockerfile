FROM ubuntu:latest

RUN apt-get update && apt-get install -y nginx 

COPY index.html styles.css README.md /var/www/html/
COPY assets/ /var/www/html/assets/

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]