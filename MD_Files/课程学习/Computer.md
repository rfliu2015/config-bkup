# Curriculums

[TOC]



---

## General

- [专栏 - 计算机理论基础: Forec's notes](http://blog.forec.cn/columns/cs-basic.html)
- [Learning How to Learn](https://zilongshanren.com/blog/2017-05-09-learning-how-to-learn.html#sec-2-7)

---

## Operating System

### 问题和解答

- [关于特权指令，系统调用，访管指令，trap指令](http://www.cskaoyan.com/thread-183370-1-1.html)

  > **访管指令中包含TRAP指令**,也正是从TRAP指令转入内核的.首先由**用户程序主动调用访管指令**,访管指令在用户态预先把数据存入寄存器,然后**通过一条TRAP指令跳转到内核的系统调用处理程序**.调用结束后首先返回访管指令,再从访管指令返回用户程序.如果你要问为什么访管指令这么神奇的话,那是因为访管指令是用汇编语言写的. 
  >
  > 访管指令和TRAP指令从大面上讲属于一种内中断（在主机【内存和处理器】中发生的中断），**一般这两者不做区分，可以看成等同。** 
  >
  > 系统调用同样也提供一部分程序接口，用于用户程序调用。而实际上，**一旦调用这个接口，就一定产生中断进入核心态**转去执行系统调用程序。所以，我们常说的**在目态下执行系统调用并不严谨，仅仅是调用了一个接口而已**。 

- [进程内核栈、用户栈](https://blog.csdn.net/bailyzheng/article/details/8015618)

  > 内核在创建进程的时候，在创建task_struct的同时，会为进程创建相应的堆栈。**每个进程会有两个栈，一个用户栈，存在于用户空间，一个内核栈，存在于内核空间**。**当进程在用户空间运行时，cpu堆栈指针寄存器里面的内容是用户堆栈地址，使用用户栈**；当进程在内核空间时，cpu堆栈指针寄存器里面的内容是内核栈空间地址，使用内核栈。 

### General

- [Operating System Engineering](https://pdos.csail.mit.edu/6.828/2014/xv6.html)
- [6.828/2018](https://pdos.csail.mit.edu/6.828/2017/)
- [chyyuu (chyyuu)· GitHub](https://github.com/chyyuu/)
- [OS2017(Spring)| Institute of Computer Software](http://moon.nju.edu.cn/people/fengxu/OS2017)

---

## 计算机组成原理

- [CNBLOGS：机器字长 存储字长 指令字长 数据字长区别](http://www.cnblogs.com/claremore/p/4802881.html)

  > **机器字长**：CPU一次能处理数据的位数，通常与CPU的寄存器位数有关。 **存储字长**：存储器中一个存储单元(存储地址)所存储的二进制代码的位数，即存储器中的MDR的位数。 **指令字长**：计算机指令字的位数。 **数据字长**：计算机数据存储所占用的位数。 

- [CSDN：详解大端模式和小端模式](https://blog.csdn.net/ce123_zhouwei/article/details/6971544)

  > 比如数字0x12 34 56 78在内存中的表示形式为：
  >
  > **1)大端模式：**
  >
  > 低地址 -----------------> 高地址
  > 0x12  |  0x34  |  0x56  |  0x78
  >
  > **2)小端模式：**
  >
  > 低地址 ------------------> 高地址
  > 0x78  |  0x56  |  0x34  |  0x12
  >
  > 一个存储单元是1B=8bit，则对应两个16进制数(2*4位)

### ==计算机的运算方法==

- [补码一位乘法证明](./Curriculums/计算机组成原理/补码一位乘法的证明.ppt)
- [简书：原码，反码，补码杂谈](https://www.jianshu.com/p/3d92fe1c34af) <!--绝佳-->
- [CNBLOGS：原码一位乘法与补码一位乘法](https://www.cnblogs.com/yjbjingcha/p/6956431.html) <!--过程详细，包含硬件逻辑-->

---

## 算法与数据结构

- [CNBLOGS：从《编程之美》买票找零问题说起，娓娓道来卡特兰数——兼爬坑指南](http://www.cnblogs.com/wuyuegb2312/p/3016878.html#suggestion) <!--超详细-->

### ==树==

#### 二叉树

##### 二叉树遍历

- [CSDN：非递归遍历二叉树](https://blog.csdn.net/kofsky/article/details/2886453/) <!--版本全面，解释简略-->
- [CSDN：二叉树前序，中序，后序遍历迭代实现解](https://blog.csdn.net/u014787113/article/details/49717831) <!--邓俊晖的方法，解释一般-->
- [CSDN：二叉树前序、中序、遍历非递归写法的透彻解析，后续标志法](https://blog.csdn.net/zhangxiangdavaid/article/details/37115355) <!--中序的过程最详细-->
- [简书：Java二叉树遍历(先序、中序、后序)](https://www.jianshu.com/p/456af5480cee) <!--整体略详细-->
- [关于二叉树非递归遍历](http://crescentmoon.info/2012/10/14/%E5%85%B3%E4%BA%8E%E4%BA%8C%E5%8F%89%E6%A0%91%E9%9D%9E%E9%80%92%E5%BD%92%E9%81%8D%E5%8E%86/) <!--大概后序遍历讲得还好-->
- [简书：一种统一的个人想法的非递归遍历二叉树的方法](https://www.jianshu.com/p/49c8cfd07410) <!--看看就行了-->

### ==排序==

- [简书：八大排序的Java实现](https://www.jianshu.com/p/7f39f04af138)

---

## 计算机网络

<img src="https://i.loli.net/2018/06/04/5b1560294894d.gif" alt="1986284-87165a1e7d0e7b86.gif" title="1986284-87165a1e7d0e7b86.gif" />

### ==物理层==

- [简书：总结谢希仁—计网五版：chapter two 物理层](https://www.jianshu.com/p/882458988e82)

### ==数据链路层==

- [CNBLOGS：基带信号、载波信号和宽带信号](http://www.cnblogs.com/rainbow70626/p/4937573.html)

> <img src="https://i.loli.net/2018/05/31/5b0f83a23e75e.png" alt="载波和调制波.png" title="载波和调制波.png" />

- [CSDN: CSMA/CD协议最小帧长的思考](https://blog.csdn.net/u011240016/article/details/52719183)

### ==以太网==

- [BILIBILI：5.局域网技术基础-以太网工作原理](https://www.bilibili.com/video/av10417506?from=search&seid=12865389197846763011) <!--10：42-->
- [Wiki: Device driver](https://en.wikipedia.org/wiki/Device_driver)
- [CSDN：网卡工作原理详解](https://blog.csdn.net/tao546377318/article/details/51602298)

### 杂项

- [知乎：OSI七层模型和两主机传输过程(转)](https://www.jianshu.com/p/d8dbe0798d4c) <!--很有趣的一个文章-->
- [CSDN：计算机网络漫谈](https://blog.csdn.net/yangbodong22011/article/details/72457089) <!--简略但是抓住要点，而且有趣-->

### Problems

- [载波监听](https://baike.baidu.com/item/%E8%BD%BD%E6%B3%A2%E7%9B%91%E5%90%AC)

  > 在以太网中不是基带传输吗？为什么会涉及到载波，频带传输？

---

## 公开课教程

- [計算機網路概論](http://ocw.nthu.edu.tw/ocw/index.php?page=course&cid=13&)

---

## 其他计算机系列

### 个人笔记/博客

- [Forec's notes](http://blog.forec.cn/)
- [Forec's space](https://forec.cn/)

### 经典书籍笔记

#### 「深入理解计算机系统」

- [《深入理解计算机系统》| **信息的表示和处理**](https://www.jianshu.com/p/58cb75d9404e?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation)

#### 「计算机网络：自顶向下方法Sixth」

![](https://upload-images.jianshu.io/upload_images/2941343-c76b682f3ff23a2e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/318)

##### 第一章 计算机网络和因特网

- [简书：Chapter one: 计算机网络和因特网](https://www.jianshu.com/p/d388d0528524)
- [第一章复习题 by Wonter](https://www.jianshu.com/p/4158a9258b01)
- [第一章复习题 by maxwellyue](https://www.jianshu.com/p/47f1adf5fb1f)

##### 第二章 应用层

- [简书：计算机网络自顶向下——应用层 by 牛严](https://www.jianshu.com/p/48f2bebaeb40)
- [简书：读书笔记——应用层 by Hans941](https://www.jianshu.com/p/1b53e88e5864?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation)

##### 第三章 运输层

- [简书：计算机网络自顶向下——运输层 by 牛严](https://www.jianshu.com/p/0bbc559e7b05)

##### 第四章 网络层

- [简书：计算机网络自顶向下——网络层 by 牛严](https://www.jianshu.com/p/78330d05537c)

##### 第五帮 网络层

- [简书：计算机网络自顶向下——链路层 by 牛严](https://www.jianshu.com/p/16c716ec06b7)