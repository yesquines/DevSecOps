# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  # config.vm.box_check_update = false
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.network "private_network", ip: "192.168.33.10"
    jenkins.vm.provision "shell", inline: <<-SHELL
        apt update
        wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
        echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
        apt-get update
        apt install openjdk-8-jre -y
        apt-get install jenkins -y --allow-unauthenticated
    SHELL
  end

  config.vm.define "docker" do |docker|
    docker.vm.network "private_network", ip: "192.168.33.11"
    docker.vm.provision "shell", inline: <<-SHELL
        apt-get remove docker docker-engine docker.io -y
        apt-get update
        apt-get install apt-transport-https ca-certificates curl software-properties-common -y
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
        apt-key fingerprint 0EBFCD88
        add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
        apt-get update
        apt-get install docker-ce -y      
    SHELL
  end

  config.vm.define "zap" do |zap|
    zap.vm.network "private_network", ip: "192.168.33.12"
    zap.vm.provider "virtualbox" do |vb|
     vb.gui = true
    end

    zap.vm.provision "shell", inline: <<-SHELL
        apt-get update
        apt install xfce4 -y
        apt install openjdk-8-jre -y
        wget https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_unix.sh
        chmod +x ZAP_2_7_0_unix.sh
    SHELL

  end

end
