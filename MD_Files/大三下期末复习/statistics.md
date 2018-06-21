# 课本

## 第1章 大气变量

### 1.1 大气变量的表示

#### 1.1.1 单个变量

- [ ] 大气变量

- [ ] 时间序列

- [ ] 连续型/离散型变量

#### 1.1.2 多个变量

横资料阵和竖资料阵

<img src="https://i.loli.net/2018/06/19/5b28e7c0b41bf.png" alt="竖资料阵.png" title="竖资料阵.png" style="zoom:40%"/>

### 1.2 基本统计量

#### 1.2.1 平均值

$$
\overline{\textbf{x}}=
\begin{pmatrix}
\overline{x_1} \\
\overline{x_2} \\
\cdot \cdot \cdot \\
\overline{x_p} \\
\end{pmatrix}
$$

记为$\overline{\textbf{x}} = \dfrac{1}{n}\textbf{X1}$，$\textbf{1}$是n个元素为1的列向量。

距平

#### 1.2.2 标准差与方差

标准差s~x~

方差s~x~^2^。对多个变量，第k个变量的方差s~k~^2^=$\dfrac{1}{n}x_{dk}x'_{dk}$，这里x~dk~为第k个变量的行向量。

标准化变量

离散系数（不重要）

### 1.3 大气变量的分布

#### 1.3.1 频率

频率和概率的差别

#### 1.3.2 频率分布

频率分布直方图

累积频率：变量小于某上限的次数与总次数之比。（样本特征—直方图）

频率密度

#### 1.3.3 度量分布的几种统计量

中值

终值

###### 偏度系数和峰度系数

峰度系数与偏度系数是用来衡量随机变量分布密度曲线形状的数字特征，描述了气候变量的分布特征。
- 偏度系数：表征分布形态与平均值偏离的程度，作为分布不对称的测度。 和三阶中心矩有关。>0，峰点在左；<0，峰点在右。

  <img src="https://i.loli.net/2018/06/19/5b28dc1a5a2a2.png" alt="偏度系数.png" title="偏度系数.png" style="zoom:30%" />          <img src="https://i.loli.net/2018/06/19/5b28dc89d83dc.png" alt="图片1.png" title="图片1.png" style="zoom:70%" />

- 峰度系数：表征分布形态图形顶峰的凸平度（即渐进于横轴的陡度）。和四阶中心矩有关。g2>0，表示分布图形坡度偏陡；g2<0，表示分布图形坡度平缓

  <img src="https://i.loli.net/2018/06/19/5b28dd13c0d4a.png" alt="图片1.png" title="图片1.png" style="zoom:30%" />

### 1.4 统计量的检验

#### 1.4.1 平均值的显著性检验

大样本正态分布，**小样本t分布**，
$$
t_n = \dfrac{\overline{x}-x_0}{s/\sqrt{n-1}}
$$
若t的绝对值大于概率α /2分布值，拒绝假设。

#### 1.4.2 两组样本平均值差异的显著性检验

<img src="https://i.loli.net/2018/06/19/5b28e00a26ece.png" alt="t分布.png" title="t分布.png" style="zoom:70%" />

#### ~~1.4.3 方差的显著性检验~~

#### 1.4.4 ~~变量的分布检验~~



## 第2章 相关分析

### 2.1 变量之间关系

#### 2.1.1 协方差与相关系数

协方差：

>  <img src="https://i.loli.net/2018/06/19/5b28e1558a258.png" alt="协方差.png" title="协方差.png" style="zoom:30%" />  <img src="https://i.loli.net/2018/06/19/5b28e347349a1.png" alt="协方差.png" title="协方差.png" style="zoom:30%" />

相关系数：

> <img src="https://i.loli.net/2018/06/19/5b28e4a6718a9.png" alt="相关系数.png" title="相关系数.png" style="zoom:30%" />

#### 2.1.2 ~~协方差与相关系数的计算~~

#### 2.1.3 协方差阵与相关阵

$$
\textbf{S} =\begin{pmatrix} 
    \operatorname{cov}(X_1, X_1) &
    \operatorname{cov}(X_1, X_2) &
    \cdots &
    \operatorname{cov}(X_1, X_n) \\
    \operatorname{cov}(X_2, X_1) &
    \operatorname{cov}(X_2, X_2) &
    \cdots &
    \operatorname{cov}(X_2, X_n) \\
    \vdots &
    \vdots &
    \ddots &
    \vdots \\
    \operatorname{cov}(X_n, X_1) &
    \operatorname{cov}(X_n, X_2) &
    \cdots &
    \operatorname{cov}(X_n, X_n) 
\end{pmatrix} = \dfrac{1}{n}\textbf{X}_d\textbf{X}'_d
$$

因为
$$
\textbf{S} = \dfrac{1}{n}  \begin{pmatrix}
\textbf{x}_{d1} \\
\textbf{x}_{d2} \\
\cdot 
\cdot 
\cdot \\
\textbf{x}_{dp} \\
\end{pmatrix} \begin{pmatrix}
\textbf{x}'_{d1} \textbf{x}'_{d2} \cdot\cdot\cdot\textbf{x}'_{dp}
\end{pmatrix} = \dfrac{1}{n} \begin{pmatrix}
\textbf{x}_{d1}\textbf{x}'_{d1}\ \textbf{x}_{d1}\textbf{x}'_{d2}\ \textbf{x}_{d1}\textbf{x}'_{dp} \\
\textbf{x}_{d2}\textbf{x}'_{d1}\ \textbf{x}_{d2}\textbf{x}'_{d2}\ \textbf{x}_{d2}\textbf{x}'_{dp} \\
\cdot\cdot\cdot \\
\textbf{x}_{dp}\textbf{x}'_{d1}\ \textbf{x}_{dp}\textbf{x}'_{d2}\ \textbf{x}_{dp}\textbf{x}'_{dp} \\

\end{pmatrix}
$$
这里$\textbf{x}_{di}$都是横向量。

#### 2.1.4 ~~偏相关~~

### 2.2 ~~离散变量之间的关系~~

### 2.3 变量序列关系的度量

#### 2.3.1 自协方差与自相关系数

###### 自协方差

<img src="https://i.loli.net/2018/06/19/5b29028df1cb7.png" alt="自协方差.png" title="自协方差.png" style="zoom:55%" />

###### 自相关系数

<img src="https://i.loli.net/2018/06/19/5b29028df03a4.png" alt="自相关系数.png" title="自相关系数.png" style="zoom:55%" />

#### 2.3.2 落后交叉协方差与相关系数

<img src="https://i.loli.net/2018/06/19/5b290329d4d70.png" alt="落后交叉协方差.png" title="落后交叉协方差.png" style="zoom:60%"/>
<img src="https://i.loli.net/2018/06/19/5b290329d6387.png" alt="落后相关系数.png" title="落后相关系数.png" style="zoom:60%"/>

## 第3章 分析回归