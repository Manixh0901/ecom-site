# Use the official Nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy project files to the nginx html directory
COPY . .

# Expose port 80
EXPOSE 80

# Nginx runs automatically, so no CMD needed
