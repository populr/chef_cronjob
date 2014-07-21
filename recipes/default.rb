#
# Cookbook Name:: chef_cronjob
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

cron 'cronjobs.rake' do
  minute '*/5'
  command "cd /srv/www/touchstream/current && NEWRELIC_DISPATCHER='rake' bundle exec rake cron"
end
