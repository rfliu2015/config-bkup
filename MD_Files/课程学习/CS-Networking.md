

<img src="https://i.loli.net/2018/06/04/5b1560294894d.gif" alt="1986284-87165a1e7d0e7b86.gif" title="1986284-87165a1e7d0e7b86.gif" />

## 物理层

- [简书：总结谢希仁—计网五版：chapter two 物理层](https://www.jianshu.com/p/882458988e82)

## 数据链路层

- [博客园：基带信号、载波信号和宽带信号](http://www.cnblogs.com/rainbow70626/p/4937573.html)

> <img src="https://i.loli.net/2018/05/31/5b0f83a23e75e.png" alt="载波和调制波.png" title="载波和调制波.png" />

- [CSDN: CSMA/CD协议最小帧长的思考](https://blog.csdn.net/u011240016/article/details/52719183)

## 以太网

- [BILIBILI：5.局域网技术基础-以太网工作原理](https://www.bilibili.com/video/av10417506?from=search&seid=12865389197846763011) <!--10：42-->
- [Wiki: Device driver](https://en.wikipedia.org/wiki/Device_driver)
- [CSDN：网卡工作原理详解](https://blog.csdn.net/tao546377318/article/details/51602298)

## 网络层

- [博客园：网关的通俗讲解【转】](https://www.cnblogs.com/scy251147/archive/2010/08/13/1799211.html)

  > 网关实质上是一个网络通向其他网络的IP地址。
  >
  > 比如有网络A和网络B，网络A的IP地址范围为“192.168.1.1~192. 168.1.254”，子网掩码为255.255.255.0；网络B的IP地址范围为“192.168.2.1~192.168.2.254”，子网掩码为255.255.255.0。在没有路由器的情况下，两个网络之间是不能进行TCP/IP通信的，即使是两个网络连接在同一台交换机(或集线器)上，TCP/IP协议也会根据子网掩码(255.255.255.0)判定两个网络中的主机处在不同的网络里。而要实现这两个网络之间的通信，则必须通过网关。
  >
  > 如果网络A中的主机发现数据包的目的主机不在本地网络中，就把数据包转发给它自己的网关，再由网关转发给网络B的网关，网络B的网关再转发给网络B的某个主机(如附图所示)。
  >
  > 网络B向网络A转发数据包的过程。所以说，只有设置好网关的IP地址，TCP/IP协议才能实现不同网络之间的相互通信。那么这个IP地址是哪台机器的IP地址呢？网关的IP地址是具有路由功能的设备的IP地址，具有路由功能的设备有路由器、启用了路由协议的服务器(实质上相当于一台路由器)、代理服务器(也相当于一台路由器)。 

## 杂项

- [知乎：OSI七层模型和两主机传输过程(转)](https://www.jianshu.com/p/d8dbe0798d4c) <!--很有趣的一个文章-->
- [CSDN：计算机网络漫谈](https://blog.csdn.net/yangbodong22011/article/details/72457089) <!--简略但是抓住要点，而且有趣-->

## Problems

- [载波监听](https://baike.baidu.com/item/%E8%BD%BD%E6%B3%A2%E7%9B%91%E5%90%AC)

  > 在以太网中不是基带传输吗？为什么会涉及到载波，频带传输？

------

## 公开课教程

- [計算機網路概論](http://ocw.nthu.edu.tw/ocw/index.php?page=course&cid=13&)