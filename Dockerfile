# Use Amazon Linux 2 as the base image
FROM amazonlinux:2

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Install Nginx and dependencies
RUN amazon-linux-extras enable nginx1 && \
    yum install -y nginx && \
    yum clean all && \
    rm -rf /var/cache/yum

# Copy website files to the correct directory
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css  # Corrected from styles.css
COPY script.js /usr/share/nginx/html/script.js
COPY awslogo.png /usr/share/nginx/html/awslogo.png  # Ensure this file exists

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
