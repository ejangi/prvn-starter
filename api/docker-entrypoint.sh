#!/usr/bin/env bash

rm -f /usr/src/app/tmp/pids/server.pid && bundle exec rake db:setup_or_migrate && bundle exec rails s -p 3000 -b '0.0.0.0'