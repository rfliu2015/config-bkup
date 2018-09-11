# 数据结构

[TOC]

## 一些东西

### Programming Online

- [GeeksForGeeks](https://www.geeksforgeeks.org/)
- [LeetCode](https://leetcode.com/)
- [牛客网](https://www.nowcoder.com/)
- [北京林业大学-数据结构习题](http://www.bjfuacm.com/structure/)

### 算法笔记

- [brianway/algorithms-learning: Algorithms learning note and LeetCode solution](https://github.com/brianway/algorithms-learning)
- [LeetCode/TreeDemo.java at master · yuzhangcmu/LeetCode](https://github.com/yuzhangcmu/LeetCode/blob/master/tree/TreeDemo.java)
- [一篇文章搞定面试中的二叉树题目(java实现) - 简书](https://www.jianshu.com/p/0190985635eb)

### 数据结构笔记

## Others

- [博客园：从《编程之美》买票找零问题说起，娓娓道来卡特兰数——兼爬坑指南](http://www.cnblogs.com/wuyuegb2312/p/3016878.html#suggestion) <!--超详细-->

---

## 📁 算法绪论

- [算法复杂度分析概要 - 经典算法与数据结构 - SegmentFault 思否](https://segmentfault.com/a/1190000008335125)

### 时间复杂度

- [算法导论--**递归算法的时间复杂度求解** - CSDN博客](https://blog.csdn.net/so_geili/article/details/53444816)

  > 虽然非递归算法的时间复杂度比较好分析，但往往需要用到多项式的求和技巧和放缩技巧。
  >
  > **迭代法：** 从原始递推方程开始，反复将对于递推方程左边的函数用右边的等式代入，直到得到初值，然后将所得的结果进行化简。  例如在调用归并排序` mergeSort(a, 0, n-1) `对数组$a[0...n-1]$排序时，执行时间$T(n)$的递推关系式为：$T{(n)}=   \begin{cases} >  O(1)， &        当 n=1\\    2T(\frac{n}{2})+O(n)，&当n>=2  \end{cases}$ 
  >
  > 其中，$O(n)$为`merge()`所需要的时间，设为$cn$（c为正常量）。因此： 
  >
  > $\begin{split}    T(n)&=2T(\frac{n}{2})+cn=2(2T(\frac{n}{4})+\frac{cn}{2})+cn=2^2T(\frac{n}{4})+2cn\\ &=2^3T(\frac{n}{8})+3cn=...=2^kT(\frac{n}{2^k})+kcn\\ &=nO(1)+cn\log_2n\\ &=O(n\log_2n),(假设n=2^k,则k=\log_2n) \end{split}$
  >
  > 忽略求解细节。在我们求解递归式时，因为最终是要求得一个时间上限，所以在求解时常常省略一些细节。比如`mergeSort(a, 0, n-1)`运行时间的实际递归式应该是：  
  >
  > $ T{(n)}=   \begin{cases}O(1)， &        当 n=1\\    T(\left \lceil \frac{n}{2}\right\rceil)+T(\left \lfloor \frac{n}{2}\right\rfloor)+O(n)，&当n>=2  \end{cases}$
  >
  > 但我们忽略这些上取整、下取整以及边界条件，甚至假设问题规模n=2kn=2k，这都是为方便求解而忽略的细节。经验和一些定理告诉我们，这些细节不会影响算法时间复杂度的渐近界。 

- [**关于斐波那契数列三种解法及时间复杂度分析** - CSDN博客](https://blog.csdn.net/beautyofmath/article/details/48184331)

## 📁 线性表 

### 题目 📔

- [单链表操作（面试必看） - 经典算法与数据结构 - SegmentFault 思否](https://segmentfault.com/a/1190000008453411)

- [数据结构例程——**线性表顺序存储的应用** - CSDN博客](https://blog.csdn.net/sxhelijian/article/details/48285785)

  > 问题：已知长度为n的线性表A采用顺序存储结构，设计算法，删除线性表中所有值为x的数据元素。 
  >
  > 问题：设顺序表有10个元素，其元素类型为整型。 设计一个算法，以第一个元素为分界线，将所有小于它的元素移到该元素的前面，将所有大于它的元素移到该元素的后面。
  >
  > ```cpp
  > void move1(SqList *&list):
  >     int i=0, j=list->length - 1;
  >     ElemType pivot=list->data[0];  //以data[0]为基准
  >     ElemType tmp;
  >     while (i < j):            	 //从区间两端交替向中间扫描,直至i=j为止
  >         while (i<j && list->data[j] > pivot):
  >             j--;            	 //从右向左扫描,找第1个小于等于pivot的元素
  >         while (i<j && list->data[i] <= pivot):
  >             i++;           	 	 //从左向右扫描,找第1个大于pivot的元素
  >         if (i < j):
  >             tmp=list->data[i];   //list->data[i]和list->data[j]进行交换
  >             list->data[i]=list->data[j];
  >             list->data[j]=tmp;
  >     tmp=list->data[0];           //list->data[0]和list->data[j]进行交换
  >     list->data[0] = list->data[j];
  >     list->data[j] = tmp;
  > ```
  >
  > ```cpp
  > void move2(SqList *&list):
  >     int i=0, j=list->length-1;
  >     ElemType pivot = list->data[0];     //以data[0]为基准
  >     while (i < j):                      //从顺序表两端交替向中间扫描,直至i=j为止
  >         while (j>i && list->data[j]>pivot):
  >             j--;                        //从右向左扫描,找一个小于等于pivot的data[j]
  >         list->data[i] = list->data[j];  //找到这样的data[j],放入data[i]处
  >         i++;
  >         while (i<j && list->data[i]<=pivot):
  >             i++;                        //从左向右扫描,找一个大于pivot的记录data[i]
  >         list->data[j] = list->data[i];  //找到这样的data[i],放入data[j]处
  >         j--;
  >     list->data[i] = pivot;
  > ```

- [**求两个升序序列的中位数** - 程序园](http://www.voidcn.com/article/p-aovmftmh-yq.html)

  > ```cpp
  > int M_Search(int A[], int B[], int n) 
  > {
  > 	int start1 = 0, end1 = n - 1, m1, start2 = 0, end2 = n - 1, m2;
  > 	//分别表示序列A和B的首位数、末位数和中位数
  > 
  > 	while (start1 != end1 || start2 != end2):
  > 		m1 = (start1 + end1) / 2;
  > 		m2 = (start2 + end2) / 2;
  > 		if (A[m1] == B[m2]):
  > 			return A[m1];   //满足条件 1)
  > 
  > 		if (A[m1]<B[m2]):   // 满足条件 2)
  > 			if ((start1 + end1) % 2 == 0):  //若元素个数为奇数
  > 				start1 = m1;  //舍弃A中间点以前的部分且保留中间点
  > 				end2 = m2;  //舍弃B中间点以后的部分且保留中间点
  > 			else:				//元素个数为偶数
  > 				start1 = m1 + 1;  //舍弃A中间点及中间点以前部分
  > 				end2 = m2;  //舍弃B中间点以后部分且保留中间点
  > 		else:  						  //满足条件3)
  > 			if ((start2 + end2) % 2 == 0):   //若元素个数为奇数
  > 				end1 = m1;    //舍弃A中间点以后的部分且保留中间点
  > 				start2 = m2;    //舍弃B中间点以前的部分且保留中间点
  > 			else:            //元素个数为偶数
  > 				end1 = m1;    //舍弃A中间点以后部分且保留中间点
  > 				start2 = m2 + 1;    //舍弃B中间点及中间点以前部分
  > 	return  A[start1]<B[start2] ? A[start1] : B[start2];
  > }
  > ```
  >
  > 一个详实的的说明：[求两个有序数组的中位数或者第k小元素 - tenos - 博客园](http://www.cnblogs.com/TenosDoIt/p/3554479.html)
  >
  > 另一个思路：[Share my O(log(min(m,n)) solution with explanation - LeetCode Discuss](http://t.cn/RDE5eM0)
  >
  > 一个视频说明：[花花酱 LeetCode 4. Median of Two Sorted Arrays - 刷题找工作 EP102 - YouTube](https://www.youtube.com/watch?v=KB9IcSCDQ9k)
  >
  > 另一个：[两个有序数组中的中位数和Top K问题[H] · 《LeetBook（LeetCode详解）》](https://hk029.gitbooks.io/leetbook/content/%E5%88%86%E6%B2%BB/004.%20Median%20of%20Two%20Sorted%20Arrays[H]/004.%20Median%20of%20Two%20Sorted%20Arrays[H].html)

### 堆栈

- [**中缀表达式转换为后缀表达式** - CSDN博客](https://blog.csdn.net/sgbfblog/article/details/8001651#t0)

  > 中缀表达式`a + b * c + (d * e + f) * g`，其转换成后缀表达式则为`a b c * + d e * f  + g * +`。
  > 转换过程需要用到栈，具体过程如下：
  >
  > 1. 如果遇到操作数，我们就直接将其输出。
  > 2. 如果遇到操作符，则我们将其放入到栈中，遇到左括号时我们也将其放入栈中。
  > 3. 如果遇到一个右括号，则将栈元素弹出，将弹出的操作符输出直到遇到左括号为止。注意，左括号只弹出并不输出。
  > 4. 如果遇到任何其他的操作符，如`+`， `*`，`（`等，从栈中弹出元素直到遇到发现更低优先级的元素(或者栈为空)为止。弹出完这些元素后，才将遇到的操作符压入到栈中。有一点需要注意，<u>只有在遇到` ) `的情况下我们才弹出` ( `，其他情况我们都不会弹出` ( `</u>。
  > 5. 如果我们读到了输入的末尾，则将栈中所有元素依次弹出。

## 📁 树 

- [考研数据结构题目——树（持续更新） - CSDN博客](https://blog.csdn.net/qq_32623363/article/details/79149563)

### 题目 :notebook_with_decorative_cover:

- [考研数据结构题目——树（持续更新） - CSDN博客](https://blog.csdn.net/qq_32623363/article/details/79149563)

### 二叉树 :deciduous_tree:

#### 二叉树总结

- [二叉树操作（面试必备） - 经典算法与数据结构 - SegmentFault 思否](https://segmentfault.com/a/1190000008850005)

  > - 前序遍历，中序遍历，后序遍历；
  > - 层次遍历；
  > - 求树的节点数；
  > - 求树的叶子数；
  > - 求树的深度；
  > - 求二叉树第k层的节点个数;
  > - 判断两棵二叉树是否结构相同；
  > - 求二叉树的镜像；
  > - 求两个节点的最低公共祖先节点；
  > - 求任意两节点距离；
  > - 找出二叉树中某个节点的所有祖先节点；
  > - 不使用递归和栈遍历二叉树；
  > - 二叉树前序中序推后序；
  > - 判断二叉树是不是完全二叉树;
  > - 判断是否是二叉查找树的后序遍历结果；
  > - 给定一个二叉查找树中的节点，找出在中序遍历下它的后继和前驱；
  > - 二分查找树转化为排序的循环双链表；
  > - 有序链表转化为平衡的二分查找树。

- [LeetCode 总结 - 搞定 Binary Tree 面试题 - 简书](https://www.jianshu.com/p/5fbd07d557a3)

  > ###### 二叉树的遍历（前序遍历，中序遍历，后序遍历）
  >
  > -  [[144\] Binary Tree Preorder Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-preorder-traversal)：前序遍历
  > -  [[94\] Binary Tree Inorder Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-inorder-traversal)：中序遍历
  > -  [[145\] Binary Tree Postorder Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-postorder-traversal)：后序遍历
  >
  > ###### 二叉树的层序遍历
  >
  > -  [[102\] Binary Tree Level Order Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-level-order-traversal)：层序遍历
  > -  [[107\] Binary Tree Level Order Traversal II](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-level-order-traversal-ii)：bottom-up型层序遍历
  > -  [[103\] Binary Tree Zigzag Level Order Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-zigzag-level-order-traversal)：之字型层序遍历
  > -  [[314\] Binary Tree Vertical Order Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-vertical-order-traversal)：垂直遍历
  >
  > ###### 二叉树的搜索
  >
  > -  [[513\] Find Bottom Left Tree Value](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Ffind-bottom-left-tree-value)：二叉树的最左下树节点的值
  > -  [[515\] Find Largest Value in Each Tree Row](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Ffind-largest-value-in-each-tree-row)：二叉树每一行的最大值
  > -  [[671\] Second Minimum Node In a Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fsecond-minimum-node-in-a-binary-tree)：二叉树中第二小的节点
  > -  [[116\] Populating Next Right Pointers in Each Node](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fpopulating-next-right-pointers-in-each-node)：每个节点的右向指针
  > -  [[117\] Populating Next Right Pointers in Each Node II](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fpopulating-next-right-pointers-in-each-node-ii)：每个节点的右向指针
  > -  [[623\] Add One Row to Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fadd-one-row-to-tree)：二叉树中增加一行
  > -  [[637\] Average of Levels in Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Faverage-of-levels-in-binary-tree)：二叉树的层平均值
  > -  [[404\] Sum of Left Leaves](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fsum-of-left-leaves)：二叉树左叶子节点的和
  > -  [[199\] Binary Tree Right Side View](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-right-side-view)：打印二叉树的每一层最右侧节点
  > -  [[236\] Lowest Common Ancestor of a Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Flowest-common-ancestor-of-a-binary-tree)：二叉树中两个节点的最低公共祖先(LCA)
  > -  [[156\] Binary Tree Upside Down](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-upside-down)：二叉树的上下颠倒
  > -  [[617\] Merge Two Binary Trees](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fmerge-two-binary-trees)：合并两个二叉树
  > -  [[654\] Maximum Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fmaximum-binary-tree)：最大值二叉树
  > -  [[563\] Binary Tree Tilt](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-tilt)：二叉树的坡度
  > -  [[No.58\]](https://link.jianshu.com?t=https%3A%2F%2Fwww.nowcoder.com%2FquestionTerminal%2F9023a0c988684a53960365b889ceaf5e)：二叉树的下一个节点
  > -  [[No.60\]](https://link.jianshu.com?t=https%3A%2F%2Fwww.nowcoder.com%2FquestionTerminal%2F445c44d982d04483b04a54f298796288)：把二叉树打印成多行
  >
  > ###### 二叉树的路径
  >
  > -  [[112\] Path Sum](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fpath-sum)：路径和(一)-是否存在二叉树路径和等于给定值（根节点到叶子节点）
  > -  [[113\] Path Sum II](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fpath-sum-ii)：路径和(二)-二叉树中路径和等于给定值的所有路径（根节点到叶子节点）
  > -  [[437\] Path Sum III](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fpath-sum-iii)：路径和(三)-二叉树中路径和等于给定值的所有路径（任意两个节点）
  > -  [[257\] Binary Tree Paths](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-paths)：二叉树从根节点到叶子节点的所有路径
  > -  [[124\] Binary Tree Maximum Path Sum](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbinary-tree-maximum-path-sum)：二叉树中任意两个节点之间路径和的最大值（二叉树的最大路径和）
  > -  [[129\] Sum Root to Leaf Numbers](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fsum-root-to-leaf-numbers)：所有“根到叶子”路径和的和
  > -  [[543\] Diameter of Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fdiameter-of-binary-tree)：二叉树的直径（二叉树任意两个节点之间路径的最大长度）
  > -  [[687\] Longest Univalue Path](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Flongest-univalue-path)：最长相同值路径
  > - 二叉树的最大距离（即相距最远的两个叶子节点）：[https://blog.csdn.net/liuyi1207164339/article/details/50898902](https://link.jianshu.com?t=https%3A%2F%2Fblog.csdn.net%2Fliuyi1207164339%2Farticle%2Fdetails%2F50898902) 
  >
  > ###### 构建二叉树
  >
  > -  [[105\] Construct Binary Tree from Preorder and Inorder Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fconstruct-binary-tree-from-preorder-and-inorder-traversal)：先序和中序遍历可以唯一确定一棵二叉树
  > -  [[106\] Construct Binary Tree from Inorder and Postorder Traversal](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fconstruct-binary-tree-from-inorder-and-postorder-traversal)：中序和后序遍历可以唯一确定一棵二叉树
  > -  [[606\] Construct String from Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fconstruct-string-from-binary-tree)：根据二叉树构建字符串
  >
  > ###### 二叉树的序列化和反序列化
  >
  > - [[297\] Serialize and Deserialize Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fserialize-and-deserialize-binary-tree)
  >
  > ###### 二叉树的转换
  >
  > -  [[108\] Convert Sorted Array to Binary Search Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fconvert-sorted-array-to-binary-search-tree)：有序数组转换到二叉搜索树
  > -  [[109\] Convert Sorted List to Binary Search Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fconvert-sorted-list-to-binary-search-tree)：有序链表转换到二叉搜索树
  > -  [[114\] Flatten Binary Tree to Linked List](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fflatten-binary-tree-to-linked-list)：将二叉树碾平成单链表
  > - [二叉搜索树转换成双向链表](https://link.jianshu.com?t=http%3A%2F%2Fblog.51cto.com%2Fmuhuizz%2F1878366)
  >
  > ###### 二叉树的性质
  >
  > -  [[104\] Maximum Depth of Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fmaximum-depth-of-binary-tree)：二叉树的最大深度（叶子节点到根节点的距离）
  > -  [[111\] Minimum Depth of Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fminimum-depth-of-binary-tree)：二叉树的最小深度（叶子节点到根节点的距离）
  > -  [[662\] Maximum Width of Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fmaximum-width-of-binary-tree)：二叉树的最大宽度
  > -  [[100\] Same Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fsame-tree)：判断两棵二叉树是否相同
  > -  [[101\] Symmetric Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fsymmetric-tree)：对称的二叉树（二叉树的镜像）
  > -  [[226\] Invert Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Finvert-binary-tree)：翻转二叉树
  > -  [[572\] Subtree of Another Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fsubtree-of-another-tree)：判断二叉树是否为另一个树的子树
  >
  > ###### 完全二叉树
  >
  > - [[222\] Count Complete Tree Nodes](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fcount-complete-tree-nodes)
  > -  [判断完全二叉树](https://link.jianshu.com?t=https%3A%2F%2Fblog.csdn.net%2Fsinat_20177327%2Farticle%2Fdetails%2F78289643)：判断二叉树是否为完全二叉树
  > -  [阿里面试题](https://link.jianshu.com?t=https%3A%2F%2Fblog.csdn.net%2Ffangjian1204%2Farticle%2Fdetails%2F39179343)：求完全二叉树的最后一层的最后一个节点
  >
  > ###### 平衡二叉树
  >
  > -  [[110\] Balanced Binary Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fbalanced-binary-tree)：判断二叉树是否为平衡二叉树
  >
  > ###### 二叉搜索树
  >
  > -  [[98\] Validate Binary Search Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fvalidate-binary-search-tree)：判断二叉树是否为二叉搜索树
  > -  [[99\] Recover Binary Search Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Frecover-binary-search-tree)：恢复错误的二叉搜索树
  > -  [[96\] Unique Binary Search Trees](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Funique-binary-search-trees)：给定一个数n，求1-n这n个数能生成多少个二叉搜索树
  > -  [[95\] Unique Binary Search Trees II](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Funique-binary-search-trees-ii)：给出一个n，求1-n能够得到的所有二叉搜索树，输出所有树
  > -  [[230\] Kth Smallest Element in a BST](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Fkth-smallest-element-in-a-bst)：二叉搜索树的第k个节点（第k小的数）
  > -  [[235\] Lowest Common Ancestor of a Binary Search Tree](https://link.jianshu.com?t=https%3A%2F%2Fleetcode.com%2Fproblems%2Flowest-common-ancestor-of-a-binary-search-tree)：二叉搜索树中两个节点的最低公共祖先
  > -  [[No.24\] 二叉搜索树的后序遍历序列](https://link.jianshu.com?t=https%3A%2F%2Fwww.nowcoder.com%2FquestionTerminal%2Fa861533d45854474ac791d90e447bafd)：判断某个数组是不是二叉搜索树的后序遍历结果（剑指 offer 第 24 题）

- [二叉树经典面试题-暮回-51CTO博客](http://blog.51cto.com/muhuizz/1878366)

  > - 找出二叉树中最远结点的距离
  > - 由前序遍历和中序遍历重建二叉树
  > - 判断一棵二叉树是否为完全二叉树
  > - 求二叉树中两个结点的最近公共祖先
  > - 将二叉搜索树转换成一个排序的双向链表。要求不能创建任何新的结点，只能调整树中结点指针的指向。

- [面试常备题---二叉树总结篇 - 文酱 - 博客园](https://www.cnblogs.com/wenjiang/p/3321815.html)

  > 人生就像是一场长跑，有很多机会，但也得看我们是否能够及时抓牢，就像下面这样的代码：
  >
  > ```java
  > while(isRunning) {
  >      if(...) {...}
  >      else if(...) {...}
  >      ...
  >      else{..}
  > }
  > ```
  >
  > 存在着太多的`if...else if...else...`，很多都是一闪而过，就看我们是否将`isRunning`时刻设置为`true`，一直不断在跑，一直不断在检查条件是否满足。就算条件达到了，有些人会选择`return`或者将`isRunning`设置为`false`，主动退出循环，有些人选择继续跑下去，不断追寻更高的目标。
  >
  > 所以，如果我们一时看不到未来，请不断跑下去，迟早会有某个条件满足的，只要设置的条件是合理可达的。


#### 二叉树遍历 

<img src="https://upload-images.jianshu.io/upload_images/2405011-5f5b0b136713f744.jpg" style="zoom:40%" >

##### :triangular_flag_on_post: 前序遍历

![前序遍历](http://segmentfault.com/img/bVdgIK)

###### [策略1：](https://blog.csdn.net/kofsky/article/details/2886453/)

其实过程很简单：一直往左走` root->left->left->left...->null`，由于是先序遍历，因此一遇到节点，便需要立即访问；由于一直走到最左边后，需要逐步返回到父节点访问右节点，因此必须有一个措施能够对节点序列回溯。

有两个办法： `1. 用栈记忆`：在访问途中将依次遇到的节点保存下来。<u>由于节点出现次序与恢复次序是反序的，因此是一个先进后出结构，需要用栈。</u>

```cpp
/* 前序遍历 */
void preOrder1(BTNode* root):
    if (root == nullptr) return;
    
    BTNode* p = root;
    stack<BTNode*> s;
    while (!s.empty() || p != nullptr):
        if (p != nullptr) {
            visitNode(p);  // 先序就体现在这里了，先访问，再入栈
            s.push(p);
            p = p->lchild; // 依次访问左子树
        else:
            p = s.top();   // 回溯至父亲节点
            s.pop();
            p = p->rchild;
```

`preOrder1`每次都将遇到的节点压入栈，当左子树遍历完毕后才从栈中弹出最后一个访问的节点，访问其右子树。在同一层中，不可能同时有两个节点压入栈，因此栈的大小空间为`O(h)`，`h`为二叉树高度。时间方面，每个节点都被压入栈一次，弹出栈一次，访问一次，复杂度为`O(n)`.

###### 策略2：

```cpp
void preOrderDFS(TreeNode *root):
    if (root == nullptr) return;

    Stack<TreeNode *> stack;
    stack.push(root);

    TreeNode *cur = root;
    while (!stack.empty()) {
        cur = stack.top();
        stack.pop();
        visitNode(cur);              // 先访问根节点，然后根节点就无需入栈

        if (node->right != nullptr):
            stack.push(node->right);
    
        if (node->left != nullptr):
            stack.push(node->left);
```

`preOrderDFS`每次将节点压入栈，然后弹出，压右子树，再压入左子树，在遍历过程中，遍历序列的右节点依次被存入栈，左节点逐次被访问。同一时刻，栈中元素为$m-1$个右节点和$1$个最左节点，最高为$h$。所以空间也为`O(h)`；每个节点同样被压栈一次，弹栈一次，访问一次，时间复杂度`O(n)`.

#####   :triangular_flag_on_post: [中序遍历](https://blog.csdn.net/zhangxiangdavaid/article/details/37115355)

![中序遍历](http://segmentfault.com/img/bVdgIM)

假设，你面前有一棵二叉树，现要求你写出它的中序遍历序列。如果你对中序遍历理解透彻的话，你肯定先找到左子树的最下边的节点。

> `<二叉树>`：`<左子树>`| 根节点 |`<右子树>`。又根据递归性质，对`左子树`有相同的情况。因此初始节点是the left most node。

```cpp
/* 中序遍历 */
void InOrderWithoutRecursion2(BTNode* root) {
    if (root == nullptr) return;

    BTNode* p = root;
    stack<BTNode*> s;
    while (!s.empty() || p != null):
        if (p != NULL):
            s.push(p);     //保存一路走过的根节点的理由是：中序遍历的需要，
            p = p->lchild; //遍历完左子树后，需要借助根节点进入右子树。
        else:
            p = s.top(); s.pop();
            visitNode(p);  // 只有在左子树全部被访问，父节点弹出栈才访问
            p = p->rchild; // 之后就是访问右子树
```

二叉树的`pre-order`遍历和`in-order`遍历的区别较小，只是访问节点的时机不同.

##### :triangular_flag_on_post: [后序遍历](https://www.yunaitong.cn/binary-tree-traverse.html#toc_9)

```cpp
/* 后序遍历 */
void postorderTraversal(TreeNode root):
    if (root == null):
        return;

    Stack<TreeNode> stack = new Stack<TreeNode>();
    TreeNode cur = root;
    TreeNode last = null;
    while (cur != null || !stack.isEmpty()):
        if (cur != null):
            stack.push(cur);
            cur = cur->left;
        else:							  //自父节点左跳入null。父节点必为栈顶节点
            TreeNode peek = stack.peek();	//父节点，左孩子为null,检查右孩子即可
            if (peek->right != null 		//可以左跳到null
                && last != peek->right):	//但不允许右跳到null
                cur = peek->right;
            else:
                peek = stack->pop();
			   visit(peek);
                last = peek;
```



##### ~~乱七八糟~~

1. [二叉树遍历算法总结 - 简书](https://www.jianshu.com/p/c54abe6632bd)

2. [二叉树系列——二叉树的宽度（百度面试题） - CSDN博客](https://blog.csdn.net/liuyi1207164339/article/details/50902020)

3. [简书：Java二叉树遍历(先序、中序、后序)](https://www.jianshu.com/p/456af5480cee) <!--整体略详细-->

   > 三种遍历方法的考查顺序一致，得到的结果却不一样，原因在于：
   >
   > **先序：**考察到一个节点后，即刻输出该节点的值，并继续遍历其左右子树。(根左右)
   >
   > **中序：**考察到一个节点后，将其暂存，遍历完左子树后，再输出该节点的值，然后遍历右子树。(左根右)
   >
   > **后序：**考察到一个节点后，将其暂存，遍历完左右子树后，再输出该节点的值。(左右根) ![后序遍历](http://segmentfault.com/img/bVdgJs)

4. [关于二叉树非递归遍历](http://crescentmoon.info/2012/10/14/%E5%85%B3%E4%BA%8E%E4%BA%8C%E5%8F%89%E6%A0%91%E9%9D%9E%E9%80%92%E5%BD%92%E9%81%8D%E5%8E%86/) <!--大概后序遍历讲得还好-->

5. [CSDN：二叉树前序，中序，后序遍历迭代实现解](https://blog.csdn.net/u014787113/article/details/49717831) <!--邓俊晖的方法，解释一般-->

6. [简书：一种统一的个人想法的非递归遍历二叉树的方法](https://www.jianshu.com/p/49c8cfd07410) <!--看看就行了-->

---

#### 二叉搜索树

###### Article 1

> [CSDN：数据结构和算法——二叉排序树](https://blog.csdn.net/google19890102/article/details/54378628)
>
> <!--给出了相当普遍的那个算法。还行。-->

> ###### 构建：
>
> ```cpp
> typedef struct tree_node {
>         double value;
>         struct tree_node *left;
>         struct tree_node *right;
> }*Tree, TreeNode;
> ```
>
>   `Tree`等价于`TreeNode*`，前者是指针结构。这里使用C语言描述。
>
> ###### 查找：
>
>   ```cpp
> int search_value(Tree root, double a, Tree *p);
>   ```
>
> - 尾递归算法。查找成功返回1，否则返回0。失败的情况：`root == nullptr`和不存在查找值。
> - 递归出口是`root == nullptr`或者查找成功。 
> - `p`用来记录父节点，所以传入的是pointer；若`root == nullptr`，则p不修改。
>
> ###### 插入：
>
>   ```cpp
>   int insert_tree(node *root, double a);
>   ```
>
> - 非递归算法。`root`中已经有`a`，插入失败，返回0；否则返回1.
> - 若`root != nullptr`，利用`search_value()`找到待插入节点的父节点。
> - 因为利用了`search_value()`，所以实现较简单。额外的时间复杂度`O(1)`。
>
> ###### 删除：
>
> ```cpp
> int delete_node(node *root, double a);
> ```
>
> 1. <u>节点既无左子树，又无右子树</u>
>
>    删除的方法：设置父节点指向该节点的指针为空，直接删除该节点。 
>
> 2. <u>若删除的节点只包含左子树或者只包含右子树</u>
>
>    删除的方法：删除该节点，以其左子树或者右子树代替该节点。 
>
>    > 前两种情况可以统一成：删除某个节点，如果左子树是空的，那么使其右子树（可能是空的）代替该节点。
>
> 3. <u>若删除的节点既包含左子树，又包含右子树</u>
>
>    删除的方法：找到待删除的节点，选择其左子树中的最大的节点或者其右子树中最小的节点，代替该节点。
>
>    > 简单的思考证明。二叉搜索树的垂直投影是单调递增序列，子树的根节点是中位点。
>    >
>    > 删除树根节点后，为了补上新的节点，只可以用原根节点左右两边的节点。
>    >
>    > 它们分别是左子树序列的最大值和右子树序列的最小值。也是左子树最右的节点，和右子树最左的节点。前者没有右孩子，后者没有左孩子。替补的过程中，又发生了前两种情况的删除。

###### Article 2

> [二叉查找树（BST）](https://songlee24.github.io/2015/01/13/binary-search-tree/) <!--另一篇还不错的文章。懒得看了-->

##### 题目 📔

- [LeetCode总结 -- 二叉查找树篇 - 程序园](http://www.voidcn.com/article/p-gykxqrpd-bg.html)

### 二叉树题目

- [【Leetcode】【二叉树】相关题目汇总，分析，总结](https://zhuanlan.zhihu.com/p/29800274)

## 📁 图 

### General

- [数据结构之图 - 作业部落 Cmd Markdown 编辑阅读器](https://www.zybuluo.com/guoxs/note/249812#%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84%E4%B9%8B%E5%9B%BE) :thumbsup: <!--有目录且总结全面详细-->
- [Graph Data Structure And Algorithms](https://www.geeksforgeeks.org/graph-data-structure-and-algorithms/#introDFSnBFS) <!--既有文章说明，又有代码实现练习-->
- [数据结构图(Graph)详解](http://data.biancheng.net/graph/) <!--有目录索引，简明不错，有代码-->

### 图的遍历 :world_map:

- [浅谈算法和数据结构（12）：无向图相关算法基础 - 文章 - 伯乐在线](http://blog.jobbole.com/79314/) <!--主要是关于图的遍历。代码不错，C#-->

### 杂七杂八

- [数据结构：图的表示 - 文章 - 伯乐在线](http://blog.jobbole.com/108431/)

  > 一直以来，我也是觉得，鱼和熊掌不可兼得，这是无可奈何的事情。直到我看到了一份比较完美的code。他有动态分配的数组来存放邻接节点。一起欣赏下这份代码吧。年前我第一次看到这份代码的时候，激动的我晚上半天睡不着觉。平时自己写的代码，一板一眼，虽说功能无误，总少了那么几分灵气。看了C算法，也算对图的表示方法知道一些，却写不出这么优美的代码。
  >
  > 我以前觉得，自己大量练习联系写代码是学习编程的最好的方法，是最开但是看了这份代码后，觉得，学习前辈高人优秀的代码，是提高自己的一条捷径，对我们这些普通的coder而言，我们看代码的时间是超过写代码的时间的。阅读前辈优秀代码，会更快的提升自己的编程能力。对于初学者尤其是这样，这也是进入一个优秀的开发team的重要性，能更快的成长。

- [图（邻接矩阵->邻接表：邻接表->邻接矩阵） - CSDN博客](https://blog.csdn.net/J_Anson/article/details/50156815)

- [数据结构和算法学习笔记：图论](http://www.yeolar.com/note/2012/05/30/ds-graph/) <!--冷门的一些东西-->

## 📁 查找

- [B树和B+树的插入、删除图文详解 - nullzx - 博客园](https://www.cnblogs.com/nullzx/p/8729425.html)
- [B树和B+树的总结 - banananana - 博客园](https://www.cnblogs.com/George1994/p/7008732.html)
- [【经典数据结构】B树与B+树 - vincently - 博客园](https://www.cnblogs.com/vincently/p/4526560.html)

## 📁 排序

- [常见排序算法 · 看云](https://www.kancloud.cn/kancloud/sort-algorithm)

- [面试中的 10 大排序算法总结](http://www.codeceo.com/article/10-sort-algorithm-interview.html) <!--不错。每个算法前都有长段说明，语言通俗。-->
- [简书：八大排序的Java实现](https://www.jianshu.com/p/7f39f04af138)



## :end: