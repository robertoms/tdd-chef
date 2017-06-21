#
# Cookbook Name:: httpd
# Recipe:: service
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
service 'httpd' do
  action [:enable, :start]
end
