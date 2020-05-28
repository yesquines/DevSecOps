Máquina: validation
-------------------

Procedimentos:
--------------

* **Projeto:** https://www.gerritcodereview.com/
  - Acessar Projeto e baixar a última versão

* **Like Suse**
  ```bash
  export GERRIT_VERSION=3.1.2
  bash <<EOF
  zypper -n install java-1_8_0-openjdk java-1_8_0-openjdk-headless javapackages-tools
  wget https://gerrit-releases.storage.googleapis.com/gerrit-${GERRIT_VERSION}.war
  java -jar gerrit*.war init --batch --dev -d /opt/gerrit
  EOF
  ```
  
* Like Debian
  ```bash
  apt install openjdk-8-jre -y
  wget https://gerrit-releases.storage.googleapis.com/gerrit-<version>.war
  java -jar gerrit*.war init --batch --dev -d /opt/gerrit
  ```
