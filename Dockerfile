FROM ubuntu:latest
RUN apt update
RUN apt install nginx -y
RUN apt install curl -y
ADD .htpasswd /etc/nginx/.htpasswd
ADD default etc/nginx/sites-enabled/default
RUN service nginx restart
ENTRYPOINT ["nginx", "-g", "daemon off;"]

