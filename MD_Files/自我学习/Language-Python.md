# Basic

- [Python列表解析详解](http://python.jobbole.com/83884/) <!--比较基础，没有什么可看的内容-->

  ```python
  # 注意顺序
  flattened = [n for row in matrix for n in row]
  ```

- [RealPython：Python **String Formatting**](https://realpython.com/python-string-formatting/)

  ```python
  # Python 3.6
  >>> a = 5
  >>> b = 10
  >>> print(f'Five plus ten is {a + b} and not {2 * (a + b)}.')
  'Five plus ten is 15 and not 30.'
  ```

- ###### 不具有实用性

  - [**深入分析**Python 中 eval 带来的潜在风险](http://python.jobbole.com/82770/)

  - [Python中的exec、eval使用实例](http://www.jb51.net/article/55529.htm)

  - [使用import匯入模組](https://openhome.cc/Gossip/Python/ImportImportAsFrom.html)

# 进阶


- [完全理解Python**迭代对象、迭代器、生成器**](https://foofish.net/iterators-vs-generators.html) :thumbsup:

  > <!--讲的很好，由浅入深，原理细节可谓翔实，而且并不晦涩。图示做的很好！-->
  >
  > 作为补充：[python黑魔法---迭代器（iterator）](https://www.jianshu.com/p/dcf83643deeb)
  >
  > > 试想想在迭代指针还没指到的当前元素时候，已经迭代之后的位置元素，那些元素需要计算么？……没错，这就是迭代器的一大魅力，惰性计算。
  > >
  > > 前面所言python内置实现了各种迭代协议，for循环就是一个很好的例子。……循环结束的时候，自动处理了 StopIteration这个异常。for循环是对迭代器进行迭代的语法糖。无处不在的语法糖。
  >
  > 生成器在Python中是一个非常强大的编程结构，可以用更少地中间变量写流式代码，此外，相比其它容器对象它更能节省内存和CPU，当然它可以用更少的代码来实现相似的功能。现在就可以动手重构你的代码了，但凡看到类似：
  >
  > ```python
  > def something():
  >     result = []
  >     for ... in ...:
  >         result.append(x)
  >     return result
  > 
  > # 都可以替换成
  > def iter_something():
  >     for ... in ...:
  >         yield x
  > ```
  >



# File and I/O

- ##### 还不错

  - [博客园：python3中，**os.path**模块下常用的用法总结](https://www.cnblogs.com/renpingsheng/p/7065565.html)

    > 开头是各个函数的链接。有中英文说明还有例子。不错。

    ```python
    # splitext: 分割文件名，返回由文件名和扩展名组成的元组
    # Split the extension from a pathname.
    # Extension is everything from the last dot to the end, ignoring
    # leading dots.  Returns "(root, ext)"; ext may be empty.
    >>> os.path.splitext("/home/test.sh")
    ('/home/test', '.sh')
    >>> os.path.splitext("/tmp/f1.txt")
    ('/tmp/f1', '.txt')
    ```

  - [脚本之家：Python open()文件处理使用介绍](http://www.jb51.net/article/58002.htm)

    > 对open()的语法、参数做了足够详细说明，而且给出了测试。

    > ###### 常见的mode取值组合
    >
    > - `r`或`rt`：默认模式，文本模式读
    >   `rb`：二进制文件
    >
    > - `w`或`wt`：文本模式写，打开前文件存储被清空
    >   `wb`：二进制写，文件存储同样被清空
    >
    > - `a`：追加模式，只能写在文件末尾
    >   `a+`：可读写模式，写只能写在文件末尾
    >
    > - `w+`：可读写，与a+的区别是要清空文件内容
    > - `r+`：可读写，与a+的区别是可以写到文件任何位置

- ###### 傻大全

  - [os.path — Common pathname manipulations](https://docs.python.org/3/library/os.path.html)



# 应用广泛的库

## 时间

- ##### 不错

  - [  Python 3 标准库实例教程：time — 时间模块](http://www.hjqjk.com/2017/Python-time-module.html#time%E6%A8%A1%E5%9D%97)

    > <!--适合慢读，深入了解python时间模块，并且自己总结。总之是需要花时间认真思考的部分。-->

  - [Linux公社：Python之日期与时间处理模块（date和datetime）](https://www.linuxidc.com/Linux/2017-02/140243.htm)

    > <!--基本术语，函数说明，代码示例(交互模式)都不错。图示不怎么样-->

- ##### 中规中矩

  - [Hjqjk's Blog：python time模块](http://www.hjqjk.com/2017/Python-time-module.html#time%E6%A8%A1%E5%9D%97)

    > <!--文字解释、图示、代码的解释极简明缺少某些部分，然而网页友好，逻辑清晰完善-->

## RE

- [re — Regular expression operations(官方文档)](https://docs.python.org/3/library/re.html)
- [python正则表达式re模块详细介绍](http://www.jb51.net/article/50511.htm)
- [Python detailed Re Match, Search Examples - Dot Net Perls](https://www.dotnetperls.com/re-python)



# Web Crawler

### General

- [知乎：Python入门网络爬虫之精华版](https://github.com/lining0806/PythonSpiderNotes)
- [知乎：宁哥的小站之爬虫部分](http://www.lining0806.com/category/spider/)

### Requests & Beautiful Soup

- ##### 傻大全的参考文档

  - [Requests: HTTP for Humans](http://www.python-requests.org/en/master/)

  - [Beautiful Soup 4.4.0. 文档](http://beautifulsoup.readthedocs.io/zh_CN/latest/#)

    > <!--这个中文版没有侧边目录，而英文版的正好有，两者刚好互补了。-->
    >
    > 英文版[Beautiful Soup Documentation](https://www.crummy.com/software/BeautifulSoup/bs4/doc/)

### Scrapy

- [博客园：Scrapy简单入门及实例讲解](https://www.cnblogs.com/kongzhagen/p/6549053.html)

  > <!--确实简单入门和实例讲解，大概三个事例看起来还有些意思，不过对现在的我没啥用。-->



# 书籍阅读

## 流畅的Python

 <img src="https://upload-images.jianshu.io/upload_images/906960-d491862659f9ddbe.png" style="zoom:5%"/>

- [简书：《流畅的 Python》 读后感&笔记](https://www.jianshu.com/p/36c40147e64a)

  > <!--完全讲的自己对每一个章节的读后感，更重要的是做了很详细的思维导图笔记！-->

- [流畅的python要点整理](https://www.jianshu.com/p/7a831fe1d484)

## Problem Solving with Algorithms and Data Structure Using Python

- [problem-solving-with-algorithms-and-data-structure-using-python 中文版](https://facert.gitbooks.io/python-data-structure-cn/)

## Python 3 标准库实例教程

- [Pymotw.com 的中文翻译，实例讲解 Python 3 标准库，简单易懂](https://pythoncaff.com/docs/pymotw)

  > <!--有目录，翻译很新，上佳！-->

## Python 最佳实践指南

- [Python 最佳实践指南 2018 ](https://pythoncaff.com/docs/python-guide/2018)

  > <!--和上一本书一个网站-->

# 社区

- [Python Caff - 高品质的python开发者社区](https://pythoncaff.com/)