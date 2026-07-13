FROM bitnami/minideb:latest

LABEL maintainer="Hyunwoo Oh"

RUN apt-get update -y

# add locale
RUN apt-get -y install locales
# Set the locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# add ruby and jekyll
RUN apt-get install --no-install-recommends ruby-full build-essential zlib1g-dev -y
RUN apt-get install imagemagick -y

# install python3 and jupyter
RUN apt-get install python3-pip -y
RUN python3 -m pip install jupyter --break-system-packages

# Install the Bundler version recorded in Gemfile.lock. Jekyll and all plugins
# are installed by `bundle install` below.
RUN gem install bundler -v 2.5.4

ENV BUNDLE_PATH=/usr/local/bundle

RUN mkdir -p /srv/jekyll

COPY Gemfile Gemfile.lock /srv/jekyll/

WORKDIR /srv/jekyll

RUN bundle install

# Set Jekyll environment
ENV JEKYLL_ENV=production 

EXPOSE 8080

CMD ["bundle", "exec", "jekyll", "serve", "--watch", "--port=8080", "--host=0.0.0.0", "--livereload", "--trace"]
