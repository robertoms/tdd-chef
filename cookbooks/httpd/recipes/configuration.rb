#
# Cookbook Name:: httpd
# Recipe:: configuration
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
file node['httpd']['index_name'] do
  content '<h1> Welcome Home!</h1>'
end
