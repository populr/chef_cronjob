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
  command "/bin/bash -l -c 'source ~/.bash_profile && cd /srv/www/touchstream/current && NEWRELIC_DISPATCHER=rake /usr/local/bin/bundle exec rake cron' 2>&1"
end
