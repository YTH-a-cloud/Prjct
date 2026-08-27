# Use a lightweight official web server or runtime image
FROM nginx:alpine

# Copy local application files into the container's web root
COPY . /usr/share/nginx/html

# Expose port 80 to allow traffic into the container
EXPOSE 80
