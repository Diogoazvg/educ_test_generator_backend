#!/bin/bash

echo "
********************************************************************************
*** Running Educ Generator Specs
********************************************************************************"

echo ">>> Running create and migrate DB"
bundle exec rails environment db:create db:migrate

echo ">>> Running prepare tests"
bundle exec rails db:test:prepare

echo ">>> Running Rspec"
bundle exec rspec spec --force-color
