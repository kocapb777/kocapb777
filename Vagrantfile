# -*- mode: ruby -*-
# vi: set ft=ruby :
hostport = 5000
hosts = {
  "host0" => "192.168.33.10",
  "host1" => "192.168.33.11",
  "host2" => "192.168.33.12"
}

Vagrant.configure("2") do |config|
  hosts.each do |name, ip|
    config.vm.define name do |machine|
    
      machine.vm.box = "ubuntu/bionic64"
      machine.vm.hostname = "%s" % name
      machine.vm.network :private_network, ip: ip
      machine.vm.network "forwarded_port", guest: 5000, host: hostport += 1
      machine.vm.provider "virtualbox" do |v|
          v.name = name
          v.customize ["modifyvm", :id, "--memory", 1024]
    		
    machine.vm.provision "shell", path: "bootstrap.sh", keep_color: true 
          
         end
    machine.vm.provision "ansible" do |ansible|
     ansible.playbook = "setup.yml"     
      end
    end
  end
end


# Циклический запуск ВМ, сколько будет указано в hosts. Проброс портов на хостовой машине начинается от 5001 и далее на +1. Например: 192.168.33.10:5001, 192.168.33.11:5002 и т.д.
