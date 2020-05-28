Máquina: validation
-------------------

Procedimentos:
--------------

* **Projeto**: http://gauntlt.org/

* **Like Suse**
  ```bash
  bash <<EOF
  zypper -n install ruby ruby-devel python python2-pip nmap go libcurl-devel libxslt libxslt-devel git
  zypper -n install --type pattern devel_basis
  gem install rake gauntlt
  alias gauntlt=gauntlt.ruby2.6
  git clone https://github.com/gauntlt/gauntlt.git
  curl -fsSL https://raw.githubusercontent.com/yesquines/DevSecOps/Aula06/install_gauntlt_deps.sh | bash 
  EOF
  ```

* Like Debian
  ```bash
  apt install ruby rubygems ruby-dev dirb python nmap gem zlib1g-dev zlib1g build-essential -y
  gem install rake gauntlt
  git clone https://github.com/gauntlt/gauntlt.git
  export DIRB_WORDLISTS=/root/dirb/wordlists/
  ```

* Like RedHat - Fedora
  ```bash
  dnf install wget ruby rubygems ruby-devel python nmap gem -y
  dnf groupinstall "Development Tools" "Development Libraries" -y
  gem install rake gauntlt
  git clone https://github.com/gauntlt/gauntlt.git
  ```
