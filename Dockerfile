#e the official NGINX base image
FROM nginx:alpine

# Copy the index.html file into the directory that NGINX serves files from
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

