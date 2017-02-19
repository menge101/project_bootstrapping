#!/bin/bash
generic_bootstrapper
touch Gemfile
echo "source 'https://rubygems.org'" > Gemfile
echo "ruby '2.4.0'" >> Gemfile
echo "" >> Gemfile
echo "gem 'rake'" >> Gemfile
touch .ruby-version
echo 'ruby-2.4.0' > .ruby-version
