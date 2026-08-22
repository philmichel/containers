FROM alpine:3.22@sha256:14358309a308569c32bdc37e2e0e9694be33a9d99e68afb0f5ff33cc1f695dce AS builder

# renovate: datasource=github-releases depName=sabre-io/Baikal
ENV BAIKAL_VERSION=0.12.1

ADD https://github.com/sabre-io/Baikal/releases/download/$BAIKAL_VERSION/baikal-$BAIKAL_VERSION.zip .
RUN apk add --no-cache unzip && unzip -q baikal-$BAIKAL_VERSION.zip

FROM nginx:1@sha256:8f029c543423e3eac6b08254718bc31eb75633b1e448026b6616927baa7d4bfe

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
