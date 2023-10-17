FROM php:8.2-fpm-alpine

# Get PHP extension installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions

# Install PHP exteionsions
RUN install-php-extensions \
    bcmath \
    curl \
    opcache \
    pdo \
    pdo_pgsql \
    pgsql \
    zip

# Get latest Composer
RUN install-php-extensions @composer

# Set working directory
WORKDIR /var/www
