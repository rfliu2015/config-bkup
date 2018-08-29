

## 硬件

- [Basic Logic Gates](http://www.ee.surrey.ac.uk/Projects/CAL/digital-logic/gatesfunc/index.html)

## 📁 绪论

- [博客园：机器字长 存储字长 指令字长 数据字长区别](http://www.cnblogs.com/claremore/p/4802881.html)

  > <b style="color:#7fca25">机器字长：</b>CPU一次能处理数据的位数，通常与CPU的寄存器位数有关。 <b style="color:#7fca25">存储字长</b>：存储器中一个存储单元(存储地址)所存储的二进制代码的位数，即存储器中的MDR的位数。 <b style="color:#7fca25">指令字长：</b>计算机指令字的位数。 <b style="color:#7fca25">数据字长：</b>计算机数据存储所占用的位数。 

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

- [地址总线为A15(高位)～A0(低位)，若用1K×4的存储芯片组成4K字节存储器，并且以地址总线的高位做片选，则加在各存储芯片上的地址线是( )](https://wenku.baidu.com/view/ce716730cec789eb172ded630b1c59eef8c79add.html)

  > <u>[解析]</u> 1K×4位芯片说明每个芯片地址数为`1K=2^10`个，则每个芯片需要地址线`10`根。地址线的低10位接到各存储芯片上，即`A9～A0`。
  > <u>[归纳总结]</u> CPU要实现对存储单元的访问，首先要选择存储芯片，即进行<b style="color:blue">片选</b>；然后再从选中的芯片中依地址码选择出相应的存储单元，以进行数据的存取，这称为<b style="color:blue">字选</b>。片内的字选是由CPU送出的N条低位地址线完成的，地址线直接接到所有存储芯片的地址输入端(N由片内存储容量2^N^决定)。<b style="color:rgb(171, 25, 66)">而存储芯片的片选信号则大多是通过高位地址译码或直接连接产生的。</b>
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

- 

## 杂项

- [博客园：段寄存器”的故事转彻底搞清内存段/elf段/实模式保护模式以及段寄存器](https://www.cnblogs.com/johnnyflute/p/3564894.html)

  > 此时并不是很明白。