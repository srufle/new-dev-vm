#!/bin/bash
sudo apt-get install python3-distutils python3-apt python3-testresources -y
sudo apt-get install wget sshpass vim git bash-completion -y
sudo apt-get install openssh-server -y

rm -f "${HOME}/Downloads/get-pip.py"
wget -P "${HOME}/Downloads" https://bootstrap.pypa.io/get-pip.py
python3 "${HOME}/Downloads/get-pip.py"

export PATH=${HOME}/.local/bin:${PATH}
pip --version

pip install paramiko
pip install ansible-core
pip install ansible
pip install pywinrm

# https://pypi.org/project/argcomplete/#activating-global-completion
pip install argcomplete
activate-global-python-argcomplete --user
sudo ln -s $HOME/.bash_completion.d/python-argcomplete /etc/bash_completion.d/python-argcomplete


sudo apt-get install open-vm-tools open-vm-tools-desktop open-vm-tools-dev  -y
sudo apt-get install xrdp -y
sudo systemctl enable --now xrdp

sudo  apt-get install restic
restic self-update
# ansible-vault - look in lastpass for password
# /tmp/vault.pass