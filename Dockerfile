# Use the official Nginx image as a base image
FROM nginx:latest

# Copy custom Nginx configuration file
COPY ansible/roles/nginx/templates/index.html.j2 /usr/share/nginx/html/index.html

# Copy the image to the Nginx HTML directory
COPY ansible/roles/nginx-docker/templates/KLS_netology_12.07.2004.jpeg /usr/share/nginx/html/KLS_netology_12.07.2004.jpeg

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
