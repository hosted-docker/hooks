FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

ADD dist  /usr/share/nginx/html/mirror/hooks

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
