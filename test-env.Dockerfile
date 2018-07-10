FROM ruby:2.5.1-slim-stretch

ARG PHANTOM_JS_VERSION
ENV PHANTOM_JS_VERSION=${PHANTOM_JS_VERSION:-2.1.1-linux-x86_64}

# Install dependencies
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        # CA certificates
        ca-certificates \
        # PhantomJS
        bzip2 \
        libfontconfig \
        # Timezone data
        tzdata \
        # nokogiri
        build-essential \
        patch \
        libxml2-dev \
        libxslt1-dev && \
    rm -rf /var/lib/apt/lists/*

# Install official PhantomJS release and cleans up
# https://github.com/wernight/docker-phantomjs/blob/master/Dockerfile
RUN \
  set -x && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
      curl && \
  mkdir /tmp/phantomjs && \
  curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOM_JS_VERSION}.tar.bz2 \
      | tar -xj --strip-components=1 -C /tmp/phantomjs && \
  mv /tmp/phantomjs/bin/phantomjs /usr/local/bin && \
  apt-get purge --auto-remove -y \
      curl && \
  apt-get clean && \
  rm -rf /tmp/* /var/lib/apt/lists/* && \
  phantomjs --version
