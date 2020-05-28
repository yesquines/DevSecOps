Máquina: testing
----------------

Procedimentos
-------------

* **Documentação:** https://www.zaproxy.org/
* **Projeto:** https://github.com/zaproxy/zaproxy
* **Instalação:**
   * Acessar: https://www.zaproxy.org/download/
   * Baixar a última versão do ZAP Standard - Linux Installer:
     ```bash
     export ZAP_VERSION=2.9.0
     bash <<EOF
     wget -c https://github.com/zaproxy/zaproxy/releases/download/v${ZAP_VERSION}/ZAP_${ZAP_VERSION//./_}_unix.sh
     EOF
     ```
