FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY /images /usr/share/nginx/html/InteractiveRatingComponent/images/
COPY index.html /usr/share/nginx/html/InteractiveRatingComponent/
COPY styles.css /usr/share/nginx/html/InteractiveRatingComponent/
COPY script.js /usr/share/nginx/html/InteractiveRatingComponent/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]