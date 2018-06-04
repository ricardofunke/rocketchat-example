FROM nginx:alpine

RUN mkdir /certs

COPY conf.d/* /etc/nginx/conf.d/

CMD envsubst '$${NGINX_HOST}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'