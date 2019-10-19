# -*- mode: ruby -*-
# vi: set ft=ruby :

REQUIRED_PLUGINS        = %w(vagrant-vbguest)

plugins_to_install = REQUIRED_PLUGINS.select { |plugin| not Vagrant.has_plugin? plugin }
if not plugins_to_install.empty?
  puts "Installing required plugins: #{plugins_to_install.join(' ')}"
  if system "vagrant plugin install #{plugins_to_install.join(' ')}"
    exec "vagrant #{ARGV.join(' ')}"
  else
    abort "Installation of one or more plugins has failed. Aborting. Please read the Bike Index README."
  end
end


Vagrant.configure("2") do |config|
  # config.vm.box = "base"
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1536"]
  end

  # Forward the Rails server default port to the host
  config.vm.hostname = 'localhost'

  config.vm.network :forwarded_port, guest: 3000, host: 3030
  config.vm.network 'private_network', ip: '192.168.20.51'

  config.vm.synced_folder './code', '/home/vagrant/code', :type => 'nfs'

  config.vm.provision "chef_solo" do |chef|

    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

    chef.arguments = "--chef-license accept"

    # chef.add_recipe 'ruby_build'
    chef.add_recipe 'common'
  #   # chef.add_recipe 'ruby_rbenv::user_install'
  #   # chef.add_recipe 'ruby_rbenv::user'
  #   # chef.add_recipe 'ruby_rbenv::system_install'

  end

end
