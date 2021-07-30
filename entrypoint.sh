#!/bin/bash

rm -f tmp/pids/server.pid
export CONTRAST_CONFIG_PATH=/myapp/contrast_security.yaml
export CONTRAST__APPLICATION__NAME=RailsGoatDocker
export CONTRAST__AGENT__LOGGER__STDOUT=true
export CONTRAST__AGENT__SERVICE_LOGGER__STDOUT=true
export CONTRAST__ASSESS__ENABLE=true
export CONTRAST__PROTECT__ENABLE=false

bundle exec rails s -p 3000 -b '0.0.0.0'
