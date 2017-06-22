case node['platform']
when 'ubuntu'
  default['httpd']['package_name'] = 'apache2'
  default['httpd']['service_name'] = 'apache2'
  default['httpd']['index_name'] = '/var/www/html/index.html'
else
  default['httpd']['package_name'] = 'httpd'
  default['httpd']['service_name'] = 'httpd'
  default['httpd']['index_name'] = '/var/www/html/index.html'
end
