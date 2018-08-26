## Data Processing By Python And R

### General

- [用Python做科学计算 *by sebug*](http://old.sebug.net/paper/books/scipydoc/index.html)

### ==numpy And Scipy==

#### General

- 不错
  - [Cnblogs: Python使用Numpy--**线性代数**篇](http://www.cnblogs.com/moon1992/p/4960700.html) <!--条目分明，有目录-->
- 傻大全
  - [**Official:** NumPy **functions by category**](https://docs.scipy.org/doc/numpy/reference/routines.html)
  - [**Official:** The N-dimensional array对象的**各种属性和方法**](https://docs.scipy.org/doc/numpy-1.13.0/reference/arrays.ndarray.html)
  - [**Official:** **Linear Algebra (scipy.linalg)**](https://docs.scipy.org/doc/scipy/reference/tutorial/linalg.html)
- 简单一般入门水平
  - [**Official**: Numpy Quickstart **tutorial**](https://docs.scipy.org/doc/numpy-dev/user/quickstart.html) <!--不错的官方材料，时常复习-->
  - [CSDN: Python Numpy 数组的初始化和基本操作](http://blog.csdn.net/Baoli1008/article/details/50531684) <!--基本操作-->
  - [python numpy基础 数组和矢量计算](http://python.jobbole.com/87352/) <!--一般-->

#### Specific

- 傻大全

  - [**Official**: **Array creation routines**](https://docs.scipy.org/doc/numpy-1.13.0/reference/routines.array-creation.html#routines-array-creation)

- 话题很小但不错

  - [CNBLOGS: Numpy中**Meshgrid**函数介绍及2种应用场景](http://www.cnblogs.com/lemonbit/p/7593898.html)

    <img src="https://images2017.cnblogs.com/blog/1088672/201709/1088672-20170925204600792-247576997.jpg" style="zoom:30%"/>

  - [CSDN: numpy生成**随机数组**](http://blog.csdn.net/u013066730/article/details/58590270) <!--很短-->

    ```python
    # 生成长度为10，在[0,1)之间平均分布的随机数组：
    rarray=numpy.random.random((10,)) 
    ```

  - [CSDN: numpy **数组维度**操作 *reshape/flatten/transpose*](https://blog.csdn.net/weixin_38283159/article/details/78793277)

    > transpose函数讲得不错。三维数组的行和深度的转换。x轴和z轴的转换。要自己去想象。

  - [Cnblogs: numpy中的**广播机制**](http://www.cnblogs.com/jiaxin359/p/9021726.html) <!--原理和图示解释不错。-->

    > <u>*利用python进行数据分析*</u> 第十一章 广播，本书的图片和广播的原则的描述都来自本书 。
    >
    > 一个应用：[Stackoverflow: numpy: multiply arrays rowwise](https://stackoverflow.com/questions/22934219/numpy-multiply-arrays-rowwise)

  - [Comparing two **numpy arrays for equality**, element-wise](https://stackoverflow.com/questions/10580676/comparing-two-numpy-arrays-for-equality-element-wise) 
    ```python
     >>> numpy.array([1,1,1]) == numpy.array([1,1,1])
    array([ True,  True,  True], dtype=bool)
    # 当数组维度相等时就会这样；否则直接返回一个bool
    ```

    > 一个例子 [Stackoverflow: Testing if the matrix is a symmetric or skew-symmetric?](https://stackoverflow.com/questions/25602717/testing-if-the-matrix-is-a-symmetric-or-skew-symmetric)

  - [简书：NumPy的**梯度函数**](https://www.jianshu.com/p/0b7ae131ed29) :warning:

    ```python
    In [147]: c=np.random.randint(0,50,(3,5))
    In [148]: c
    Out[148]: 
    array([[ 6, 21, 42, 22, 11],
           [48, 12, 28, 32, 49],
           [15, 44, 40, 42, 45]])
    
    In [149]: np.gradient(c)
    Out[149]: 
    [array([[ 42. ,  -9. , -14. ,  10. ,  38. ],
            [  4.5,  11.5,  -1. ,  10. ,  17. ],
            [-33. ,  32. ,  12. ,  10. ,  -4. ]]),  #最外层维度的梯度
     array([[ 15. ,  18. ,   0.5, -15.5, -11. ],
            [-36. , -10. ,  10. ,  10.5,  17. ],
            [ 29. ,  12.5,  -1. ,   2.5,   3. ]])]  #第二层维度的梯度
    ```

    > [记录：Numpy(v1.11.1)梯度函数存在的一个问题](https://www.jianshu.com/p/81c8dc55f076)



### ==matplotlib.pyplot==

#### General

- ###### 不错

  - [用Python做科学计算：matplotlib-绘制精美的图表](http://old.sebug.net/paper/books/scipydoc/matplotlib_intro.html#)  <!--原理讲得不错，有目录。佳-->

  - [matplotlib - **2D and 3D plotting** in Python](http://nbviewer.jupyter.org/github/jrjohansson/scientific-python-lectures/blob/master/Lecture-4-Matplotlib.ipynb)

    > 极好的一篇文章。对其翻译有一下两个。大致相同。可以相互补充。
    >
    > - [知乎：【翻译搬运】Matplotlib - 用Python绘制2D和3D图像](https://zhuanlan.zhihu.com/p/29740724)
    > - [腾讯云：【Python环境】matplotlib - 2D 与 3D 图的绘制](https://cloud.tencent.com/developer/article/1045483) <!--有目录-->

    > 如果我们不在意坐标轴在图中的排放位置️，那么就可以使用matplotlib的布局管理器了，我最喜欢的是subplots。

  - [Python 数值计算 —— 绘图与可视化 by GreatX](https://vlight.me/2018/04/14/Numerical-Python-Plotting-and-Visualization/)

    > 对Matplotlib画图的基本原理讲得最好。

    > Matplotlib 中的图形是根据 Figure 实例和 figure 中的一个或多个 Axes 实例构建而成的。Figure 实例为绘图提供了一个画布区域(Canvas)，而 Axes 实例则提供了坐标系，用于分配给画布的特定区域。
    >
    > In most cases, add_subplot would be the prefered method to create axes for plots on a canvas. Only in cases where exact positioning matters, add_axes might be useful. 

  - [matplotlib常用用法总结（持续更新） - 简书](https://www.jianshu.com/p/538b5e776405) <!--不错-->

  - [Scipy Lecture Notes: 1.4. Matplotlib: plotting](http://www.scipy-lectures.org/intro/matplotlib/matplotlib.html)

    > 网页做的很好看；有目录，条理清晰，逐步增加，很好的tutorial。可复习多看。
    >

    > Axes are very similar to `subplots` but allow placement of plots at any location in the figure. So if we want to put a smaller plot inside a bigger one we do so with `axes`.

  - ["Artist" in matplotlib - something I wanted to know before spending tremendous hours on googling how-tos](https://dev.to/skotaro/artist-in-matplotlib---something-i-wanted-to-know-before-spending-tremendous-hours-on-googling-how-tos--31oo)

    > 对figure和axes的配合说得很好。网页较长。
- **傻大全**
  - [**Official:** pyplot tutorial](https://matplotlib.org/tutorials/introductory/pyplot.html) <!--最后才会看-->
  - [脚本之家：利用matplotlib+numpy绘制**多种绘图的方法实例**](http://www.jb51.net/article/112805.htm) <!--对代码简要分析不错。不错-->
- 尚可
  - [伯乐在线：Python--matplotlib绘图**可视化知识点整理**](http://python.jobbole.com/85106/) <!--参数齐全；没有目录。尚可-->

  - [**Official**: Matplotlib FAQ](https://matplotlib.org/faq/usage_faq.html)

    > General Concepts; Parts of a Figure; Figure(Axes Axis Artist); Types of inputs to plotting functions;
    > Matplotlib, pyplot and pylab: how are they related?; **Coding Styles**
    >
    > 对一些概念的澄清和基本usage pattern使用还好。

  - [CSDN: matplotlib入门之Pyplot](http://blog.csdn.net/lilongsy/article/details/72903339) <!--关于正确使用讲得不错；没有目录，原理和比喻。-->
-  放弃
  - [Matplotlib tutorial](http://www.labri.fr/perso/nrougier/teaching/matplotlib/) <!--个人博客，简略全，旁边有参考链接-->
  - [Matplotlib 教程 | 始终](https://liam0205.me/2014/09/11/matplotlib-tutorial-zh-cn/)  <!--翻译的上文。使用Pylab，不喜欢-->

#### Specific Items

- 不错
  - [Matplotlib Tutorial: **Contour Plots**](https://www.python-course.eu/matplotlib_contour_plot.php) <!--好-->

  - [Github: python使用matplotlib:**subplot**绘制多个子图](https://github.com/gatieme/AderXCoding/tree/master/language/python/matplotlib/subplot)

    > 对不规则划分。将整个表按照 `2*2` 划分 前两个简单, 分别是 `(2, 2, 1)` 和 `(2, 2, 2)`。但是第三个图呢, 他占用了 `(2, 2, 3)` 和 `(2, 2, 4)`。显示需要对其重新划分, 按照 `2 * 1` 划分，前两个图占用了 `(2, 1, 1)` 的位置。因此第三个图占用了 `(2, 1, 2)` 的位置。

  - [【Matplotlib】详解图像各个部分](https://www.bbsmax.com/A/A7zg0mlJ4n/) <!--也不算详解，但是不错-->



### ==NetCDF4 Usage==

- [Python - NetCDF reading and writing example with plotting](http://schubert.atmos.colostate.edu/~cslocum/netcdf_example.html)

### ==Basemap Usages==

- [Official: Basemap tutorial](http://basemaptutorial.readthedocs.io/en/latest/index.html) <!--全面-->
- [Visualization: Mapping Global Earthquake Activity](http://introtopython.org/visualization_earthquakes.html#Making-a-simple-map) <!--步骤清晰-->
- [Matplotlib: Welcome to the Matplotlib Basemap Toolkit documentation](https://matplotlib.org/basemap/) <!--全面，友好度差-->
- [【python数据挖掘课程】二十二.Basemap地图包安装入门及基础知识讲解](https://blog.csdn.net/Eastmount/article/details/79188415)

- [用Python画一个中国地图](https://segmentfault.com/a/1190000010871928)
- [用Python画中国地图（二）](https://segmentfault.com/a/1190000010900212)



### ==R==

- [R语言教程](https://www.w3cschool.cn/r/r_overview.html)

#### R Packages 

- [Official: tidyverse](https://tidyverse.tidyverse.org/)

## PCA分析

### 数学原理

- [微信：PCA的数学原理](https://mp.weixin.qq.com/s?__biz=MzA5ODUxOTA5Mg==&mid=2652551576&idx=1&sn=17a125bb29001b3d8d5e3964dcc599a3&chksm=8b7e48c3bc09c1d55dbab168011cba2a853af5623a24a499a2ae110a4facb07c2a4bd033da36&mpshare=1&scene=1&srcid=0215K8Erw9w6Uyd87m9vhuYj&pass_ticket=RPhJQZi%2FHiN0ojf6DM%2BOQqSKwbBsCSiCCEweJmjcb%2BoCW%2FoH9mjFAG%2F5HUyAzysF#rd) <!--数学原理的解释极好-->

- [CSDN：主成分分析（PCA）-最大方差解释](https://blog.csdn.net/huang1024rui/article/details/46662195) <!--数学处理步骤详细，以及最大方差解释不错-->

- [文库：主分量分析与核主分量分析](https://wenku.baidu.com/view/42c002264b35eefdc8d33311#20) <!--49页-->

- [Bilibili：机器学习数学基础_PCA](https://www.bilibili.com/video/av22519623?from=search&seid=13946604917998003074)

- [文库：对EOF分解的自己的理解](https://wenku.baidu.com/view/abea8b1b6bd97f192279e9e1)

  > 这个还是蛮不错的。因为对两个变量（指标）的n次样本，说明了主成分y~1~和y~2~是降维后的变量（若有n个点，则为n维），y~1~=y~1~(t)，是关于时间的函数，也就是主分量PC(t)，其几何含义是坐标轴旋转。

### 实现

- [In Depth: Principal Component Analysis](https://jakevdp.github.io/PythonDataScienceHandbook/05.09-principal-component-analysis.html) 

  > An excerpt from the *Python Data Science Handbook*

- [文库：matlab经验正交函数EOF(转载)](https://wenku.baidu.com/view/e64ba4691eb91a37f1115c0b.html?from=search) <!--解法步骤条例清晰，编程参考-->

- [Ajdawson eof package in Python](http://ajdawson.github.io/eofs/api/eofs.standard.html#eofs.standard.Eof)

  > ***Warning: The first dimension is assumed to represent time.***

### Python实现

- [sklearn.decomposition. PCA方法中fit, fit_transform, transform应该怎么用](http://sofasofa.io/forum_main_post.php?postid=1000389)  <!--很好的文章-->
- [Principal Component Analysis (PCA) in Python](https://stackoverflow.com/questions/13224362/principal-component-analysis-pca-in-python) <!--一个手动计算的实例-->
- [scikit-learn中PCA的使用方法](https://blog.csdn.net/u012162613/article/details/42192293)
- [使用 PCA 进行降维处理——基于 sklearn 库](http://buptguo.com/2015/04/19/pca-by-sklearn/)
- [知乎：EOF/PCA的python实践](https://zhuanlan.zhihu.com/p/31445649)
- [PCA in numpy and sklearn produces different results](https://stats.stackexchange.com/questions/235882/pca-in-numpy-and-sklearn-produces-different-results) <!--标准化处理-->

## Rotated PCA

- [How to compute varimax-rotated principal components in R?](https://stats.stackexchange.com/questions/59213/how-to-compute-varimax-rotated-principal-components-in-r)

- [perform varimax rotation in python using numpy](https://stackoverflow.com/questions/17628589/perform-varimax-rotation-in-python-using-numpy) <!--垃圾-->