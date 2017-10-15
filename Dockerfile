# Build a "dev/ruby" image from this Dockerfile using:
#   $ docker build . -t dev/ruby

FROM gliderlabs/alpine:3.6
MAINTAINER cristian.arroyo@vivaserver.com

# provides Ruby 2.4.2p198
RUN apk add --update ruby
RUN rm -rf /var/cache/apk/*

COPY .gemrc /root

# install some base packages
RUN gem install bundler

WORKDIR /opt

CMD ["bundle","--version"]
