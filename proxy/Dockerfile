FROM nginx

COPY conf.d/* /etc/nginx/conf.d/

CMD [ "/bin/bash" "-c" "envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'" ]