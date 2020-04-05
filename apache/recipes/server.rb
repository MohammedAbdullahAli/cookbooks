#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.
#
 package 'httpd' do
   action :install
 end

remote_file '/var/www/html/assalam.jpg' do
   source 'https://i.pinimg.com/originals/7d/83/3e/7d833e83f8342cf37a8770553259545d.jpg'
end


#cookbook_file '/var/www/html/index.html' do
#  source 'index.html'
#end


 template '/var/www/html/index.html' do
   source 'index.html.erb'
   action :create
 end

service 'httpd' do
   action [ :enable, :start ]
end       
