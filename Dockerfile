FROM nginx:latest
RUN sed -i 's/nginx/diana/g' /usr/share/nginx/html/index.html
EXPOSE 80

