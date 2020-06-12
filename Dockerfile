FROM  fjy8018/nextcloud-facerecognition:latest

RUN apk add -X http://dl-cdn.alpinelinux.org/alpine/edge/testing dlib

RUN wget https://github.com/goodspb/pdlib/archive/master.zip \
  && mkdir -p /usr/src/php/ext/ \
  && unzip -d /usr/src/php/ext/ master.zip \
  && rm master.zip
RUN docker-php-ext-install pdlib-master

RUN apk add bzip2-dev
RUN docker-php-ext-install bz2