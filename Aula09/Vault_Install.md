Máquina: logging - `[SERVER]`
---------------------------

Procedimentos:
--------------

* **Projeto:** https://www.vaultproject.io/ - Baixar última versão
* **Instalação:**
  ```bash
  export VAULT_VERSION=1.3.2
  bash <<EOF
  wget -c https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip
  apt install unzip
  unzip vault_${VAULT_VERSION}_linux_amd64.zip -d /usr/bin/
  chmod +x /usr/bin/vault
  EOF
  ```

Máquina: validation - `[CLIENT - SSH Helper]`
--------------------------------------------

Procedimentos:
--------------

* Acessar https://releases.hashicorp.com/vault-ssh-helper/ e Download da última versão
* **Instalação:**
  ```bash
  export SSHHELPER_VERSION=0.1.4
  bash <<EOF
  zypper -n install unzip
  wget -c https://releases.hashicorp.com/vault-ssh-helper/${SSHHELPER_VERSION}/vault-ssh-helper_${SSHHELPER_VERSION}_linux_amd64.zip
  unzip vault-ssh-helper_${SSHHELPER_VERSION}_linux_amd64.zip -d /usr/bin/
  chmod +x /usr/bin/vault-ssh-helper
  EOF
  ```
