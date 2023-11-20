# Use the official MySQL image as a parent image
FROM mysql:8.0

# Set the root password
ENV MYSQL_ROOT_PASSWORD=root

# Create a database and user
ENV MYSQL_DATABASE=waptekk_db1
ENV MYSQL_USER=johndoe
ENV MYSQL_PASSWORD=password

# Expose port 3306 for MySQL
EXPOSE 3306
