# apt isntall linux package
apt update && apt install -y git python3 python3-pip tmux || echo "apt error !"

# install python module
pip3 install tensorflow keras opencv-python pandas matlab sklearn && echo "pip3 install ok" || echo "pip3 error"

# isntall vscode server 
wget https://github.com/cdr/code-server/releases/download/1.1119-vsc1.33.1/code-server1.1119-vsc1.33.1-linux-x64.tar.gz && tar xvf code-server1.1119-vsc1.33.1-linux-x64.tar.gz || echo "download error!"

# download vscode plugin
git clone https://github.com/William-Mou/ENV.git && mkdir -p $HOME 
cp -r /home/ENV/VScode/extensions $HOME

# run coder-server
code-server1.1119-vsc1.33.1-linux-x64/code-server ./$HOME --extensions-dir="./$HOME/extensions/" --password="root"  && echo "done" || echo "run server error"
