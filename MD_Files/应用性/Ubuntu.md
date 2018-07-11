# Ubuntu 安装软件

- [Ubuntu 常用软件安装](https://www.jianshu.com/p/4d220b01686b)
- [Ubuntu主题美化、个性化设置与常用软件](http://yangbingdong.com/2017/ubuntu-todo-after-install/) <!--全面-->

## 编程语言

- ###### Oracle JDK

  - [Install Oracle Java 8 / 9 in Ubuntu 16.04, Linux Mint 18](http://tipsonubuntu.com/2016/07/31/install-oracle-java-8-9-ubuntu-16-04-linux-mint-18/)

    ```shell
    sudo apt install python-software-properties
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt update
    sudo apt install oracle-java8-installer
    ```

- ###### Intellij
  - [***Official***：Install IntelliJ IDEA on Ubuntu with ***Snaps***](https://blog.jetbrains.com/idea/2017/11/install-intellij-idea-with-snaps/)

     ```shell
     # 不要加上--edge选项  # 速度可达~560Kb/s左右
     sudo snap install intellij-idea-community --classic
     ```

  - [Inofficial ***PPA*** for Jetbrains products](https://github.com/JonasGroeger/jetbrains-ppa)  <!--github项目，缓慢-->

    ```shell
    curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | sudo apt-key add -
    echo "deb http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com bionic main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
    # sudo apt update
    sudo apt install intellij-idea-community
    ```

    > 也可以从这个仓库安装Pycharm

  - [itsfoss：How To Install IntelliJ IDEA On Ubuntu Linux](https://itsfoss.com/install-intellij-ubuntu-linux/)

    > <!--有两种方法，通过ubuntu-make；通过ppa，速度不错，但更新非最新-->
    >
    > ```shell
    > sudo add-apt-repository ppa:mmk2410/intellij-idea-community
    > sudo apt-get update
    > sudo apt-get install intellij-idea-community 
    > 
    > # to remove
    > sudo apt-get remove intellij-idea-community
    > sudo add-apt-repository --remove ppa:mmk2410/intellij-idea-community
    > ```

- ###### Sublime Text 3

  - [How to Install Sublime Text 3 on Ubuntu and Other Linux Distributions](https://itsfoss.com/sublime-text-3-linux/)

    ```shell
    sudo snap install sublime-text
    # or from the official ppa
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install sublime-text
    ```

  - [sublime text3配置](https://segmentfault.com/a/1190000007967722) <!--比很多人的靠谱得多-->

  - [设置 Sublime Text 的 Python 开发环境 【已翻译100%】](https://www.oschina.net/translate/setting-up-sublime-text-for-python-development) <!--也算靠谱-->

- ###### Pycharm

  - [Itsfoss：How To Install PyCharm In Ubuntu 14.04 and 16.04](https://itsfoss.com/install-pycharm-ubuntu/)

    > <!--有snap，umake和PPA三种方法-->
    >
    > ```shell
    > # snap
    > sudo snap install pycharm-community --classic
    > 
    > # PPA
    > sudo add-apt-repository ppa:mystic-mirage/pycharm
    > # sudo apt update
    > sudo apt install pycharm-community
    > ```

  - [***Official***：Download Pycharm](https://www.jetbrains.com/pycharm/download/#section=linux)

  ```shell
  # 速度一般
  sudo add-apt-repository ppa:viktor-krivak/pycharm
  
  sudo apt install pycharm
  ```

- ###### R
  - [RStudio on Ubuntu 18.04 Bionic Beaver Linux](https://linuxconfig.org/rstudio-on-ubuntu-18-04-bionic-beaver-linux)

## 评论

- [升级到 Ubuntu 18.04 LTS 的理由，大波新特性到来](https://www.oschina.net/news/94692/ubuntu-18-04-new-features)


## 美化

- [简书：不美翻怎么开发!Ubuntu 16.04 LTS深度美化!(2017年度定稿版)](https://www.jianshu.com/p/4bd2d9b1af41) <!--很不错-->

  - ###### Flatabulous主题

    ```shell
    sudo add-apt-repository ppa:noobslab/themes
    
    sudo apt install flatabulous-theme
    ```

  - ###### Flatabulous图标

    ```shell
    sudo add-apt-repository ppa:noobslab/icons
    # sudo apt update
    sudo apt install ultra-flat-icons
    
    # Flat Icons有多种可以选择，如：ultra-flat-icons-orange，ultra-flat-icons-green可以通过如下方法来安装
    sudo apt-get install ultra-flat-icons-orange
    ```

  - ###### Numix图标

    ```shell
    sudo add-apt-repository ppa:numix/ppa
    
    sudo apt install numix-icon-theme
    ```

- [Ubuntu主题美化、个性化设置与常用软件](http://yangbingdong.com/2017/ubuntu-todo-after-install/) <!--全面-->

- [ubuntu 18.04 LTS 界面美化教程](http://valdanito.top/2018/05/01/ubuntu-bionic-beautification.html) <!--一般-->

## 优化

- [10 条加速 Ubuntu Linux 的杀手级技巧](https://linux.cn/article-9789-1.html)

  > - `Preload` 是一个后台运行的守护进程，它分析用户行为和频繁运行的应用。打开终端，使用如下的命令来安装 preload：
  >
  >   ```shell
  >    sudo apt install preload
  >   ```
  >
  > - `apt-fast` 是 `apt-get` 的一个 shell 脚本包装器，通过从多连接同时下载包来提升更新及包下载速度。 如果你经常使用终端以及 `apt-get` 来安装和更新包，你也许会想要试一试 `apt-fast`。使用下面的命令来通过官方 PPA 安装 `apt-fast`：
  >
  >   ```shell
  >   sudo add-apt-repository ppa:apt-fast/stable
  >   sudo apt update
  >   sudo apt install apt-fast
  >   ```

## 好玩

- [动画演示10个有趣但毫无用处的Linux命令](http://www.vaikan.com/10-funny-liunx-command/)



## 系统工具

```shell
sudo apt install cmake git 
sudo apt install cairo-dock cairo-dock-plug-ins guake 
sudo apt install unity-tweak-tool gnome-tweak-tool
sudo apt install xclip

# pcmanfm
sudo apt install pcmanfm
xdg-mime default pcmanfm.desktop inode/directory application/x-gnome-saved-search

# python 3.6
sudo add-apt-repository ppa:deadsnakes/ppa
# sudo apt update
sudo apt install python3.6
```

### Git配置

```shell
git config --global user.email "rfliu2015@gmail.com"
git config --global user.name "rfliu2015"
ssh-keygen -t rsa -C "rfliu2015@email.com"
gedit ~/.ssh/id_rsa.pub    # 将文件内容添加至github或其它代码托管平台
```

- ###### Q&A

  - [Github之SSH连接配置](http://www.linmuxi.com/2016/02/24/github-config-ssh/)

### Shell

- [ <img src="https://camo.githubusercontent.com/5c385f15f3eaedb72cfcfbbaf75355b700ac0757/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6f686d797a73682f6f682d6d792d7a73682d6c6f676f2e706e67" style="zoom:30%">](https://github.com/robbyrussell/oh-my-zsh)

  ```shell
  sudo apt install zsh
  # sudo apt update
  chsh -s `which zsh`  # 将 Zsh 设置为默认 Shell
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  ```

- [Ubuntu 下 Oh My Zsh 的最佳实践「安装及配置」](https://juejin.im/post/5b216263f265da6e44326959)

### Vim

```shell
sudo add-apt-repository ppa:jonathonf/vim
# sudo apt update
sudo apt install vim

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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



### XX-Net

- [下载界面](https://github.com/XX-net/XX-Net/blob/master/code/default/download.md)

  ```shell
  # 自动导入证书，需安装 libnss3-tools 包
  sudo apt install libnss3-tools 
  # 没有安装PyGtk的，需要先安装gtk：
  sudo apt-get install python-gtk2 
  # cd到XX-Net解压的目录地址，第一次启动, 请用sudo ./start.sh, 以安装CA证书
  sudo ./start.sh
  ```

### Kde-Connect

- [How to install and use KDEConnect on Ubuntu 16.04LTS](https://www.howtoforge.com/tutorial/how-to-install-and-use-kdeconnect-on-ubuntu-16-04/)

  ```shell
  sudo add-apt-repository ppa:vikoadi/ppa
  sudo apt update
  sudo apt install kdeconnect indicator-kdeconnect
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