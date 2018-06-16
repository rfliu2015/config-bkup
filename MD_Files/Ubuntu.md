# Ubuntu 安装软件

## 编程语言

### Java环境

- [Install Java on Ubuntu using apt-get by ***PPA***](https://poweruphosting.com/blog/install-java-ubuntu/)

### Intellij

- [Inofficial ***PPA*** for Jetbrains products](https://github.com/JonasGroeger/jetbrains-ppa)  <!--github项目-->
- [Install IntelliJ IDEA on Ubuntu with ***Snaps***](https://blog.jetbrains.com/idea/2017/11/install-intellij-idea-with-snaps/)

### Pycharm 

- [Official: Download Pycharm](https://www.jetbrains.com/pycharm/download/#section=linux)

### R

- [RStudio on Ubuntu 18.04 Bionic Beaver Linux](https://linuxconfig.org/rstudio-on-ubuntu-18-04-bionic-beaver-linux)

## Shell

- [Ubuntu 下 Oh My Zsh 的最佳实践「安装及配置」](https://juejin.im/post/5b216263f265da6e44326959)



## 美化

- [简书：不美翻怎么开发!Ubuntu 16.04 LTS深度美化!(2017年度定稿版)](https://www.jianshu.com/p/4bd2d9b1af41) <!--很不错-->
- [Ubuntu主题美化、个性化设置与常用软件](http://yangbingdong.com/2017/ubuntu-todo-after-install/) <!--全面-->
- [ubuntu 18.04 LTS 界面美化教程](http://valdanito.top/2018/05/01/ubuntu-bionic-beautification.html) <!--一般-->

## 好玩

- [动画演示10个有趣但毫无用处的Linux命令](http://www.vaikan.com/10-funny-liunx-command/)



## 命令行软件安装

### 系统工具

```shell
sudo apt install cmake git 
sudo apt install cairo-dock guake 
sudo apt install unity-tweak-tool gnome-tweak-tool

# pcmanfm
sudo apt install pcmanfm ; xdg-mime default pcmanfm.desktop inode/directory application/x-gnome-saved-search
```

#### Git配置

```shell
git config --global user.email "rfliu2015@gmail.com"
git config --global user.name "rfliu2015"
ssh-keygen -t rsa -C "rfliu2015@email.com"
cd ~/.ssh
gedit id_rsa.pub    # 将文件内容添加至github或其它代码托管平台
```

#### Zsh
```shell
sudo apt install zsh
# sudo apt update
chsh -s `which zsh`  # 将 Zsh 设置为默认 Shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### vim

```shell
sudo add-apt-repository ppa:jonathonf/vim
# sudo apt update
sudo apt install vim

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### 主题

##### Flatabulous主题

```shell
sudo add-apt-repository ppa:noobslab/themes

sudo apt install flatabulous-theme
```

##### Flatabulous图标

```shell
sudo add-apt-repository ppa:noobslab/icons
# sudo apt update
sudo apt install ultra-flat-icons

# Flat Icons有多种可以选择，如：ultra-flat-icons-orange，ultra-flat-icons-green可以通过如下方法来安装
# sudo apt-get install ultra-flat-icons-orange

```

##### Numix图标

```shell
sudo add-apt-repository ppa:numix/ppa

sudo apt install numix-icon-theme
```





### Typora

```shell
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE # optional, but recommended
sudo add-apt-repository 'deb https://typora.io/linux ./'

sudo apt-get install typora
```

### Google Chrome

```shell
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
# sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
# sudo apt update
sudo apt install google-chrome-stable
```



### Oracle Jdk

```shell
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java

sudo apt install oracle-java8-installer
```


### Pycharm

```shell
# 速度一般
sudo add-apt-repository ppa:viktor-krivak/pycharm

sudo apt install pycharm
```

### XX-Net

```shell
# 自动导入证书，需安装 libnss3-tools 包
sudo apt install libnss3-tools 
# 没有安装PyGtk的，需要先安装gtk：
sudo apt-get install python-gtk2 
# cd到XX-Net解压的目录地址，第一次启动, 请用sudo ./start.sh, 以安装CA证书
sudo ./start.sh 
```





## 卸载不常用

```shell
# 删除libreoffice
sudo apt-get purge libreoffice-common

# 删除Amazon链接
sudo apt-get purge unity-webapps-common

# 删除其它极少用的软件
sudo apt-get purge thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku
sudo apt-get purge onboard deja-dup
```

##  End