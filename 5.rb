
# compiling mod_jk

execute 'compiling mod_jk' do
    command './configure --with-apxs=/usr/bin/apxs && make && make install'
    cwd '/opt/tomcat-connectors-1.2.42-src/native'  # change directory and untar
    action :run  # this is for cwd
end
