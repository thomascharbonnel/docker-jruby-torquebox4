FROM ubuntu:16.04
LABEL maintainer thomas@charbonnel.email

ENV PUID 1000
ENV PGID 1000

VOLUME /app

# Create user and group for app.
RUN groupadd -r -g $PGID app; \
    useradd -r -u $PUID -g $PGID -m app; \
    chown -R app:app /app;

RUN apt-get update; \
    apt-get install -qy apt-transport-https

# Add sbt
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list; \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

# I'll install JRuby, some Scala (because, could be handy)
RUN apt-get update; \
    apt-get install -qy scala \
    ruby \
    bundler \
    sbt \
    libaio1 \
    curl

# Install jRuby
COPY jruby /jruby

# Update Rubygems
RUN /jruby/bin/jruby -S gem install rubygems-update; \
    update_rubygems; \
    /jruby/bin/jruby -S gem install bundler

EXPOSE 8080

WORKDIR /app

# Updating gems with default Gemfile
COPY Gemfile /app/
RUN /jruby/bin/jruby -S bundle install --system

# Starting the app
COPY start_server.sh /start_server.sh
RUN chmod +x /start_server.sh
CMD '/start_server.sh'
