FROM php:7.2-cli as image-generator

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN install-php-extensions gd imagick

ADD --chmod=0644 https://dl.dafont.com/dl/?f=linux_libertine /LinuxLibertine.zip
RUN apt-get update; apt-get install unzip -y; apt-get clean
RUN unzip LinuxLibertine.zip

ADD --chmod=0644 https://raw.githubusercontent.com/cdmoro/literature-clock/refs/heads/main/quotes/quotes.en-US.csv /quotes.csv

RUN mkdir -p images
RUN mkdir -p images/metadata

ADD image-generator/quote_to_image.php /quote_to_image.php
ENTRYPOINT [ "php", "/quote_to_image.php" ]
