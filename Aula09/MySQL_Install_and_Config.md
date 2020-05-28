Máquina: validation
-------------------

Procedimentos:
--------------

* **INSTALAÇÃO**
  ```bash
  zypper -n install mariadb
  ```

* **CONFIGURAÇÃO:**
  - Editar o arquivo **/etc/my.cnf**: `bind-address = 0.0.0.0`
  -  Acessar banco: 
     ```
     systemctl start mariadb
     mysql -u root
     ```
  -  Crie o usuário no MySQL:
     ```mysql
     CREATE USER '4linux'@'localhost' IDENTIFIED BY '4linux';
     GRANT ALL PRIVILEGES ON *.* TO '4linux'@'localhost' WITH GRANT OPTION;
     CREATE USER '4linux'@'%' IDENTIFIED BY '4linux';
     GRANT ALL PRIVILEGES ON *.* TO '4linux'@'%' WITH GRANT OPTION;
     ```
