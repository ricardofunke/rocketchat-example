FROM nginx

COPY conf.d/* /etc/nginx/conf.d/

CMD envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'