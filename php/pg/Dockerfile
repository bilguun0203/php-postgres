FROM php:8.2-fpm-alpine

# Install system dependencies
RUN apk add --no-cache \
    git \
    curl \
    openssh-client \
    zip \
    unzip \
    freetype-dev \
    curl-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libpq-dev \
    libzip-dev 

# Install PHP extensions
RUN docker-php-ext-configure gd --with-jpeg --with-freetype \
    && docker-php-ext-install -j$(nproc) \
    bcmath \
    curl \
    exif \
    gd \
    opcache \
    pgsql \
    pdo \
    pdo_pgsql \
    zip \
    && docker-php-ext-enable curl \
    && docker-php-ext-enable opcache \
    # Clean up
    && docker-php-source delete

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Add composer bin to PATH
ENV PATH ./vendor/bin:/home/$user/.composer/vendor/bin:$PATH

# Set working directory
WORKDIR /var/www
