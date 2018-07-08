# Basic

- [Java中equals，hashcode和==的区别](https://blog.csdn.net/hla199106/article/details/46907725)

  > - 对象是放在堆中的，栈中存放的是对象的引用（地址）。由此可见'=='是对栈中的值进行比较的。如果要比较堆中对象的内容是否相同，那么就要重写equals方法了。
  > - 看一下源码大家都会明白，对于`-128`到`127`之间的数，会进行缓存，下次再写`Integer inew = 127`时，就会直接从缓存中取，就不会new了。
  > - hash码的主要用途就是在对对象进行散列的时候作为key输入，据此很容易推断出，我们需要每个对象的hash码尽可能不同，这样才能保证散列的存取性能。事实上，Object类提供的默认实现确实保证每个对象的hash码不同（在对象的内存地址基础上经过特定算法返回一个hash码）。Java采用了哈希表的原理。
  > - **规范1：**若重写`equals(Object obj)`方法，有必要重写`hashcode()`方法，确保通过`equals(Object obj)`方法判断结果为true的两个对象具备相等的`hashcode()`返回值。说得简单点就是：“如果两个对象相同，那么他们的hashcode应该相等”。
  > - **规范2：**如果`equals(Object obj)`返回false，即两个对象“不相同”，并不要求对这两个对象调用`hashcode()`方法得到两个不相同的数。说的简单点就是：“如果两个对象不相同，他们的hashcode可能相同”。 

# 图形

## General

- [Java笔记(10)-图形界面设计、Swing、窗口、JFrame、常用组件和布局、处理事件、MVC结构、对话框、GUI](https://blog.csdn.net/Peng_Hong_fu/article/details/52682179)

##  Specific

### 傻大全

- [**Official:** A Visual Guide to Layout Managers](https://docs.oracle.com/javase/tutorial/uiswing/layout/visual.html)
- [**Official:**  How to Use GridLayout](https://docs.oracle.com/javase/tutorial/uiswing/layout/grid.html)

- [**Official:** How to Use Borders](https://docs.oracle.com/javase/tutorial/uiswing/components/border.html)

- [**Official:** How to Use Scroll Panes](https://docs.oracle.com/javase/tutorial/uiswing/components/scrollpane.html)

- [**Official:** How to Use Tables](https://docs.oracle.com/javase/tutorial/uiswing/components/table.html)

## Petty

- [Java中setSize(),setLocation()和setBounds()的关系](https://blog.csdn.net/u011235543/article/details/51892500)
- [Java: Difference between the setPreferredSize() and setSize()](https://stackoverflow.com/questions/1783793/java-difference-between-the-setpreferredsize-and-setsize-methods-in-compone)
- [**Official:** A Closer Look at the *Paint Mechanism*](https://docs.oracle.com/javase/tutorial/uiswing/painting/closer.html) <!--super.paintComponet-->
- [Java中***paint, repaint, update***之间的关系(闪烁问题的解决)](http://blog.csdn.net/sangjinchao/article/details/53052897)
- [A Closer Look at the **Paint Mechanism**](https://docs.oracle.com/javase/tutorial/uiswing/painting/closer.html) <!--super.paintComponet-->

## Questions

- [StackOverflow：JInternalFrame is not show](https://stackoverflow.com/questions/22546762/jinternalframe-is-not-show)

  > 在`desktopPane.add(JInternalFrame)`之后，`JInternalFram.setVisible(true)`; 的顺序



#  结构化数据

###  General
- [Java - Collection实例**简略**解析](http://blog.csdn.net/itlwc/article/details/10148321)
- [Java集合框架之Collection实例**详细**解析](http://blog.csdn.net/qq_28261343/article/details/52614411)
- [Java**遍历**集合的几种方法分析（实现原理、算法性能、适用场合）](http://www.cnblogs.com/xyhuangjinfu/p/5429644.html)
- [java提高篇(三十)-----Iterator](http://cmsblogs.com/?p=1185)
- [java的**iterator删除**机制](http://www.cnblogs.com/hasse/p/5024193.html)

### Specific

- [java的set集合的遍历, 和**倒序遍历**](http://blog.csdn.net/shenshen123jun/article/details/9074097)

  > ```java
  > /* 遍历方法一，迭代遍历*/
  > for(Iterator<String> iterator = set.iterator(); iterator.hasNext();){
  >     System.out.print(iterator.next() + " ");
  > }
  > 
  > 
  > /** for增强循环遍历 */
  > for(String value : set){
  >     System.out.print(value + " ");
  > }
  > ```

- [java Set集合**详解**](http://blog.csdn.net/qq_33642117/article/details/52040345)

- [HashMap和Hashtable的区别](http://www.importnew.com/7010.html)



#  面对对象技术

### 设计模式

- [工厂模式——看这一篇就够了](https://www.jianshu.com/p/83ef48ce635b)

  > 对于入门肯定有余——我现在也就这水平。包括定义、使用场景、实例。不过缺少和不用模式的比较。
  >
  > 我们知道Java里边共有23种设计模式而工厂模式就有三种，它们分别是简单工厂模式（并不在23种模式之中），工厂方法模式以及抽象工厂模式，其中我们通常所说的工厂模式指的是工厂方法模式，工厂方法模式是日常开发中使用频率最高的一种设计模式，甚至在Android的源码中也是随处可见。
  >
  > **工厂方法模式**：定义一个用于创建对象的接口，让子类决定将哪一个类实例化。工厂方法模式让一个类的实例化延迟到其子类。

- [CSDN：从接口、抽象类到工厂模式再到JVM来总结一些问题](https://blog.csdn.net/zs492761271/article/details/53735302)

  > 大块头。讲的相当充实，语言轻快。需要细细思考消化。

- [开源中国：OOP-关于面向对象的哲学体系及科学体系的探讨](https://my.oschina.net/u/1409620/blog/290631)

  > 大块头。很有趣，需要细细思考消化。

###  Specific
- [Java提高篇——对象克隆, 原因，实现，要点](http://www.cnblogs.com/Qian123/p/5710533.html)
- [ActionListener的三种实现方法](https://my.oschina.net/MissLee/blog/203949)
- [java提高篇(八)----详解内部类](http://www.cnblogs.com/chenssy/p/3388487.html)
- [java提高篇(九)----详解匿名内部类](http://blog.csdn.net/chenssy/article/details/13170015)
- [Java匿名类也能使用构造函数](https://my.oschina.net/sub/blog/222790)  <!--简短有趣的一个小程序计算功能-->

- [java提高篇(五)—–抽象类与接口](http://cmsblogs.com/?p=56)

- [Java中实现对象的比较：Comparable接口和Comparator接口](http://www.cnblogs.com/Kevin-mao/p/5912775.html)
- [Java 中 Comparable 和 Comparator 比较](http://www.cnblogs.com/skywang12345/p/3324788.html)



#  常用API或类库
##  字符串
- [String、StringBuffer、与StringBuilder的区别](http://www.cnblogs.com/sevenlin/p/sevenlin_StringBuffer_StringBuilder20150806.html)
- [Java String类的常用方法汇总](http://www.jb51.net/article/88331.htm) 
- [Java – String Class and its methods explained with examples](https://beginnersbook.com/2013/12/java-strings/)
- [Java String examples](http://www.java-examples.com/java-string-examples)
- [StringBuffer](https://docs.oracle.com/javase/8/docs/api/java/lang/StringBuffer.html)和[StringBuilder](https://docs.oracle.com/javase/8/docs/api/java/lang/StringBuilder.html)
- [String、StringBuffer、与StringBuilder的区别](http://www.cnblogs.com/sevenlin/p/sevenlin_StringBuffer_StringBuilder20150806.html)
- [StringBuffer与StringBuilder的区别，及实现原理](http://www.cnblogs.com/myhappylife/p/6542633.html)

## 日期

- [Java 8 – Get Current Date and Time](https://beginnersbook.com/2017/09/java-8-get-current-date-and-time/)

  > 三个类`ava.time.LocalDate`,`java.time.LocalTime` &`java.time.LocalDateTime`



##  正则表达式

- [Java 正则表达式详解](https://segmentfault.com/a/1190000009162306)
- [Java正则表达式Pattern和Matcher类详解，以及matcher方法区别](http://blog.csdn.net/yin380697242/article/details/52049999)



#  文件和I/O

- [java.io.File](https://docs.oracle.com/javase/8/docs/api/java/io/File.html)

- [File 类**源代码**解析](http://czj4451.iteye.com/blog/1507760)
- [java.util.Scanner](https://docs.oracle.com/javase/7/docs/api/java/util/Scanner.html)
- [Java Scanner tutorial and examples](http://javatutorialhq.com/java/util/scanner-class-tutorial/)
- [Java Scanner general description](http://www.tutorialspoint.com/java/util/java_util_scanner.htm)



#  异常

- [Java异常处理的**要点总结**](http://lavasoft.blog.51cto.com/62575/18920/)

- [Java有效处理异常三**原则**](http://www.importnew.com/1701.html)
- [9 Best Practices to Handle Exceptions in Java](https://stackify.com/best-practices-exceptions-java/)
- [Exceptions: Why throw early? Why catch late?](https://softwareengineering.stackexchange.com/questions/231057/exceptions-why-throw-early-why-catch-late)
- [The **try-with-resources** Statement](https://docs.oracle.com/javase/tutorial/essential/exceptions/tryResourceClose.html)

#  数字

- [浮点数的舍入](http://cmsblogs.com/?p=54)


# 数据处理

- [*JAMA* : A Java Matrix Package](http://math.nist.gov/javanumerics/jama/)
- [JAMA Matrix Document](http://math.nist.gov/javanumerics/jama/doc/)
- [JAVA矩阵包JAMA学习](http://blog.csdn.net/liuzhoulong/article/details/47005659)
