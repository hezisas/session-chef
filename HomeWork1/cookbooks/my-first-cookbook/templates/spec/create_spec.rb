require 'chefspec'

describe 'template::create' do
  let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

  it 'creates a template with the default action' do
    expect(chef_run).to create_template('/etc/apache2/sites-enabled/AAR-apache.conf')
    expect(chef_run).to_not create_template('/etc/apache2/sites-enabled/AAR-apache.conf')
  end
end
