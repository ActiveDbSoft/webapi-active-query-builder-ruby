#!/bin/sh

gem build -q ../webapi-active-query-builder.gemspec
sudo gem install -q webapi-active-query-builder-*.gem
