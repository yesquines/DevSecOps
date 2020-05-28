
Máquina: testing
----------------

Procedimentos:
--------------

* **Like RedHat**
```bash
bash <<EOF
yum install wget java unzip -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
EOF
```

* Like Debian
```bash
apt install openjdk-8-jre unzip -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
apt update ; apt install jenkins -y
```
