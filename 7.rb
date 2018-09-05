

service 'staring web service' do
  service_name 'httpd'  
  action [ :restart, :enable ]
end


#ps -ef |grep httpd