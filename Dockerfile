# Step 1: Start with the official Nginx base image from Docker Hub
FROM nginx:alpine

# Step 2: Copy our custom HTML page into the web directory inside the container
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Tell Docker that the container listens on network port 80
EXPOSE 80
