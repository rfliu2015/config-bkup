# Curriculums

[TOC]

---

# General

- [专栏 - 计算机理论基础: Forec's notes](http://blog.forec.cn/columns/cs-basic.html)

  > 个人的计算机笔记整理。含有操作系统部分（较详细）和计算机组成原理部分（简略）。可以参考操作系统部分。

- [Learning How to Learn](https://zilongshanren.com/blog/2017-05-09-learning-how-to-learn.html#sec-2-7)

  > 在IT行业，学习的一些好习惯和坏习惯。

# Specific

## 计算机语言

##### Article 1

> [伯乐在线：**C程序编译过程浅析**](http://blog.jobbole.com/109399/) 
>
> <!--从一个gcc编译c程序的实例出发，通过详细的cli命令和适当的图片展示了整个过程。Practical。-->
>
> 这里的一个例子，在代码展示方面更详细，二者补充：[C代码 从源代码到可执行文件——编译全过程解析](https://www.jianshu.com/p/8dc5b0689b53)

> 前几天看了《程序员的自我修养——链接、装载与库》中的第二章“编译和链接”，主要根据其中的内容简单总结一下C程序编译的过程吧。 

##### Article 2

> [**高级语言的编译：链接及装载过程介绍**](https://cloud.tencent.com/developer/article/1057759)
>
> <!--更深入的一个说明，从引言、CPU体系结构，操作系统介绍，更侧重编译器原理角度。-->

> 本文的初衷是让工程师对程序源代码如何通过编译器，链接器和装载器最终成为一个进程运行在系统中的整个过程有一个基本的理解，所以并不会涉及到编译器如何通过进行词法分析，语法分析和语义分析最终得到目标二进制文件。因此本文剩下的部分主要集中在 gcc/g++ 如何形成一个 Linux 认识的 elf 可执行文件的。 

##### Article 3

> [**C函数调用过程原理及函数栈帧分析** - 编程之道 - SegmentFault 思否](https://segmentfault.com/a/1190000007977460)
>
> <!--蛮不错，并不晦涩-->

> 这里有需要注意的是，上面例子中栈的生长方向是从高地址到低地址的，这是因为在下文讲的栈帧中，栈就是向下生长的，因此这里也用这种形式的栈。(在经典的操作系统里，栈总是向下增长的。在 i386 里，栈顶由称为`esp`的寄存器进行定位。压栈的操作使得栈顶的地址减小，弹出的操作使得栈顶地址增大。『[栈与函数调用](http://gaunthan.leanote.com/post/%E6%A0%88%E4%B8%8E%E5%87%BD%E6%95%B0%E8%B0%83%E7%94%A8)』)
>
> 栈帧，也就是*stack frame*，其本质就是一种栈，只是这种栈专门用于保存函数调用过程中的各种信息（参数，返回地址，本地变量等）。栈帧有栈顶和栈底之分，其中栈顶的地址最低，栈底的地址最高，`SP`(栈指针)就是一直指向栈顶的。在x86-32bit中，我们用` %ebp `指向栈底，也就是基址指针；用` %esp `指向栈顶，也就是栈指针。![](https://segmentfault.com/img/remote/1460000007977465)
>
> 一般来说，我们将 `%ebp` 到` %esp `之间区域当做栈帧（也有人认为该从函数参数开始，不过这不影响分析）。并不是整个栈空间只有一个栈帧，每调用一个函数，就会生成一个新的栈帧。在函数调用过程中，我们将调用函数的函数称为“调用者(caller)”，将被调用的函数称为“被调用者(callee)”。在这个过程中，
>
> 1. “调用者”需要知道在哪里获取“被调用者”返回的值；
> 2. “被调用者”需要知道传入的参数在哪里，
> 3. 返回的地址在哪里。
>
> 同时，我们需要保证在“被调用者”返回后，`%ebp`, `%esp` 等寄存器的值应该和调用前一致。因此，我们需要使用栈来保存这些数据。

> ![](https://segmentfault.com/img/remote/1460000007977466)
>
> 此时调用者做了两件事情：
>
> 1. 将被调用函数的参数按照从右到左的顺序压入栈中。
> 2. 将返回地址压入栈中。这两件事都是调用者负责的，因此压入的栈应该属于调用者的栈帧。
>
> 我们再来看看被调用者，它也做了两件事情：
>
> 1. 将老的（调用者的）` %ebp `压入栈，此时 `%esp `指向它。
> 2. 将` %esp `的值赋给` %ebp`,` %ebp `就有了新的值，它也指向存放老` %ebp `的栈空间。这时，它成了是函数` MyFunction() `栈帧的栈底。这样，我们就保存了“调用者”函数的` %ebp`，并且建立了一个新的栈帧。



# 经典书籍笔记

### 「深入理解计算机系统」

- [《深入理解计算机系统》| **信息的表示和处理**](https://www.jianshu.com/p/58cb75d9404e?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation)

### 「计算机网络：自顶向下方法Sixth」

![](https://upload-images.jianshu.io/upload_images/2941343-c76b682f3ff23a2e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/318)

#### 第一章 计算机网络和因特网

- [简书：Chapter one: 计算机网络和因特网](https://www.jianshu.com/p/d388d0528524)
- [第一章复习题 by Wonter](https://www.jianshu.com/p/4158a9258b01)
- [第一章复习题 by maxwellyue](https://www.jianshu.com/p/47f1adf5fb1f)

#### 第二章 应用层

- [简书：计算机网络自顶向下——应用层 by 牛严](https://www.jianshu.com/p/48f2bebaeb40)
- [简书：读书笔记——应用层 by Hans941](https://www.jianshu.com/p/1b53e88e5864?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation)

#### 第三章 运输层

- [简书：计算机网络自顶向下——运输层 by 牛严](https://www.jianshu.com/p/0bbc559e7b05)

#### 第四章 网络层

- [简书：计算机网络自顶向下——网络层 by 牛严](https://www.jianshu.com/p/78330d05537c)

#### 第五帮 网络层

- [简书：计算机网络自顶向下——链路层 by 牛严](https://www.jianshu.com/p/16c716ec06b7)