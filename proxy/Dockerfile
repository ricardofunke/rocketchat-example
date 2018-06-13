FROM nginx:alpine

RUN mkdir /certs
RUN mkdir /tmp/nginx_cache

COPY conf.d/* /etc/nginx/conf.d/
COPY certs/* /certs/

CMD envsubst '$${NGINX_HOST}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'