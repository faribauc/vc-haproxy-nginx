FROM nginx:1.17-alpine AS vcweb_nginx
COPY docker-services/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www/html/public
COPY public ./

FROM haproxytech/haproxy-alpine:2.0 as vcweb_haproxy
COPY docker-services/haproxy/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
