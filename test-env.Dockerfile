FROM ruby:2.5.1-alpine3.7

RUN \
    apk add --update --no-cache \
        # Install node.js for PhantomJS
        nodejs \
        nodejs-npm \
        # Install timezone database
        tzdata \
        # Install header files for nokogiri
        build-base \
        libxml2-dev \
        libxslt-dev
