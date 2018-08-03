



C++输入过程中，是把输入加载到缓冲区中，然后对缓冲区中的字符进行读取。`cin`，`cin.get()`, `cin.getline()`三个函数虽然都能进行数据读取，但是它们对缓冲区内数据的处理方法是不同的（如遇到\<space>, \<enter>的处理方法)。本文将简单介绍`cin`, `cin.get()`, `cin.getline()`的基本用法，从根本上解释它们对缓冲区数据的处理方法。

#### 1\. cin的基本用法

结束条件：\<enter>, \<space>, \<tab>
处理方法：`cin`遇到缓冲区中的\<enter>, \<space>, \<tab>会结束当前输入，并舍弃\<enter>, \<space>, \<tab>，继续下一项输入，当有连续\<space>, \<enter>, \<tab>会全部舍弃。

程序1：
```c++
#include<iostream>
using namespace std;

int main()
{
	char a[10], b[10];
	cin >> a ;cin >> b;
	cou << a << endl << b << endl;
}
```

输入：`1234<enter>5678<enter>`
输出：1234  【此处换行】   5678
输入：1234\<enter>\<enter>\<enter>   ...   \<enter>5678\<enter>
输出：1234  【此处换行】 5678   （说明不管缓冲区中有几个\<enter>，`cin`都会无视，直到不是\<enter>开始继续读入）\<tab>，\<space>同理
综上：`cin`的输入很简单，整体的看输入，遇到\<enter>, \<space>, \<tab>表示当前输入结束，下一个输入从非\<enter>, [sapce], \<tab>开始，两输入间无线多个\<space>\<enter>\<tab>都是无效的

#### 2\. cin.get()基本用法

##### (1) 一参数

用法：`a = cin.get()`  或者  `cin.get(a)`
结束条件：输入字符足够后回车
说明：这个是单字符的输入，用途是输入一个字符，把它的ASCALL码存入到a中
处理方法：与`cin`不同，`cin.get()`在缓冲区遇到<enter>，<space>，<tab>不会作为舍弃，而是继续留在缓冲区中

程序2:

```c++
#include<iostream>
using namespace std;

int main()
{
	char a, b, c, d;
	a = cin.get();
	b = cin.get();
	c = cin.get();
	d = cin.get();
	cout << int(a) << ", "  << int(b) << ", " << int(c) << ", " << int(d) << endl;
}
```

输入：\<enter>  输出：不会结束，因为需要输入4个字符才结束（结束需要字符数够后回车）
输入：\<enter>\<enter>\<enter>\<enter>      输出：10, 10, 10, 10  
输入：abcdef\<enter>     输出：97, 98, 99, 100   字符太多时取前几个
输入：\<tab>\<enter>\<space>a\<enter>     输出：9, 10, 32, 97（分别为\<tab>，\<enter>，\<space>，a的ASCALL码）不舍弃\<enter>, \<tab>, \<space>, 统一看成字符
综上，一参数的`cin.get()`当输入字符足够后回车结束输入，把回车\<enter>, 空格\<space>也看成字符，在缓冲区中遇到不舍弃。当输入过多时，取前几个。

##### (2) 二参数

用法：`cin.get(arrayname, size) ` 把字符输入到`arrayname`中，长度不超过`size`
注释：`arrayname`必须是`char[]`类型，即char数组类型，不可以为`string`类型；`size`是指输入长度，即允许输入的最大长度。
处理方法：假设把数据输入到 `char a[arraylength]`, 数组长度为`arraylength`。`cin.get(a, size)`---`size, arraylength`不同可以分为四类：

> ###### 类1：输入串长 < size，输入串长 > arraylength，会自动扩张arrayname大小，使能保存所有数据
>
> 例1：`char a[10]; cin, get(a, 20);`
> 输入：123456789012\<enter>
> 输出a数组：123456789012 可以发现，输入12个字符到a[10]中，系统自动扩充a[10]，此时实际数组长为13（‘123456789012'\0'’）。但当计算sizeof(a)时，还是现实为10
>
> ###### 类2：输入串长 < size，输入串长 < arraylength，把串全部输入，后面补‘\0’
>
> 例2：`char a[10]; cin.get(a, 20);`
> 输入：12345\<enter> 
> 输出：12345，此时数组内数据为‘12345‘\0’’
>
> ###### 类3：输入串长 > size，先截取size个字符，若还是大于arraylength，则输入前arraylength-1个字符，最后补充‘\0’
>
> 例3：`char a[5]; cin.get(a, 10);`
> 输入：123456789012\<enter>
> 输出：123456789   先截取了9个字符变成‘123456789‘/0‘’，然后放入到a中，a自动扩张长度
>
> ###### 类4：输入串长 > size，先截取size个字符，若小于arraylength，则把截取串放入数组中，最后补充‘\0’
>
> 例4：`char a[15]; cin.get(a, 10);`
> 输入：123456789012\<enter>
> 输出：123456789   此时数组内为‘123456789‘\0’’   注意：前size-1有效，最后一个补‘\0’
>
> **综上**：当把大于数组长度的字符串放入`char a[arraylength]`中，系统自动扩张数组`a`的长度使`a`能放得下，但是这么做容易产生运行错误

##### (3) 三参数

**用法**：`cin.get(arrayname, size, s) ` 把数据输入到`arrayname`字符数组中，当到达长度`size`时结束或者遇到字符s时结束。
**注释**：`arrayname`必须是字符数组，即`char arrname[]`类型，*不可为`string`类型*；`size`为最大的输入长度；`s`为控制，遇到`s`则当前输入结束，缓存区里的`s`将被舍弃。

程序3：

```cpp
#include<iostream>
using namespace std;

int main()
{
	int i;
	char a[10];
	cin.get(a, 10, '.');
	cou << ;
}
```

**输入**：abc.123
**输出**：abc    

遇到`.`输入结束。



#### 3\. cin.getline()基本用法

`cin.getline()`的用法和`cin.get()`用法大致相同，没有一参数用法，只有二参数，三参数两类
`cin.gerline(arrayname, size)`
`cin.getline(arrayname, size, s)`

用法与`cin.get()`效果大致相同，但也有些区别

##### (1) cin.getline(arrayname, size)与cin.get(arrayname, size)的区别

`cin.get(arrayname, size)`当遇到\<enter>时会结束目前输入，不会删除缓冲区中的\<enter>
`cin.getline(arrayname, size)`当遇到\<enter>时会结束当前输入，但是会删除缓冲区中的\<enter>

```cpp
#include <iostream>
using namespace std;

int main()
{
	char a[10]; char b;
    cin.get(a, 10);
	cin.get(b);
	cout << a << endl << int(b);
}
```

输入：12345\<enter>
输出：12345 【换行】 10
说明：`cin.get(a, 10)`把12345到a中，遇到\<enter>结束，但是不把\<enter>删除，则把\<enter>输入到b中，(\<enter>的ASCALL码为10）

```cpp
#include <iostream>
using namespace std;

int main()
{
	char a[10]; char b;
    cin.getline(a, 10);
	cin.get(b);
	cout << a << endl << int(b);
}
```

输入：12345\<enter>a\<enter>
输出：12345【换行】97
说明：`cin.getline(a, 10)`把12345输入到a中，遇到\<enter>结束，并把缓冲区中\<enter>删除，把接下来的a输入到b中

##### (2) cin.getline(arrayname, size, s)与cin.gei(arrayname, size, s)的区别

`cin.getline(arrayname, size, s)`当遇到`s`时会结束输入，并把`s`从缓冲区中删除。
`cin.get(arrayname, size, s)` 当遇到`s`时会结束输入，但不会删除缓冲区中的`s`

```c++
#include <iostream>
using namespace std;

int main()
{
	char a[10]; char b;
    cin.get(a, 10, ', ');
	cin.get(b);
	cout << a <<endl << b;
}
```

输入：12345, \<enter>
输出：12345【换行】，
说明：`cin.get()`不会删除缓冲区的。

```cpp
#include<iostream>
using namespace std;

int main()
{
	char a[10]; char b;
    cin.getline(a, 10, ', ');
	cin.get(b);
	cout << a << endl << int(b);
}
```
输入：12345，\<enter>
输出：12345【换行】10
说明：`cin.getline()`把12345输入到`a`中，遇到 ', ' 结束，并删除缓冲区的‘, ’，后面的\<enter>输入到`b`中

#### 4.运用以任何符号作为输入分隔符

例题：输入五个学生的名字，每个学生的名字不超过10个字符，输入时学生名字之间用逗号隔开，把这五个名字存储并换行输出

```cpp
#include <iostream>
using namespace std;

int main()
{
	char a[5][10];
	int i;
	for(i = 0; i < 4; i++)
		cin.getline(a[i], 10, ', ');
	
    cin.getline(a[i], 10);

	for(i = 0; i < 5; i++)
		cout << a[i] << endl;
}
```


这样我们就可以完成完成用任何符号作为分割符的输入了！此处`getline()`换成`get`是不行的，因为`cin.get()`不会删除缓冲区中的分隔符’，‘  后续输入不能继续进行.
