# Use an official PHP runtime as a parent image
FROM php:8.2-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY app/ .


# Install any needed packages specified in requirement.txt
RUN apt-get update && apt-get install -y \
	libmcrypt-dev \
	&& docker-php-ext-install pdo_mysql

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variables
ENV APACHE_DOCUMENT_ROOT /var/www/html

# Enable Apache mod_rewrite
RUN a2enmod rewrite

