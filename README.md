### Setup files to setup python environment required for usr-graph code and vim inside a docker container

* sudo apt-get update
* sudo apt-get install git 
* cd ~ && mkdir git_repos && cd git_repos 
* git clone https://github.com/neeravkharche/setupfiles.git

* cd setupfiles
* sh setup.sh

### Run .bashrc to set alias for vim
* source .bashrc

### Open vim and run :PluginInstall

### If sklearn is not updated then use
* pip3 install sklearn --upgrade

sklearn version should be >=0.19.1

