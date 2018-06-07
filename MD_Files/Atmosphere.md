## map

- [地图慧](http://www.dituhui.com/)

## 数据分析工具

### General

- [6 种 Python 数据可视化工具](http://python.jobbole.com/85601/)
- [10个超实用的数据可视化库](http://nooverfit.com/wp/10%E4%B8%AA%E8%B6%85%E5%AE%9E%E7%94%A8%E7%9A%84python%E5%8F%AF%E8%A7%86%E5%8C%96%E5%BA%93%EF%BC%8C%E6%80%BB%E6%9C%89%E4%B8%80%E6%AC%BE%E9%80%82%E5%90%88%E4%BD%A0/)

### Specific

- [BDP个人版](https://me.bdp.cn/home.html)
- [ECharts](http://echarts.baidu.com/)
- [visdom](https://github.com/facebookresearch/visdom)
- [Python 数据可视化之PyEcharts](https://zhuanlan.zhihu.com/p/27990382)



## Data Processing

### ==numpy And Scipy==

#### General

- [Cnblogs: Python--**线性代数**篇](http://www.cnblogs.com/moon1992/p/4960700.html) <!--条目分明-->
- [Official: NumPy **functions by category**](https://docs.scipy.org/doc/numpy/reference/routines.html)
- [Official: The N-dimensional array](https://docs.scipy.org/doc/numpy-1.13.0/reference/arrays.ndarray.html)
- [CSDN: Python Numpy 数组的初始化和基本操作](http://blog.csdn.net/Baoli1008/article/details/50531684) <!--基本操作-->
- [python numpy基础 数组和矢量计算](http://python.jobbole.com/87352/) <!--一般-->
- [Official: Linear Algebra (scipy.linalg)](https://docs.scipy.org/doc/scipy/reference/tutorial/linalg.html)
- [Official: Numpy Quickstart tutorial](https://docs.scipy.org/doc/numpy-dev/user/quickstart.html)

#### Specific

- [Official: Array creation routines](https://docs.scipy.org/doc/numpy-1.13.0/reference/routines.array-creation.html#routines-array-creation)

#### Other Items

- [CSDN: numpy生成**随机数组**](http://blog.csdn.net/u013066730/article/details/58590270)
- [CSDN: numpy **数组维度**操作 *reshape/flatten/transpose*](https://blog.csdn.net/weixin_38283159/article/details/78793277)
- [Cnblogs: numpy中的**广播机制**](http://www.cnblogs.com/jiaxin359/p/9021726.html)

#### Questions

- [Stackoverflow: numpy: multiply arrays rowwise](https://stackoverflow.com/questions/22934219/numpy-multiply-arrays-rowwise)
- [Numpy中Meshgrid函数介绍及2种应用场景](http://www.cnblogs.com/lemonbit/p/7593898.html)
- [Stackoverflow: Testing if the matrix is a symmetric or skew-symmetric?](https://stackoverflow.com/questions/25602717/testing-if-the-matrix-is-a-symmetric-or-skew-symmetric)



### ==matplotlib.pyplot==

#### General

- [pyplot tutorial(官网)](https://matplotlib.org/tutorials/introductory/pyplot.html)
- [Matplotlib tutorial](http://www.labri.fr/perso/nrougier/teaching/matplotlib/) <!--个人博客，简略全，旁边有参考链接-->
- [Matplotlib 教程 | 始终](https://liam0205.me/2014/09/11/matplotlib-tutorial-zh-cn/)  <!--翻译的上文-->
- [matplotlib入门之Pyplot](http://blog.csdn.net/lilongsy/article/details/72903339)
- [Python--matplotlib绘图可视化知识点整理](http://python.jobbole.com/85106/)
- [利用matplotlib+numpy绘制多种绘图的方法实例](http://www.jb51.net/article/112805.htm)

#### Specific

- [Matplotlib Tutorial: Contour Plots](https://www.python-course.eu/matplotlib_contour_plot.php) <!--好-->

### 鸡零琐碎

- [CSDN: Python 小数点精度控制](http://blog.csdn.net/zhongbeida_xue/article/details/51274760)



## NetCDF4-Python

### Installation

- [Github: 脚本install_netcdf4.sh](https://gist.github.com/perrette/cd815d03830b53e24c82) <!--很好-->
- [GoogleCode: netcdf4-python - UbuntuInstall.wiki](https://gist.github.com/perrette/cd815d03830b53e24c82)
- [Official: Unidata: Getting and Building netCDF](https://www.unidata.ucar.edu/software/netcdf/docs/getting_and_building_netcdf.html#build_default)
- [Github: Unidata/netcdf4-python](https://github.com/Unidata/netcdf4-python)

### ==Usage==

- [Python - NetCDF reading and writing example with plotting](http://schubert.atmos.colostate.edu/~cslocum/netcdf_example.html)



## Python/Basemap

### Installation

- [junzis/install_basemap_commands](https://blog.csdn.net/u011240016/article/details/52719183)

  ```shell
  sudo apt-get install libgeos-3.X.X
  sudo apt-get install libgeos-dev
  pip3 install --user https://github.com/matplotlib/basemap/archive/master.zip
  
  sudo apt-get install python3-mpltoolkits.basemap
  ```

- [Official: Installing](https://matplotlib.org/basemap/users/installing.html) <!--not recommended-->

> **Possible Problem**: 
>
> - [matplotlib basemap no module named axes_grid1](https://stackoverflow.com/questions/16769899/matplotlib-basemap-no-module-named-axes-grid1)
>
>   `pip3 install --upgrade matplotlib`

### ==Usages==

- [Official: Basemap tutorial](http://basemaptutorial.readthedocs.io/en/latest/index.html) <!--全面-->
- [Visualization: Mapping Global Earthquake Activity](http://introtopython.org/visualization_earthquakes.html#Making-a-simple-map) <!--步骤清晰-->
- [Matplotlib: Welcome to the Matplotlib Basemap Toolkit documentation](https://matplotlib.org/basemap/) <!--全面，友好度差-->
- [【python数据挖掘课程】二十二.Basemap地图包安装入门及基础知识讲解](https://blog.csdn.net/Eastmount/article/details/79188415)

- [用Python画一个中国地图](https://segmentfault.com/a/1190000010871928)
- [用Python画中国地图（二）](https://segmentfault.com/a/1190000010900212)

## EOF分析

- [主分量分析与核主分量分析](https://wenku.baidu.com/view/42c002264b35eefdc8d33311#20)
- [matlab经验正交函数EOF(转载)](https://wenku.baidu.com/view/e64ba4691eb91a37f1115c0b.html?from=search) <!--解法步骤条例清晰，编程参考-->
- [对EOF分解的自己的理解](https://wenku.baidu.com/view/abea8b1b6bd97f192279e9e1)