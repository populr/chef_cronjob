#
# Cookbook Name:: chef_cronjob
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

cron 'cronjobs.rake' do
  user 'deploy'
  minute '*/5'
  command "cd /srv/www/touchstream/current && NEWRELIC_DISPATCHER='rake' GEM_PATH='/home/deploy/.bundler/touchstream/ruby/2.1.0/gems' /usr/local/bin/bundle exec rake cron"
end
