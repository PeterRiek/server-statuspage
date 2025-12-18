# Use the official Nginx image as a base
FROM nginx:alpine

# Remove default Nginx webpage
RUN rm /usr/share/nginx/html/*

# Copy our index.html to the Nginx web directory
COPY index.html /usr/share/nginx/html/

# Expose port 8081
EXPOSE 8081

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
