Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/ubuntu2004"
    config.vm.hostname = "yolo-ecommerce"
    config.vm.network "private_network", type: "dhcp"
  
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y python3 python3-pip
    SHELL
  end
  