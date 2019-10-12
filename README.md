============== *DevSecOps* ==============
=========================================

INTRODUÇÃO
---------
Repositório para armazenamento de arquivos, links e procedimentos do curso de DevSecOps

EMENTA
------
- Cada Branch é referente uma aula e contém os procedimentos básicos da Aula em questão.

Branchs
-------
* **MASTER** - Contempla os arquivos para criação da Infraestrutura do Curso.

* **Aula01** - Contempla a aula teória referente Segurança da Informação, DevOps e DevSecOps.
  - *Conteúdo geral*: Links de Manifestos, Normas, Certificações e etc

* **Aula02** - Contempla a Aula Prática de SonarQube
  - *Conteúdo geral*: Procedimento de Instalação do Jenkins, Docker e SonarQube, Links de Repositórios Utilizados em Aula.

* **Aula03** - Contempla a Aula Prática de OWASP ZAP
  - *Conteúdo geral*: Procedimento de Instalação do OWASP ZAP, Procedimento de Instalação de Ambiente Gráfico, Procedimento para criação de Container para testes e Procedimentos de Instalação da Ferramenta Arachni(Conteúdo Adicional)

* **Aula04** - Contempla a Aula Prática de ELK
  - *Conteúdo geral*: Procedimento de Instalação da Stack ELK e do LogStash(separadamente)

* **Aula05** - Contempla a Aula Prática de Ansible, Ansible-Vault e AWX
  - *Conteúdo geral*: Procedimento de Instalação do Ansible e AWX

* **Aula06** - Contempla a Aula Prática de Ansible Hardening e Gauntlt
  - *Conteúdo geral*: Links de Hardenings Conhecidos, Procedimento de Instalação do Gauntlt e do Ansible-Hardening

* **Aula07** - Contempla a Aula Prática de Gerrit e Docker Clair
  - *Conteúdo geral*: Procedimento de Instalação do Gerrit e Docker Clair

* **Aula08** - Contempla a Aula Prática de AWS e GCP
  - *Contéudo geral*: Arquivos para realizar procedimentos de Deploy com IaC na Cloud

* **Aula09** - Contempla a Aula Prática de Vault / OpenScap
  - *Contéudo geral*: Procedimento de Instalação do Vault e OpenScap, Instalação e Configuração do MySQL e Arquivos de Configurações.

* **Aula10** - Contempla a Aula Prática de Kong e ChatOps
  - *Contéudo geral*: Procedimento de Instalação do Kong, PostgreSQL e Ferramentas para utilização do ChatOps e Arquivos de Configuração.

VAGRANT
-------
Ferramenta para criar e gerenciar ambientes virtualizados (baseado em inumeros providers) com foco em automação.

Comandos     | Descrição
------------ |------------------
vagrant init| Gera o VagrantFile
vagrant box add <box> | Baixar imagem do sistema
vagrant box status    | Verificar o status dos boxes criados
vagrant up            | Cria/Liga as VMs baseado no VagrantFile
vagrant up --provision| Sobe a máquina com as alterações feitas no VagrantFile
vagrant provision     | Provisiona mudanças logicas nas VMs
vagrant status | Verifica se VM estão ativas ou não.
vagrant ssh 'vm'  | Acessa a VM
vagrant ssh 'vm' -c 'comando' | Executa comando via ssh
vagrant reload 'vm' | Reinicia a VM
vagrant halt  | Desliga as VMs
