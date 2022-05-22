# Keter Rice installation sh

# Check sudo

cd
cd ./keter-rice

# Packet instalation
sudo apt update &>/dev/null
sudo apt install neofetch bat -y &>/dev/null
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
sudo dpkg -i lsd_0.21.0_amd64.deb &>/dev/null
rm lsd_0.21.0_amd64.deb
    
# Fonts
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip &>/dev/null
sudo mv Hack-v3.003-ttf.zip /usr/local/share/fonts/
sudo unzip /usr/local/share/fonts/Hack-v3.003-ttf.zip
sudo rm -rf /usr/local/share/fonts/Hack-v3.003-ttf.zip
fc-cache -v

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
$zshrc = './config/zshrc'
$p10 = './config/p10k'
echo '' >.zshrc
echo $zshrc >.zshrc
echo $p10 >.p10k.zsh
