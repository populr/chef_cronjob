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
  command <<BASH
/bin/bash -l -c "source /home/deploy/.bash_profile && cd /srv/www/touchstream/current && NEWRELIC_DISPATCHER='rake' bundle exec rake cron" 2>&1
BASH
end
