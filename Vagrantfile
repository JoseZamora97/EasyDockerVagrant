
Vagrant.configure("2") do |config|

  # Base box.
  config.vm.box = "ubuntu/bionic64"

  # Share the app folder.
  config.vm.synced_folder "app", "/srv/app"

  # Port forwarding.
  config.vm.network "forwarded_port", guest: 8443, host: 8080   # Application
  config.vm.network "forwarded_port", guest: 5672, host: 5672   # Rabbit-Broker
  config.vm.network "forwarded_port", guest: 15672, host: 15672 # Rabbit-Dashboard
  config.vm.network "forwarded_port", guest: 3000, host: 3000   # Rabbit-api
  config.vm.network "forwarded_port", guest: 3308, host: 3308   # MySQL

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end

  config.vm.provision "shell", path: 'provision.sh'

end
