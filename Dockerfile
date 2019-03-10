FROM nginx:latest
EXPOSE 8080
RUN sed -i.bak 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]