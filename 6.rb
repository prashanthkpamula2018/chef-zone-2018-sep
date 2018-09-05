

# setting up

%w(modjk.conf workers.properties).each do | file |
     cookbook_file "/etc/httpd/conf.d/#{file}" do
        source "#{file}"
        action :create
      end
end


    # %w ---- whitespace array,calling multiple files
    # file ---- is a variable in loop


    


#cookbook_file '/etc/httpd/conf.d/mod_jk.conf' do
#    source 'mod_jk.conf'
#    action :create
#  end