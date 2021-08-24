##  Comandos Debian  ##

#Ajuda
man

echo # imprime algo
echo "Livro de Linux" | tr '[a-z]' '[A-Z]'

#Terminal
clear (Ctrl + l)
reset
<TAB>
<Ctrl>+<C> #interromper #útil para sair de laços infinitos ou travamentos
<Ctrl>+<D> #sair do terminal
history
history -cw
↑ ou ↓ #histórico de Comandos
| #Pipe, filtra a saída do terminal. Útil para combinar diversos comandos.
    #Ex: ls | grep "Do"
nano #Editor de textos
whoami #Quem sou eu?

#Pastas e Arquivos
pwd #Onde estou?
#Listagem de pastas e arquivos
ls
ls -la
#Navegar por pastas
cd
cd ..
#Criar pasta
mkdir
#Remove um arquivo
rm
rm -r #Remove um diretório
### Você nunca deve usar o comando rm junto com o sudo no seguinte formato: 
sudo rm -R /, rm -f / * ou sudo rm -r /
# Apaga todos os arquivos e dados no diretório raiz e em todos os volumes montados. ###
#Copiar Arquivos e Pastas
cp arg1 arg2
#Mover Arquivos e Pastas (Também serve para renomear)
mv arg1 arg2
#Ler Arquivos de Texto
cat
more
#Busca de textos
grep "Nome" arquivo.txt
    #Ex: ls | grep "Do"
zip -r arquivo.zip arquivo	# Compacta um arquivo ou diretório para o formato .zip.
unzip arquivo.zip	# Descompacta um arquivo .zip.

#Salva o conteúdo de “Livro Shell” no “arquivo”.
echo "Livro Shell" > arquivo
#Salva o conteúdo de “Livro Shell” no final do “arquivo”. Não apaga o conteúdo pre existente, apenas adiciona ao final.
echo "Livro Shell" >> arquivo
#“nome” recebe o valor de “Hugo” e exibe o valor da variável.
nome="Hugo" ; echo $nome

#Atualizar como Root
apt update && apt upgrade && apt dist-upgrade

#Instalar e Remover pacotes (apt-get)

#apt-get (Dicas)
#Baixa só o pacote
apt-get install programa -d
#Simula a instalação
apt-get install programa -s
#Respondendo sim ao programa
apt-get install programa -y 
#Corrigir possíveis pacotes quebrados que são resultado de uma queda de energia durante uma instalação ou a instalação de um programa instável que possa ter causado problemas.
apt-get install -f

# Sistema
# Monitora a frequência da cpu
watch lscpu
# Monitora a temperatura da cpu
watch sensors
# Informações
lsb_release -a
lsb_release -irs
cat /etc/issue
cat /etc/*release # Detalhado
cat /etc/apt/sources.list | more # Lista de Atualizações de código
uname -r # = kernel
uname -a # = Detalhes (64bits)
inxi -F
inxi -v7
lspci
lsusb
htop
gotop
kill	# Mata processos através.
kill -9	# Mata processos de forma forçada.
killall	# Mata o aplicativo e todos processos ligados a ele.
killall -9	# Mata o aplicativo de forma forçada e todos processos ligados a ele. Apaga o que já existe.
glances
screenfetch
neofetch
# RAM
free -h
# HD
df
#ou
df -h

# Ligar/Desligar
shutdown
shutdown -r	#Reinicia
shutdown -h +30	#Desliga o sistema em 30 min
reboot #Reinicia

#Usuários
adduser bruno	# Cria o usuário “bruno”.
adduser bruno lp	# Adiciona o usuário “bruno” ao grupo “lp”.
deluser –-remove-home bruno	# Remove o usuário “bruno” e o seu diretório $HOME.

REDE
ip a # Exibe as configurações de rede
ifconfig # Exibe as configurações de rede
wget	Baixa arquivos da internet.
wget -c	Baixa arquivos da internet com “resume”, ou seja, recomeçando de onde parou.
wget --limit-rate=200k	Baixa arquivos da internet limitando a velocidade de download a “200k”.
wget -m -p -k -P Diretório Site	Baixa um site completo.

# Texto avançado
figlet Hugo Nathan
toilet Hugo Nathan
cmatrix
bb # render de texto

Scripts # .sh #
chmod +x <file-name.sh> # Torna o arquivo executável
./<file-name.sh> # Executa o arquivo

######################
#     Meus Alias     #
######################

# Meus Alias # Bash.src (Falta as infos ao abrir o terminal)
alias updateall='apt-get update && apt-get upgrade && apt-get dist-upgrade' # hugo and root

######################
#       Fontes       #
######################

https://milq.github.io/useful-terminal-commands-ubuntu-debian/
https://www.debian.org/doc/manuals/user/ch6.html
https://wiki.debian.org/ShellCommands

https://www.livrosdelinux.com.br/tabela-de-comandos/

