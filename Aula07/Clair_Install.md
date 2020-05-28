Máquina: automation
-------------------

Procedimentos:
--------------

* **Projeto**: https://github.com/coreos/clair
* **Container**:
  ```bash
  docker run -p 5432:5432 -d --name db arminc/clair-db
  docker run -p 6060:6060 --link db:postgres -d --name clair arminc/clair-local-scan
  ```

* **Scanner:**
    - Acessar: https://github.com/arminc/clair-scanner/releases
    - Baixar última versão do **clair-scanner_linux_amd64**
      ```bash
      export CLAIR_VERSION=v12
      bash <<EOF
      wget -c https://github.com/arminc/clair-scanner/releases/download/${CLAIR_VERSION}/clair-scanner_linux_amd64 -O /usr/bin/clair
      chmod +x /usr/bin/clair
      EOF
      ```
