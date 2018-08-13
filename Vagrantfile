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
        #systemctl enable docker
        #systemctl start docker        
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

  config.vm.define "bdd" do |bdd|
    bdd.vm.network "private_network", ip: "192.168.33.15"
    bdd.vm.provider "virtualbox" do |vb|
     vb.memory = 1024
    end
    bdd.vm.provision "shell", inline: <<-SHELL
        apt clean all
        apt update && apt install ruby  rubygems -y
        gem install gauntlt
    SHELL
  end
  
  config.vm.define "vault" do |vault|
    vault.vm.network "private_network", ip: "192.168.33.16"
    vault.vm.provider "virtualbox" do |vb|
     vb.memory = 512
    end
    vault.vm.provision "shell", inline: <<-SHELL
        wget https://releases.hashicorp.com/vault/0.10.4/vault_0.10.4_linux_amd64.zip
        apt install unzip -y
        unzip vault_0.10.4_linux_amd64.zip
    SHELL
  end
  
    config.vm.define "audit" do |audit|
    audit.vm.box = "fedora/28-cloud-base"
    audit.vm.network "private_network", ip: "192.168.33.17"
    audit.vm.provider "virtualbox" do |vb|
     vb.memory = 2048
     vb.gui = true
    end
    audit.vm.provision "shell", inline: <<-SHELL
        dnf clean all
        dnf install scap-workbench -y
        dnf install scap-security-guide -y
        dnf group install "Xfce Desktop" -y
    SHELL
  end

end


