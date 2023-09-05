FROM alpine:3.14

RUN apk --no-cache add nginx php7 php7-fpm php7-mysqli php7-json php7-session

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/html

COPY index.php /var/lib/nginx/html
COPY index.php /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
