Máquina: automation
-------------------

Procedimentos:
--------------

* **Projeto AWX:** https://github.com/ansible/awx

* **Dependencias**
  ```bash
  export AWX_VERSION=9.1.1
  ```
  ```bash
  bash <<EOF
  docker pull memcached:alpine
  docker pull postgres:10
  docker pull ansible/awx_rabbitmq:3.7.4
  docker pull ansible/awx_task:${AWX_VERSION}
  docker pull ansible/awx_web:${AWX_VERSION}
  EOF
  ```

* **Instalação:**
  - Acessar https://github.com/ansible/awx/releases e baixar a versão mais atual em formato tar.gz
    ```bash
    bash <<EOF
    wget -c https://github.com/ansible/awx/archive/${AWX_VERSION}.tar.gz
    tar xf ${AWX_VERSION}.tar.gz
    EOF
    ```
