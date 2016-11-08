template '/etc/apache2/sites-enabled/AAR-apache.conf'

template '/etc/apache2/sites-enabled/AAR-apache.conf' do
  action :create
end

template '/etc/apache2/sites-enabled/AAR-apache.conf' do
  user 'root'
  group 'root'
  backup false
end

template 'specifying the identity attribute' do
  path '/etc/apache2/sites-enabled/AAR-apache.conf'
end
