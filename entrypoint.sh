#!/bin/bash

rm -f tmp/pids/server.pid
export CONTRAST_CONFIG_PATH=/myapp/contrast_security.yaml
export CONTRAST__APPLICATION__NAME=RailsGoatDocker

bundle exec rails s -p 3000 -b '0.0.0.0'
