# 问题和解答

- [关于特权指令，系统调用，访管指令，trap指令](http://www.cskaoyan.com/thread-183370-1-1.html)

  > **访管指令中包含TRAP指令**, 也正是从TRAP指令转入内核的. 首先由**用户程序主动调用访管指令**, 访管指令在用户态预先把数据存入寄存器, 然后**通过一条TRAP指令跳转到内核的系统调用处理程序**. 调用结束后首先返回访管指令, 再从访管指令返回用户程序. 如果你要问为什么访管指令这么神奇的话, 那是因为访管指令是用汇编语言写的. 
  >
  > 访管指令和TRAP指令从大面上讲属于一种内中断（在主机【内存和处理器】中发生的中断），**一般这两者不做区分，可以看成等同。** 
  >
  > 系统调用同样也提供一部分程序接口，用于用户程序调用。而实际上，**一旦调用这个接口，就一定产生中断进入核心态**转去执行系统调用程序。所以，我们常说的**在目态下执行系统调用并不严谨，仅仅是调用了一个接口而已**。 

- ###### 简书：计算机启动过程

  - [博客园：计算机启动过程](https://www.cnblogs.com/Braveliu/p/3305975.html ) 

    > <!--例子古老，然而解释足够清楚，流程图足够详细。大好。-->
    >
    > 当我们按下电源开关时，电源就开始向主板和其它设备供电，此时电压还不太稳定，主板上的控制芯片组会向CPU发出并保持一个RESET（重置）信号，让CPU内部自动恢复到初始状态，但CPU在此刻不会马上执行指令。
    >
    > 当芯片组检测到电源已经开始稳定供电了（当然从不稳定到稳定的过程只是一瞬间的事情），它便撤去RESET信号，CPU马上就从地址FFFF0H处开始执行指令，从前面的介绍可知，这个地址实际上在系统BIOS的地址范围内，放在这里的只是一条跳转指令，跳到系统BIOS中真正的启动代码处。 

  - [CSDN：计算机启动过程](https://blog.csdn.net/langb2014/article/details/79370818)

    > <!--对CPU进入正常工作，执行BIOS之前的解释很详细。-->
    >
    > 大部分的[寄存器(registers)](http://en.wikipedia.org/wiki/Processor_register)都预先设定了在通电后的初始值，保存着CPU执行指令地址的地址寄存器(EIP)也不例外。虽然在刚刚开机后只能使用1MB的存储地址空间，但是32位的Intel处理器第一条执行指令地址为0xFFFFFFF0（4GB存储空间的最后16字节），这个地址被称为[reset vector](http://en.wikipedia.org/wiki/Reset_vector)，是现代Intel系列CPU的标准之一。
    >
    > 主板会保证在reset vector处的指令是一条到BIOS程序入口的跳转指令。在主板芯片组的存储地址映射作用下，所有的存储地址都对应有CPU需要的正确的内容。这些地址都被映射到了包含有BIOS的闪存中，而此时RAM中存在的只是一些无用的随机值。

  - [简书：计算机启动过程 by Nuk](https://www.jianshu.com/p/dcca1543d719) <!--图配的不错，解释很差-->

    > CPU启动之后首先进入的是实模式，这种模式下CPU处理的是物理内存地址，也就是说[MMU](https://baike.baidu.com/item/MMU/4542218?fr=aladdin)没有开启分页功能，而且最多只能访问1MB的内存。
    >
    > 不过这时候绝大多数的CPU寄存器已经能够正常使用了，其中EIP寄存器是指向CPU要执行的指令内存地址的寄存器。启动之后，Intel CPU会有一个特殊的行为，那就是对EIP的初始值加一个基寄存器的值，让CPU跳转到0xFFFFFFF0这个地址执行那里的第一条指令。之所以称之特殊行为是因为这个地址其实大于实模式下1MB的内存限制。0xFFFFFFF0这个地址也因此被称为重置向量（reset vector）。

# General

- [Operating System Engineering](https://pdos.csail.mit.edu/6.828/2014/xv6.html)
- [6.828/2018](https://pdos.csail.mit.edu/6.828/2017/)
- [chyyuu (chyyuu)· GitHub](https://github.com/chyyuu/)
- [OS2017(Spring)| Institute of Computer Software](http://moon.nju.edu.cn/people/fengxu/OS2017)

# 📔 思维导图

- [学习笔记--操作系统的知识点的概括（思维导图形式） - CSDN博客](https://blog.csdn.net/qq_34861102/article/details/76777783)

### 思维导图 - 图片

![](https://upload-images.jianshu.io/upload_images/907293-40a3a38290bd3a57.png)

![](https://ws1.sinaimg.cn/large/006PFQeVly1fumxrpxkqjj314s10ijxo.jpg)

### 思维导图 - 在线

- [操作系统 ProcessOn Mind](https://www.processon.com/mindmap/5b82255ae4b08faf8c35045e)

# 📁 绪论

### 思维导图

![](https://ws1.sinaimg.cn/large/006PFQeVly1fumymcq5pej31r528n48r.jpg)

![](https://ws1.sinaimg.cn/large/006PFQeVly1fumymvqdnmj30nc0zetb8.jpg)

# 📁 进程管理

- [进程内核栈、用户栈](https://blog.csdn.net/bailyzheng/article/details/8015618)

  > 内核在创建进程的时候，在创建task_struct的同时，会为进程创建相应的堆栈。
  >
  > 每个进程会有两个栈，一个用户栈，存在于用户空间，一个内核栈，存在于内核空间。
  >
  > 当进程在用户空间运行时，cpu堆栈指针寄存器里面的内容是用户堆栈地址，使用用户栈；当进程在内核空间时，cpu堆栈指针寄存器里面的内容是内核栈空间地址，使用内核栈。 

- ###### 同步，异步，阻塞，非阻塞

  - [同步，异步，阻塞，非阻塞等关系轻松理解](https://github.com/calidion/calidion.github.io/issues/40)

    > <!--着重从“区分”的角度来说的，因此没有概念的解释和举例。但是区分的非常好！-->
    >
    > ###### 他们产生关系的领域CPU中断与IO
    >
    > 没有IO操作，所有的代码基本都是同步的 
    > 有了IO操作后，如果没有多进程多线程，所有代码还是同步的 
    > 有了IO操作，有了多进程多线程，代码才有了异步的可能性，同时也产生了阻塞与非阻塞 
    >
    > ###### 同步与异步
    >
    > 同步是指代码调用IO操作时，必须等待IO操作完成才返回的调用方式。
    > 异步是指代码调用IO操作时，不必等IO操作完成就返回的调用方式。
    >
    > 同步是最原始的调用方式。
    > 异步则需要多线程，多CPU或者非阻塞IO的支持。

  - [完全理解同步/异步与阻塞/非阻塞](http://maples7.com/2016/08/24/understand-sync-async-and-blocking-non-blocking/)

    > <!--存疑。不过说的简明清楚，逻辑清晰。-->
    >
    > 阻塞和非阻塞解决了应用层等待数据返回时的状态问题，那系统内核获取到的数据到底如何返回给应用层呢？这里不同类型的操作便体现的是同步和异步的区别。
    >
    > 对于同步型的调用，应用层需要自己去向系统内核问询，如果数据还未读取完毕，那此时读取文件的任务还未完成，应用层根据其阻塞和非阻塞的划分，或挂起或去做其他事情（所以同步和异步并不决定其等待数据返回时的状态）；如果数据已经读取完毕，那此时系统内核将数据返回给应用层，应用层即可以用取得的数据做其他相关的事情。
    >
    > 而对于异步型的调用，应用层无需主动向系统内核问询，在系统内核读取完文件数据之后，会主动通知应用层数据已经读取完毕，此时应用层即可以接收系统内核返回过来的数据，再做其他事情。
    >
    > 这便是（脱离阻塞和非阻塞来说之后）同步和异步的区别。也就是说，是否是同步还是异步，关注的是任务完成时消息通知的方式。由调用方盲目主动问询的方式是同步调用，由被调用方主动通知调用方任务已完成的方式是异步调用。

# 📁 内存管理

-  [CSDN：《计算机操作系统》总结三（**内存管理**）](https://blog.csdn.net/bigpudding24/article/details/48655055)

  > <!--做的颜色标注很不错。内存管理的每一个部分都总结的全面。-->
  >
  > 相同的文章在[简书：操作系统之内存管理](https://www.jianshu.com/p/901689c7820d)。

  > 在系统中通常设置一个页表寄存器(`PTR`)，存放页表在内存的`始址F`和`页表长度M`。进程未执行时，页表的始址和长度存放在进程控制块中，当进程执行时，才将页表始址和长度存入页表寄存器。设`页面大小为L`，`逻辑地址A`到`物理地址E`的变换过程如下：
  > 1. 计算`页号P(P=A/L)`和`页内偏移量W (W=A%L)`。
  > 2. 比较页号P和页表长度M，若P >= M，则产生越界中断，否则继续执行。
  > 3. 页表中页号P对应的页表项地址 = 页表起始地址F + 页号P * 页表项长度，取出该页表项内容b，即为物理块号。
  > 4. 计算E=b*L+W，用得到的物理地址E去访问内存。
  >
  > 以上整个地址变换过程均是由硬件自动完成的。

- [操作系统（八）：**内存管理** from Forec’s note](http://blog.forec.cn/2017/01/03/os-concepts-8/)

  > <!--整理《Operating System Concepts》 第七版第八章内存管理部分，内容均为原书和中文版翻译的摘录 。-->
  > [地址绑定](http://blog.forec.cn/2017/01/03/os-concepts-8/#%E5%9C%B0%E5%9D%80%E7%BB%91%E5%AE%9A)：原程序中的地址通常用符号来表示， 编译器 会将这些符号地址 绑定（bind） 到可重定位的地址， 链接程序 或 加载程序 再将这些可重定位的地址绑定成绝对地址……
  >
  > [内存保护](http://blog.forec.cn/2017/01/03/os-concepts-8/#基本硬件)：要确保操作系统不被用户进程访问、用户进程不被其他用户进程访问，需要每个进程拥有独立的地址空间……

-  [操作系统--逻辑地址，物理地址 | Charse's Blog](https://wangchangchung.github.io/2017/06/04/%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F-%E9%80%BB%E8%BE%91%E5%9C%B0%E5%9D%80%EF%BC%8C%E7%89%A9%E7%90%86%E5%9C%B0%E5%9D%80/)

### 待整理

- [CPU是如何访问内存的？ - 云+社区 - 腾讯云](https://cloud.tencent.com/developer/article/1106789)
- [很多人都不知晓的CPU访问内存知识！_搜狐科技_搜狐网](http://www.sohu.com/a/127028459_505803)
- [宋宝华： CPU是如何访问到内存的？--**MMU最基本原理**](https://mp.weixin.qq.com/s/SdsT6Is0VG84WlzcAkNCJA)
- [CPU与内存的那些事 - Mr.Rico - 博客园](https://www.cnblogs.com/xkfz007/archive/2012/10/08/2715163.html)
- [计算机原理 —— 主板与内存映射 - Fantasy](http://liaoph.com/motherboard-and-memory-map/)

### 思维导图 - 在线

- [内存管理 ProcessOn Mind](http://www.processon.com/mindmap/5b822685e4b06fc64ad54660)

### 思维导图 - 图片

![](https://ws1.sinaimg.cn/large/006PFQeVly1fumxw6mkywj30s40z6acm.jpg)

![](https://upload-images.jianshu.io/upload_images/907293-1f562cb98b6936de.png)

# 📁 设备管理

### 思维导图

![](https://ws1.sinaimg.cn/large/006PFQeVly1fumxx98ocfj30wi0vmaci.jpg)

# 📁 文件管理

### 思维导图 - 在线

- [文件管理 ProcessOn Mind](http://www.processon.com/mindmap/5b82269ce4b0d4d65be6e301)

### 思维导图 - 图片

![](https://upload-images.jianshu.io/upload_images/907293-866c36e618fb4e56.png)

# ----