Máquina: automation
-------------------

Procedimentos:
--------------

* **Projeto**: https://www.terraform.io/ - Baixar a última versão
* **Instalação:**
  ```bash
  export TERRAFORM_VERSION=0.12.20 
  bash <<EOF
  apt install wget unzip -y
  wget -c https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
  unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin/
  EOF
  ```
