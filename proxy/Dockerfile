FROM nginx

COPY conf.d/* /etc/nginx/conf.d/


RUN mkdir /certs

CMD envsubst '$${NGINX_HOST}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'