# unziping the tar file

execute 'extracting tar file' do
    command 'tar xf apache-tomcat-9.0.4.tar.gz'
    cwd '/opt'  # change directory and untar
    action :run  # this is for cwd
end