## map

- [地图慧](http://www.dituhui.com/)

## 数据分析工具

### General

- [6 种 Python 数据可视化工具](http://python.jobbole.com/85601/)
- [10个超实用的数据可视化库](http://nooverfit.com/wp/10%E4%B8%AA%E8%B6%85%E5%AE%9E%E7%94%A8%E7%9A%84python%E5%8F%AF%E8%A7%86%E5%8C%96%E5%BA%93%EF%BC%8C%E6%80%BB%E6%9C%89%E4%B8%80%E6%AC%BE%E9%80%82%E5%90%88%E4%BD%A0/)
- [AARON SCHLEGEL](http://www.aaronschlegel.com/) <!--一个个人博客-->
- [Cate - The ESA CCI Toolbox](https://cate.readthedocs.io/en/latest/index.html) <!--高大上-->
- [Python ***eofs*** Package: A Library for EOF Analysis of Meteorological, Oceanographic, and Climate Data](https://openresearchsoftware.metajnl.com/articles/10.5334/jors.122/)
- [气象家园：介绍气候研究中几个常用Python包给大家](http://bbs.06climate.com/forum.php?mod=viewthread&tid=49523)

### Specific

- [BDP个人版](https://me.bdp.cn/home.html)
- [ECharts](http://echarts.baidu.com/)
- [visdom](https://github.com/facebookresearch/visdom)
- [Python 数据可视化之PyEcharts](https://zhuanlan.zhihu.com/p/27990382)

### For Download

- [Tsinghua Miniconda镜像源——安装python需要的包](https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/)



## NetCDF4-Python

### Ubuntu Installation

- [Github: 脚本install_netcdf4.sh](https://gist.github.com/perrette/cd815d03830b53e24c82) <!--很好,但是需要一些修改-->
  1. ~~[下载到hdf5-1.10.1](https://support.hdfgroup.org/ftp/HDF5/current/src/)~~ <!--很慢-->
  2. `sudo apt install m4 libcurl4-openssl-dev`
  3. [下载zlib 1.2.11](https://zlib.net/)
  4. [下载hdf5-1.10.2](https://www.hdfgroup.org/downloads/hdf5/source-code/)
  5. [下载netcdf4.6.1](ftp://ftp.unidata.ucar.edu/pub/netcdf/)
- [GoogleCode: netcdf4-python - UbuntuInstall.wiki](https://code.google.com/archive/p/netcdf4-python/wikis/UbuntuInstall.wiki)
- [Official: Unidata: Getting and Building netCDF](https://www.unidata.ucar.edu/software/netcdf/docs/getting_and_building_netcdf.html#build_default)
- [Github: Unidata/netcdf4-python](https://github.com/Unidata/netcdf4-python)

### Windows Installation

- [win10+python3.6下netCDF4以及basemap的安装](https://blog.csdn.net/Larry_fighting/article/details/80542674) <!--还没尝试-->



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



## R语言

### 准备

```shell
# ===install R=== official
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'
# sudo apt-get update
sudo apt-get install r-base	

# ===Install tidyverse from CRAN===
install.packages("tidyverse")
```

