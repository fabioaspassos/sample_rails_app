FROM ruby:2.7.2
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client yarn
RUN gem install bundler -v '2.2.15'
RUN gem install debug