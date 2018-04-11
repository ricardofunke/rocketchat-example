FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY certificate.key /etc/nginx/certificate.key
COPY certificate.crt /etc/nginx/certificate.crt

RUN /bin/bash -c "chmod 400 /etc/nginx/certificate.key; \
envsubst < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"