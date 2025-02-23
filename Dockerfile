# Use Amazon Linux 2 as the base image
FROM amazonlinux:2

# Set the working directory
WORKDIR /usr/share/nginx/html

# Install Nginx and dependencies
RUN amazon-linux-extras enable nginx1 && \
    yum install -y nginx && \
    yum clean all && \
    rm -rf /var/cache/yum

# Copy website files
COPY index.html .
COPY styles.css .
COPY script.js .
COPY awslogo.png .

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
