FROM nginx:alpine

COPY html /usr/share/nginx/html

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80