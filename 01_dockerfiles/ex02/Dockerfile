# 02. You are going to create your first Dockerfile to containerize Rails applications. That’s a special configuration: this particular Dockerfile will be generic, and called in another Dockerfile, that will look something like this:
# FROM        ft-rails:on-build
# EXPOSE 3000
# CMD         ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
# Your generic container should install, via a ruby container, all the necessary depen- dencies and gems, then copy your rails application in the /opt/app folder of your container. Docker has to install the approtiate gems when it builds, but also launch the migrations and the db population for your application. The child Dockerfile should launch the rails server (see example below). If you don’t know what commands to use, it’s high time to look at the Ruby on Rails documentation.

FROM ruby:2.6.3

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y sqlite3
RUN gem install rails

EXPOSE 3000
COPY /app /opt/app
WORKDIR /opt/app
ONBUILD RUN bundle install
ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed
#RUN apt-get install -y yarn

#RUN gem install bundler
#RUN gem install yarn
#RUN rails webpacker:install

#CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
#CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

# docker build -t ex02 .
# docker run --rm -p 3000:3000 ex02