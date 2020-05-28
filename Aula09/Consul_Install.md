Máquina: logging 
----------------

Procedimentos:
--------------

* **Projeto:** https://www.consul.io/ - Baixar última versão
* **Instalação:**
  ```bash
  export CONSUL_VERSION=1.6.3
  bash <<EOF
  wget -c https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip
  unzip consul_${CONSUL_VERSION}_linux_amd64.zip -d /usr/local/bin/
  chmod +x /usr/local/bin/consul
  useradd -r consul
  mkdir -p /var/consul/data/vault
  chown -R consul:consul /var/consul/
  EOF
  ```
