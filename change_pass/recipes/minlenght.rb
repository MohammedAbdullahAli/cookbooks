#
# Cookbook Name:: change_pass
# Recipe:: minlenght
#
# Copyright (c) 2020 The Authors, All Rights Reserved.


  execute 'run a script' do
    command <<-EOH
    user 'root'
    authconfig --passminlen=15 --update
    EOH
  end
