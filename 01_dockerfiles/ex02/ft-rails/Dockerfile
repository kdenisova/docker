# 02. You are going to create your first Dockerfile to containerize Rails applications. That’s a special configuration: this particular Dockerfile will be generic, and called in another Dockerfile, that will look something like this:
# FROM        ft-rails:on-build
# EXPOSE 3000
# CMD         ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
# Your generic container should install, via a ruby container, all the necessary depen- dencies and gems, then copy your rails application in the /opt/app folder of your container. Docker has to install the approtiate gems when it builds, but also launch the migrations and the db population for your application. The child Dockerfile should launch the rails server (see example below). If you don’t know what commands to use, it’s high time to look at the Ruby on Rails documentation.

FROM ruby:2.6.3

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y sqlite3
RUN apt-get install -y curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
RUN gem install rails
RUN gem install bundler

ONBUILD EXPOSE 3000
ONBUILD WORKDIR /opt/app
ONBUILD COPY helloworld .
ONBUILD RUN bundle install
ONBUILD RUN yarn install --check-files
ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed