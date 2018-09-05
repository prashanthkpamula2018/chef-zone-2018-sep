
# Downloading a mod jk connector file for tomcat from web

remote_file '/opt/tomcat-connectors-1.2.42-src.tar.gz' do
    source 'http://redrockdigimark.com/apachemirror/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.42-src.tar.gz'
    action :create
  end