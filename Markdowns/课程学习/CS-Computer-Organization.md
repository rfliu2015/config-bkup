

## 硬件

- [Basic Logic Gates](http://www.ee.surrey.ac.uk/Projects/CAL/digital-logic/gatesfunc/index.html)

## 📁 绪论

- [博客园：机器字长 存储字长 指令字长 数据字长区别](http://www.cnblogs.com/claremore/p/4802881.html)

  > <b style="color:rgb(0,128,128)">机器字长：</b>CPU一次能处理数据的位数，通常与CPU的寄存器位数有关。 <b style="color:rgb(0,128,128)">存储字长</b>：存储器中一个存储单元(存储地址)所存储的二进制代码的位数，即存储器中的MDR的位数。 <b style="color:rgb(0,128,128)">指令字长：</b>计算机指令字的位数。 <b style="color:rgb(0,128,128)">数据字长：</b>计算机数据存储所占用的位数。 

## 📁 数据的表示与运算

### 数据的表示

- [CSDN：详解大端模式和小端模式](https://blog.csdn.net/ce123_zhouwei/article/details/6971544)

  > 比如数字0x12 34 56 78在内存中的表示形式为：
  >
  > <b style="color:navy">1) 大端模式：</b>
  >
  > 低地址 -----------------> 高地址
  > 0x12  |  0x34  |  0x56  |  0x78
  >
  > <b style="color:navy">2) 小端模式：</b>(常用)
  >
  > 低地址 ------------------> 高地址
  > 0x78  |  0x56  |  0x34  |  0x12
  >
  > 一个存储单元是`1B=8bit`，则对应两个`16`进制数(`2*4`位)
  >
  > <img src="https://ws1.sinaimg.cn/large/006PFQeVly1fuob36erk0j30rz0ikdpr.jpg" style="zoom:40%">

### 计算机的运算方法

- [补码一位乘法证明](./Curriculums/计算机组成原理/补码一位乘法的证明.ppt)
- [简书：原码，反码，补码杂谈](https://www.jianshu.com/p/3d92fe1c34af) <!--绝佳-->
- [博客园：原码一位乘法与补码一位乘法](https://www.cnblogs.com/yjbjingcha/p/6956431.html) <!--过程详细，包含硬件逻辑-->

### 习题

- [变形补码、移码的加减乘运算和带乘法阵列的乘法 - 百度文库](https://wenku.baidu.com/view/da1dfbc303d8ce2f01662350.html)

## 📁 存储器

### 基础

- [RAM、ROM、内存、存储、外存、硬盘的理解 - CSDN博客](https://blog.csdn.net/beyond2017/article/details/82414414)

  > **内存**在电脑中起着举足轻重的作用。内存一般采用半导体存储单元，<u>包括随机存储器（RAM），只读存储器（ROM），以及高速缓存（CACHE）</u>。只不过因为RAM是其中最重要的存储器，所以通常所说的内存即指电脑系统中的RAM。 
  >
  > ……但是RAM要求不断的电源供应，那有没有办法解决这个问题呢?随着技术的进步，人们想到了一个办法，即给RAM供应少量的电源保持RAM的数据不丢失，这就是电脑的休眠功能，特别在Win2000里这个功能得到了很好的应用，休眠时电源处于连接状态，但是耗费少量的电能。
  >
  > ……那么对于ROM来说，是不是就是硬盘呢？不是说ROM只可以读吗？硬盘却是可以修改的。的确，必须明确一点，<u>RAM与ROM都是内存，而硬盘是外存，所以ROM不等于硬盘。计算机中的ROM主要是用来存储一些系统信息，或者启动程序BIOS程序</u>，这些都是非常重要的，只可以读一般不能修改，断电也不会消失。 

### CPU和主存的连接

##### 单译码和双译码

> <h6 style="color:Sienna">单译码</h6>
>
> > ![](https://ws1.sinaimg.cn/large/006PFQeVly1fuobg5e4b2j311y0lc1kx.jpg)
> >
> > ![](https://ws1.sinaimg.cn/large/006PFQeVly1fuobdurqsnj311y0lc1kx.jpg)
>
> <h6 style="color:Sienna">双译码</h6>
>
> > ![](https://ws1.sinaimg.cn/large/006PFQeVly1fuobm2ybu4j311y0lc1kx.jpg)
> >
> > ==可能使芯片的引脚数量减半！==目前DRAM都是采用的双译码方式。X选择线和Y选择线分别叫做：字选择线和位选择线。

##### 片选和字选

- [什么是 行通选，列通选 - 第2页 - 计算机组成原理 - 王道论坛,专注于计算机考研的点点滴滴！ - Powered by Discuz!](http://www.cskaoyan.com/thread-103641-2-1.html)

  > 你的问题唐的书上讲DRAM的时候是有的，简单说一下，所谓行选通信号`RAS`和列选通信号`CAS`是因为地址复用技术减少了一半的地址线，而对于DRAM存储矩阵（对应于本题是32X32的矩阵，故行列线选五根就可表示整个矩阵）的存储单元需要行和列两个地址才能选中一个存储元，所以相应的有<b style="color:rgb(0,128,128)">两个地址锁存器</b>，在行选通信号有次的前提下，行地址通过五位地址线送往行地址锁存器，同样，列地址也类似传输，虽然是两种不同的状态也对应了高低电屏两种状态，但一般是分另用两条线实现，没记错的话好像是低电平有效，至于W/R线，我个人认为应该是可以只使用一条的

- [地址总线为A15(高位)～A0(低位)，若用1K×4的存储芯片组成4K字节存储器，并且以地址总线的高位做片选，则加在各存储芯片上的地址线是( )](https://wenku.baidu.com/view/ce716730cec789eb172ded630b1c59eef8c79add.html)

  > <u>[解析]</u> 1K×4位芯片说明每个芯片地址数为`1K=2^10`个，则每个芯片需要地址线`10`根。地址线的低10位接到各存储芯片上，即`A9～A0`。
  > <u>[归纳总结]</u> CPU要实现对存储单元的访问，首先要选择存储芯片，即进行<b style="color:rgb(0,128,128)">片选</b>；然后再从选中的芯片中依地址码选择出相应的存储单元，以进行数据的存取，这称为<b style="color:rgb(0,128,128)">字选</b>。片内的字选是由CPU送出的N条低位地址线完成的，地址线直接接到所有存储芯片的地址输入端(N由片内存储容量2^N^决定)。<b style="color:rgb(0,128,128)">而存储芯片的片选信号则大多是通过高位地址译码或直接连接产生的。</b>
  > <u>[解题技巧]</u> 在本题中，题干中的4K字节存储器对答案没有影响。

- <img src="https://ws1.sinaimg.cn/large/006PFQeVly1fuoeyk2onsj30vo09ijuc.jpg" style="zoom:60%">

  > ![](https://ws1.sinaimg.cn/large/006PFQeVly1fuoeyk8padj30vo09s75p.jpg)
  >
  > ![](https://ws1.sinaimg.cn/large/006PFQeVly1fuoeykimzaj30vo0jmgmq.jpg)
  >
  > - 一共有`6`个芯片，因此采用<b style="color:#c7254e">部分译码</b>的方式选择`A13 - A15`作为片选线。
  > - 比较各个芯片的最小存储单元个数为`4k`，因此数据线`A0 - A11`共12条作为<b style="color:#c7254e">公共片内地址线</b>。对连接引脚`Y0 - Y4`的芯片，用`A12`作为片内地址线。对最后一个芯片，`A12`与最后一个引脚`Y7`串联。
  > - 每个芯片都是`16`位，因此`16`条数据线连接每个芯片。
  > - 另：可参考[主存储器与CPU的连接 - CSDN博客](https://blog.csdn.net/fanfan4569/article/details/53152053)

- [计算机组成原理强化11](I:\Study—考研\2019年专业课%强化-组成原理%1-29\11.mp4) <!--讲解的不错。还有上一个视频有另一个例题。-->

  <video controls="controls" poster="https://ws1.sinaimg.cn/large/006PFQeVly1fup8j6q5e0j311y0lc1kf.jpg" src="I:\Study—考研\2019年专业课%强化-组成原理%1-29\第3章 存储器\11.mp4">
      对不起；您的浏览器不支持HTML5视频在WebM和VP8 / VP9或MP4
  </video>

### 存储器的层次结构

##### Cache的结构

- <video controls="controls" poster="https://ws1.sinaimg.cn/large/006PFQeVly1fupl65epdzj311y0lcwre.jpg" src="I:\Study—公开课\orgnization-刘宏伟—计算机组成原理（哈工大）\第4章 存储器\42.4.3 高速缓冲存储器4.3-a2(Av15123338,P42).Flv.mp4">
      对不起；您的浏览器不支持HTML5视频在WebM和VP8 / VP9或MP4
  </video>

  [主存与Cache的地址映射 - 丰泽园的天空 - 博客园](https://www.cnblogs.com/jasmine-Jobs/p/6959261.html) 🌟

- [Cache缺失率的计算原理 - CSDN博客](https://blog.csdn.net/u011240016/article/details/53286974)

  > (2016.15) 有如下C语言程序段：
  >
  > ```c
  > for(int k = 0; k < 1000; k++)
  > {
  >     a[k] = a[k] + 32;
  > }
  > ```
  >
  > 若数组a以及变量k均为int型，int型数据占4B，数据Cache采用直接映射 方式，数据区大小是1KB，块大小是16B，该程序段执行前Cache为空，则该程序段执行过程中，访问数组a的Cache的缺失率是：C 
  > A. 1.25%    B. 2.5%     <b style="color:blue">C. 12.5%</b>     D. 25%
  >
  > ---
  >
  > 分析：大概很多人会倾向于选择D。原因是这里的访问数组包含两个操作：读+写。如果只考虑到读没考虑到写的问题，那么计算得到D是非常自然的，且非常自信自己得到的是正确答案。
  >
  > 如何分析，首先看数组共1000个int数据，就是4000B，需要占用的主存块数是4000B/16B = 250块。Cache大小是1024B，一块是16B，因此共有64块。
  >
  > 问题简化为250块主存块映射到64块Cache的过程。<b style="color:rgb(171, 25, 66)">主存与Cache块的交换单位是块，也就是4个int数据。</b>也就是第一个数据不命中，调入后剩下三个都命中。可以说25%吗？
  >
  > <b style="color:rgb(171, 25, 66)">错！看执行语句是什么。a[k] = a[k]+32。右边是读取数据，左边是写回数据。也就是对一个数据两次操作。</b>且第一个数据读取时不命中，写Cache命中。块中剩下的三个数读写都命中，也就是一块中的4个数据的8次操作，只有一次不命中！所以不命中率是18=12.5%18=12.5%.

### 虚拟存储器

- [Page table - Wikipedia](https://en.wikipedia.org/wiki/Page_table)

  > A **page table** is the data structure used by a virtual memory system in a computer operating system to store the mapping between virtual addresses and physical addresses. Virtual addresses are used by the program executed by the accessing process, while physical addresses are used by the hardware, or more specifically, by the RAM subsystem.
  >
  > ###### Role of the page table
  >
  > In operating systems that use virtual memory, every process is given the impression that it is working with large, contiguous sections of memory. Physically, the memory of each process may be dispersed across different areas of physical memory, or may have been moved ([paged out](https://en.wikipedia.org/wiki/Paging)) to another storage, typically to a hard disk drive.
  >
  > <u>When a process requests access to data in its memory, it is the responsibility of the operating system to map the virtual address provided by the process to the physical address of the actual memory where that data is stored.</u> The page table is where the operating system stores its mappings of virtual addresses to physical addresses, with each mapping also known as **a page table entry (PTE)**.
  >
  > ###### The translation process
  >
  > The CPU's [memory management unit](https://en.wikipedia.org/wiki/Memory_management_unit) (MMU) stores a cache of recently used mappings from the operating system's page table. This is called the [translation lookaside buffer](https://en.wikipedia.org/wiki/Translation_lookaside_buffer) (TLB), which is an associative cache.
  >
  > When a virtual address needs to be translated into a physical address, the TLB is searched first. If a match is found (a *TLB hit*), the physical address is returned and memory access can continue. However, if there is no match (called a *TLB miss*), the memory management unit, or the operating system TLB miss handler, will typically look up the address mapping in the page table to see whether a mapping exists (a *page walk*). If one exists, it is written back to the TLB (this must be done, as the hardware accesses memory through the TLB in a virtual memory system), and the faulting instruction is restarted (this may happen in parallel as well). This subsequent translation will find a TLB hit, and the memory access will continue.


## 📁 处理器

- [时钟周期、振荡周期、机器周期、CPU周期、状态周期、指令周期、总线周期、任务周期 - 木有Some - 博客园](https://www.cnblogs.com/MuyouSome/p/3175806.html)

  > <b style="color:rgb(171, 25, 66)">时钟周期</b>，一般也称振荡周期（如果晶振的输出没有经过分频就直接作为cpu的工作时钟，则时钟周期就等于振荡周期），即CPU的晶振的工作频率的倒数，是计算机中最基本的、最小的时间单位。通常成为节拍脉冲或者T周期。对于单片机时钟周期，时钟周期是单片机的基本时间单位，两个振荡周期(时钟周期)组成一个状态周期。
  >
  > <b style="color:rgb(171, 25, 66)">机器周期</b>，一般也叫CPU周期。在计算机中，为了便于管理，常<u>把一条指令的执行过程划分为若干个阶段（如取指令、存储器读、存储器写等），每一阶段完成一项工作（称为一个基本操作）。</u>完成一个基本操作所需要的时间称为机器周期。一般情况下，一个机器周期由若干个S周期（状态周期）组成。
  >
  > <b style="color:rgb(171, 25, 66)">CPU周期</b>，又称机器周期，<u>CPU周期定义为从内存读取一条指令字的最短时间。</u>一个指令周期常由若干CPU周期构成。
  >
  > > 访问一次内存的时间比访问寄存器、ALU运算的时间都长，因此其他基本操作的时间不会长于一个机器周期。
  >
  > <b style="color:rgb(171, 25, 66)">指令周期</b>是执行一条指令所需要的时间，即CPU从内存取出一条指令并执行这条指令的时间总和。一般由若干个机器周期组成，从取指令、分析指令到执行完所需的全部时间。指令不同，所需的机器周期数也不同。对于一些简单的的单字节指令，在取指令周期中，指令取出到指令寄存器后，立即译码执行，不再需要其它的机器周期。对于一些比较复杂的指令，例如转移指令、乘法指令，则需要两个或者两个以上的机器周期。通常含一个机器周期的指令称为单周期指令，包含两个机器周期的指令称为双周期指令。 
  >
  > ![](https://ws1.sinaimg.cn/large/006PFQeVgy1fv5fgbbk3vj311y0lcnax.jpg)

- [指令周期的数据流 - CSDN博客](https://blog.csdn.net/u011240016/article/details/52733857)

  > ###### 取指周期
  >
  > 首先问，这个部分的核心任务是什么？
  >
  > 从主存中取出指令代码并交到IR中。
  >
  > 上面便是行动的总指南。主存是个宝藏，有各种各样的资源。CPU里面的控制单元是行动的指挥，是个智囊。左右两大护法是MAR和MDR，一个拿着管地址一个管数据。后方PC负责产生MAR需要的地址。也即：左护法听命于PC。 
  > 现在任务来了，因为是取指令，那么地址得先明确，PC把地址告诉MAR,MAR并非事必躬亲，而是把这个地址发送到公交车Bus上。外面总共跑着三班公交车A,D,C：地址总线，数据总线和控制总线。 
  > A路公交车专门搬运地址，D路公交车搬运的是数据，C路公交车搬运的是控制信号。
  >
  > 现在MAR把地址信号放在A路公交车上，就可以把地址送到主存那边，告诉主存需要的东西地址在哪里。但是，主存不会随便操作，它受CU的严密管控。因此，要等一个CU的信号过来，这个信号会乘着C路公交过来。等到它来了，主存愉快的配合把数据拿出来了，放到D路公交车上，开回到CPU，右护法MDR一看数据来了，取出来，再跑过去送给IR,任务完成。

## 杂项

- [博客园：段寄存器”的故事转彻底搞清内存段/elf段/实模式保护模式以及段寄存器](https://www.cnblogs.com/johnnyflute/p/3564894.html)

  > 此时并不是很明白。