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
  command %Q{
    sudo su deploy &&
    cd /srv/www/touchstream/current && 
    NEWRELIC_DISPATCHER="rake"
    PATH="/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/bin:/opt/aws/bin:/opt/aws/bin"
    bundle exec rake cron
  }
end
