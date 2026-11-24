FROM nginx:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i 's/listen[[:space:]]*80;/listen 10000;/' /etc/nginx/conf.d/default.conf
EXPOSE 10000
