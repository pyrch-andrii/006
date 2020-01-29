Vagrant.configure("2") do |config|

# Virtual Settings Machine 1
config.vm.define "hw1_64" do |vm1| 
 vm1.vm.box = "ubuntu/bionic64"
 vm1.vm.box_check_update = false
 vm1.vm.network "forwarded_port", guest: 80, host: 8080
 vm1.vm.hostname = "bionic64test" 

# Provider Settings Machine 1
config.vm.provider "virtualbox" do |vb|
 vb.name = "hw1_bionic64"
 vb.gui = false
 vb.memory = "1024"
end


# Provision Settings Machine 1
 vm1.vm.provision "shell", inline: <<-SHELL
 apt-get update
 apt-get install -y apache2
 SHELL

 vm1.vm.provision "shell", run: "always", inline: <<-SHELL
 echo "HOMEWORK 1 Apache web server test"
 SHELL
end


# Virtual Settings Machine 2
config.vm.define "hw1_centos7" do |vm2|
 vm2.vm.box = "centos/7"
 vm2.vm.box_check_update = false
 vm2.vm.hostname = "centos7test" 

# Provider Settings Machine 2
 vm2.vm.provider "virtualbox" do |vb|
 vb.name = "hw1_centos7"
 vb.gui = false
 vb.memory = "1024"
end
 
end

end


