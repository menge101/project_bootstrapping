#!/bin/bash
functions_for_bootstrapper
generic_bootstrapper
ruby_bootstrapper
touch config.ru
echo "PROJECT_ROOT = File.expand_path(File.join(__FILE__, '..'))" >> config.ru
echo "require 'app.rb'" >> config.ru
touch app.rb
touch Dockerfile
echo "FROM ruby:2.3.1-alpine" >> Dockerfile
echo "" >> Dockerfile
echo "RUN mkdir -p /srv" >> Dockerfile
echo "WORKDIR /srv" >> Dockerfile
echo "COPY Gemfile /srv/" >> Dockerfile
echo "COPY Gemfile.lock /srv/" >> Dockerfile
echo "RUN bundle install" >> Dockerfile
echo "COPY config.ru /srv/" >> Dockerfile
echo "COPY app.rb /srv/" >> Dockerfile
echo "EXPOSE 9292" >> Dockerfile
echo "" >> Dockerfile
echo 'ENTRYPOINT ["rackup"]' >> Dockerfile