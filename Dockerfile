# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.21.3

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf




#docker rmi image erdnando/front-fintech
#build
#docker build -t erdnando/front-fintech:latest .
#local test
#docker run -it -p 8080:80 --name web-vue erdnando/front-fintech
#push
#docker push erdnando/front-fintech:latest


EXPOSE 80:80
CMD ["nginx", "-g", "daemon off;"]