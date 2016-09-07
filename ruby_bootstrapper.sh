#!/bin/bash
functions_for_bootstrapper
generic_bootstrapper
touch Gemfile
echo "source 'https://rubygems.org'" > Gemfile
echo "ruby '2.3.1'" >> Gemfile
echo "" >> Gemfile
echo "gem 'rake'" >> Gemfile
touch .ruby-version
echo 'ruby-2.3.1' > .ruby-version
