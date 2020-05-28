Máquina: testing
----------------

Procedimentos:
--------------

* **Instalação:**
  ```bash
  bash <<EOF
  rpm -Uvh https://yum.postgresql.org/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
  yum install postgresql10-server postgresql10 -y
  EOF
  ```

* **Inicializando BD:**
  ```bash
  bash <<EOF
  /usr/pgsql-10/bin/postgresql-10-setup initdb
  systemctl start postgresql-10
  EOF
  ```

* **Configurando Usuário e Database**
  ```
  su - postgres
  bash <<EOF
  psql -c "create user kong with password '4linux';"
  psql -c "create database kong owner kong;"
  EOF
  ```
