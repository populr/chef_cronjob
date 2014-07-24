#
# Cookbook Name:: chef_cronjob
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

node[:deploy].each do |application, deploy|
  cron 'cronjobs_rake' do
    minute '*/5'
    command "cd #{deploy[:deploy_to]}/current && RAILS_ENV=#{deploy[:rails_env]} NEWRELIC_DISPATCHER='rake' PATH='/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/bin:/opt/aws/bin:/opt/aws/bin' bundle exec rake cron"
  end
end
