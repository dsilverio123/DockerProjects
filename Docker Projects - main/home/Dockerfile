# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy our static HTML file to the Nginx's default directory for serving content
COPY index.html.html /usr/share/nginx/html/index.html

# Expose port 80 to be able to access it from the host
EXPOSE 80

# Start Nginx when the container is run, but this is already the default CMD in the nginx:alpine image
CMD ["nginx", "-g", "daemon off;"]


