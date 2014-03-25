# Abrir o Git Bash (ou um shell equivalente)
cd Documents/devsoft

# Verificar o status da máquina virtual do Vagrant
vagrant status

# Se o status for algo como "poweroff", "aborted", "not created", executar:
vagrant up
# E, em seguida:
vagrant ssh

# Se o status for "running", executar:
vagrant ssh

# Os próximos comandos devem ser executados dentro da VM!

# Ir até o diretório compartilhado entre a VM e o Windows
cd /home/vagrant/dev

# Clonar o seu repositório DevSoft2014-01
git clone http://github.com/username/DevSoft2014-01.git

# Ir até a pasta criada pelo git
cd DevSoft2014-01

# Configurar Git, caso isso já não tenha sido feito anteriormente
git config --global user.name "Seu Nome Completo"
git config --global user.email "email-de-cadastro-no-github@example.com"

# Criar diretório para essa aula
mkdir "Aula3" && cd "Aula3"

# Fazer os exercícios aqui!
