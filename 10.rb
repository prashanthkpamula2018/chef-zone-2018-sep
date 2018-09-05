
puts "url = #{node['httpd']['default']['url']}"

package ['httpd', 'httpd-devel', 'gcc'] do
  action :install
end


remote_file "#{node['httpd']['default']['tarfile']}" do
    source "#{node['httpd']['default']['mod_jk_url']}"
    action :create
end


execute 'extracting tar file' do
    command "tar xf #{node['httpd']['default']['tarfile']}"
    cwd "#{node['httpd']['default']['LOC']}"  # change directory and untar
    action :run  # this is for cwd
end


execute 'compiling mod_jk' do
    command './configure --with-apxs=/usr/bin/apxs && make && make install'
    cwd "#{node['httpd']['default']['mod_jk_tar_dir']}/native" 
    action :run  # this is for cwd
end



%w(modjk.conf workers.properties).each do |file|
     cookbook_file "/etc/httpd/conf.d/#{file}" do
        source "#{file}"
        action :create
     end
end


service 'staring web service' do
  service_name 'httpd'
  action [ :restart, :enable ]
end
