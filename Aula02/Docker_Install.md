Máquina: automation
-------------------

Procedimentos:
--------------

* **Short Installation (All Systems)**
```bash
curl -fsSL https://get.docker.com | bash
```

* Long Installation*
   - Like RedHat
   ```bash
   yum install -y yum-utils device-mapper-persistent-data lvm2
   yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
   yum-config-manager --enable docker-ce-edge
   yum install docker-ce epel-release git -y
   systemctl enable docker
   systemctl start docker
   ```

   - Like Debian
   ```bash
   apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
   curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
   add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
   apt-get update ; apt-get install docker-ce
   ```
