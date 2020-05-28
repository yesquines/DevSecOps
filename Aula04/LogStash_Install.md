Máquina: validation
-------------------

Procedimento:
-------------

* **Acessar**: https://www.elastic.co/pt/downloads/logstash
  - Baixa a última versão do Pacote de Instalação

* **Like Suse**
   ```bash
   export LOGSTASH_VERSION=7.5.2
   bash <<EOF
   zypper -n install java-1_8_0-openjdk java-1_8_0-openjdk-headless javapackages-tools wget apache2
   wget https://artifacts.elastic.co/downloads/logstash/logstash-${LOGSTASH_VERSION}.rpm
   rpm -ivh logstash-${LOGSTASH_VERSION}.rpm
   systemctl start apache2
   EOF
   ```

* Like Debian
   ```bash
   export LOGSTASH_VERSION=7.5.2
   apt-get update ; apt-get install apt-transport-https openjdk-11-jre apache2 -y
   wget https://artifacts.elastic.co/downloads/logstash/logstash-${LOGSTASH_VERSION}.deb
   dpkg -i logstash-${LOGSTASH_VERSION}.deb
   ```
