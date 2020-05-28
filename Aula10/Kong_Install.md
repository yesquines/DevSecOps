Máquina: testing
----------------

Procedimento:
-------------

* **Projeto:** https://konghq.com/
* **Instalação**:
  ```bash
  bash <<EOF
  wget https://bintray.com/kong/kong-rpm/rpm -O /etc/yum.repos.d/bintray-kong-kong-rpm.repo
  export major_version=`grep -oE '[0-9]+\.[0-9]+' /etc/redhat-release | cut -d "." -f1`
  sed -i -e 's/baseurl.*/&\/centos\/'$major_version''/' /etc/yum.repos.d/bintray-kong-kong-rpm.repo
  yum install kong -y
  EOF
  ```
