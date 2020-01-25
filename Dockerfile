FROM nginx:1.13.3-alpine

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

## copy over the artifacts in dist folder to default nginx public folder
COPY dist/ /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
