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
    docker.vm.provider "virtualbox" do |vb|
     vb.memory = 2048
    end
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
  
  config.vm.define "docker-centos" do |docker|
    docker.vm.box = "centos/7"
    docker.vm.network "private_network", ip: "192.168.33.14"
    docker.vm.provider "virtualbox" do |vb|
     vb.memory = 2048
    end
    docker.vm.provision "shell", inline: <<-SHELL
        yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-selinux docker-engine-selinux docker-engine -y
        yum install -y yum-utils device-mapper-persistent-data lvm2
        yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
        yum-config-manager --enable docker-ce-edge
        yum install docker-ce epel-release git -y
        systemctl enable docker
        systemctl start docker        
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
  
  config.vm.define "elk" do |elk|
    elk.vm.network "private_network", ip: "192.168.33.13"
    elk.vm.provider "virtualbox" do |vb|
     vb.memory = 2048
    end
    elk.vm.provision "shell", inline: <<-SHELL
        apt clean all -y
        wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add - 
        apt update && apt-get install apt-transport-https openjdk-8-jre -y
        echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-6.x.list
        apt update && apt install -y kibana logstash elasticsearch
    SHELL
  end

end
