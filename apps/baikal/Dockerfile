FROM alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b AS builder

# renovate: datasource=github-releases depName=sabre-io/Baikal
ENV BAIKAL_VERSION=0.12.1

ADD https://github.com/sabre-io/Baikal/releases/download/$BAIKAL_VERSION/baikal-$BAIKAL_VERSION.zip .
RUN apk add --no-cache unzip && unzip -q baikal-$BAIKAL_VERSION.zip

FROM nginx:1@sha256:f0002216f237d3736e51fa3ecae6647663b9ebdf9b702e0f1ba59ea3a3055ee1

LABEL org.opencontainers.image.source=https://github.com/philmichel/containers
LABEL org.opencontainers.image.description="Baikal CalDAV/CardDAV server on nginx + PHP, continuing the unmaintained aalmenar/baikal-docker image"

# PHP from sury.org, SQLite3, and msmtp for sendmail-based email
RUN curl -o /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg &&\
  apt update                  &&\
  apt install -y lsb-release  &&\
  echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list &&\
  apt remove -y lsb-release   &&\
  apt update                  &&\
  apt install -y            \
  php8.5-curl               \
  php8.5-fpm                \
  php8.5-mbstring           \
  php8.5-mysql              \
  php8.5-pgsql              \
  php8.5-sqlite3            \
  php8.5-xml                \
  php8.5-imap               \
  sqlite3                   \
  msmtp msmtp-mta           &&\
  rm -rf /var/lib/apt/lists/* &&\
  sed -i 's/www-data/nginx/' /etc/php/8.5/fpm/pool.d/www.conf &&\
  sed -i 's/^listen = .*/listen = \/var\/run\/php-fpm.sock/' /etc/php/8.5/fpm/pool.d/www.conf

COPY files/docker-entrypoint.d/*.sh files/docker-entrypoint.d/*.php files/docker-entrypoint.d/nginx/ /docker-entrypoint.d/
COPY --from=builder --chown=nginx:nginx baikal /var/www/baikal
COPY files/favicon.ico /var/www/baikal/html
COPY files/nginx.conf /etc/nginx/conf.d/default.conf

VOLUME /var/www/baikal/config
VOLUME /var/www/baikal/Specific
