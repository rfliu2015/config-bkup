[TOC]

---

# Programming Online

- [GeeksForGeeks](https://www.geeksforgeeks.org/)
- [LeetCode](https://leetcode.com/)
- [牛客网](https://www.nowcoder.com/)
- [北京林业大学-数据结构习题](http://www.bjfuacm.com/structure/)

# Others

- [博客园：从《编程之美》买票找零问题说起，娓娓道来卡特兰数——兼爬坑指南](http://www.cnblogs.com/wuyuegb2312/p/3016878.html#suggestion) <!--超详细-->

---

# 算法绪论

## 时间复杂度

- [算法导论--递归算法的时间复杂度求解 - CSDN博客](https://blog.csdn.net/so_geili/article/details/53444816)

  > 虽然非递归算法的时间复杂度比较好分析，但往往需要用到多项式的求和技巧和放缩技巧。
  >
  > **迭代法：** 从原始递推方程开始，反复将对于递推方程左边的函数用右边的等式代入，直到得到初值，然后将所得的结果进行化简。  例如在调用归并排序mergeSort(a, 0, n-1)对数组$a[0...n-1]$排序时，执行时间$T(n)$的递推关系式为：$T{(n)}=   \begin{cases} >  O(1)， &        当 n=1\\    2T(\frac{n}{2})+O(n)，&当n>=2  \end{cases}$ 
  >
  > 其中，$O(n)$为merge()所需要的时间，设为$cn$（c为正常量）。因此： 
  >
  > $\begin{split}    T(n)&=2T(\frac{n}{2})+cn=2(2T(\frac{n}{4})+\frac{cn}{2})+cn=2^2T(\frac{n}{4})+2cn\\ &=2^3T(\frac{n}{8})+3cn=...=2^kT(\frac{n}{2^k})+kcn\\ &=nO(1)+cn\log_2n\\ &=O(n\log_2n),(假设n=2^k,则k=\log_2n) \end{split}$
  >
  > 忽略求解细节。在我们求解递归式时，因为最终是要求得一个时间上限，所以在求解时常常省略一些细节。比如`mergeSort(a, 0, n-1)`运行时间的实际递归式应该是：  
  >
  > $ T{(n)}=   \begin{cases}O(1)， &        当 n=1\\    T(\left \lceil \frac{n}{2}\right\rceil)+T(\left \lfloor \frac{n}{2}\right\rfloor)+O(n)，&当n>=2  \end{cases}$
  >
  > 但我们忽略这些上取整、下取整以及边界条件，甚至假设问题规模n=2kn=2k，这都是为方便求解而忽略的细节。经验和一些定理告诉我们，这些细节不会影响算法时间复杂度的渐近界。 

- [关于斐波那契数列三种解法及时间复杂度分析 - CSDN博客](https://blog.csdn.net/beautyofmath/article/details/48184331)

# 表

## 线性表

- [数据结构例程——线性表顺序存储的应用 - CSDN博客](https://blog.csdn.net/sxhelijian/article/details/48285785)

  > 问题：已知长度为n的线性表A采用顺序存储结构，设计算法，删除线性表中所有值为x的数据元素。 
  >
  > 问题 :设顺序表有10个元素，其元素类型为整型。 设计一个算法，以第一个元素为分界线，将所有小于它的元素移到该元素的前面，将所有大于它的元素移到该元素的后面。
  >
  > ```cpp
  > void move1(SqList *&L):
  >     int i=0,j=L->length-1;
  >     ElemType pivot=L->data[0];  //以data[0]为基准
  >     ElemType tmp;
  >     while (i<j):             //从区间两端交替向中间扫描,直至i=j为止
  >         while (i<j && L->data[j] > pivot):
  >             j--;            //从右向左扫描,找第1个小于等于pivot的元素
  >         while (i<j && L->data[i] <= pivot):
  >             i++;            //从左向右扫描,找第1个大于pivot的元素
  >         if (i < j):
  >             tmp=L->data[i]; //L->data[i]和L->data[j]进行交换
  >             L->data[i]=L->data[j];
  >             L->data[j]=tmp;
  >     tmp=L->data[0];         //L->data[0]和L->data[j]进行交换
  >     L->data[0] = L->data[j];
  >     L->data[j] = tmp;
  > ```
  >
  > ```cpp
  > void move2(SqList *&L):
  >     int i=0, j=L->length-1;
  >     ElemType pivot = L->data[0];  //以data[0]为基准
  >     while (i<j):                 //从顺序表两端交替向中间扫描,直至i=j为止
  >         while (j>i && L->data[j]>pivot):
  >             j--;                //从右向左扫描,找一个小于等于pivot的data[j]
  >         L->data[i] = L->data[j];  //找到这样的data[j],放入data[i]处
  >         i++;
  >         while (i<j && L->data[i]<=pivot):
  >             i++;                //从左向右扫描,找一个大于pivot的记录data[i]
  >         L->data[j] = L->data[i];  //找到这样的data[i],放入data[j]处
  >         j--;
  >     L->data[i] = pivot;
  > ```

- [求两个升序序列的中位数 - 程序园](http://www.voidcn.com/article/p-aovmftmh-yq.html)

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

## 堆栈

- [**中缀表达式转换为后缀表达式** - CSDN博客](https://blog.csdn.net/sgbfblog/article/details/8001651#t0)

  > 中缀表达式`a + b * c + (d * e + f) * g`，其转换成后缀表达式则为`a b c * + d e * f  + g * +`。
  > 转换过程需要用到栈，具体过程如下：
  >
  > 1. 如果遇到操作数，我们就直接将其输出。
  > 2. 如果遇到操作符，则我们将其放入到栈中，遇到左括号时我们也将其放入栈中。
  > 3. 如果遇到一个右括号，则将栈元素弹出，将弹出的操作符输出直到遇到左括号为止。注意，左括号只弹出并不输出。
  > 4. 如果遇到任何其他的操作符，如`+`， `*`，`（`等，从栈中弹出元素直到遇到发现更低优先级的元素(或者栈为空)为止。弹出完这些元素后，才将遇到的操作符压入到栈中。有一点需要注意，<u>只有在遇到` ) `的情况下我们才弹出` ( `，其他情况我们都不会弹出` ( `</u>。
  > 5. 如果我们读到了输入的末尾，则将栈中所有元素依次弹出。

# 树

## 二叉树遍历

<img src="https://upload-images.jianshu.io/upload_images/2405011-5f5b0b136713f744.jpg" style="zoom:40%" >

##### Article 1

> [**非递归遍历二叉树** - CSDN博客](https://blog.csdn.net/kofsky/article/details/2886453/) 
>
> <!--版本全面，解释简略-->

> 其实过程很简单：一直往左走 root->left->left->left...->null，由于是先序遍历，因此一遇到节点，便需要立即访问；由于一直走到最左边后，需要逐步返回到父节点访问右节点，因此必须有一个措施能够对节点序列回溯。
>
> 有两个办法： `1. 用栈记忆`：在访问途中将依次遇到的节点保存下来。*由于节点出现次序与恢复次序是反序的，因此是一个先进后出结构，需要用栈。*
>
> ```cpp
> /* 前序遍历 */
> void preOrder1(BTNode* root) {
>     if (root == nullptr) return;
>     
>     BTNode* p = root;
>     stack<BTNode*> s;
>     while (!s.empty() || p) {
>         if (p) {
>             visitNode(p);  // 先序就体现在这里了，先访问，再入栈
>             s.push(p);
>             p = p->lchild; // 依次访问左子树
>         } else {
>             p = s.top();   // 回溯至父亲节点
>             s.pop();
>             p = p->rchild;
>         }
>     }
> }
> ```
>
> `preOrder1`每次都将遇到的节点压入栈，当左子树遍历完毕后才从栈中弹出最后一个访问的节点，访问其右子树。在同一层中，不可能同时有两个节点压入栈，因此栈的大小空间为`O(h)`，`h`为二叉树高度。时间方面，每个节点都被压入栈一次，弹出栈一次，访问一次，复杂度为`O(n)`.

##### Article 2

> [**二叉树前序、中序、遍历非递归写法的透彻解析，后续标志法** - CSDN博客](https://blog.csdn.net/zhangxiangdavaid/article/details/37115355) <!--中序的过程最详细-->
>

> 假设，你面前有一棵二叉树，现要求你写出它的中序遍历序列。如果你对中序遍历理解透彻的话，你肯定先找到左子树的最下边的节点。
>
> > `<二叉树>`：`<左子树>`根节点`<右子树>`。又根据递归性质，对`左子树`有相同的情况。因此初始节点是the left most node。
>
> 保存一路走过的根节点的理由是：中序遍历的需要，遍历完左子树后，需要借助根节点进入右子树。
>
> 二叉树的`pre-order`遍历和`in-order`遍历的区别较小，只是访问节点的时机不同：
>
> ```cpp
> /* 中序遍历 */
> void InOrderWithoutRecursion2(BTNode* root) {
>     if (root == nullptr) return;
> 
>     BTNode* p = root;
>     stack<BTNode*> s;
>     while (!s.empty() || p != NULL):
>         if (p != NULL):
>             s.push(p);
>             p = p->lchild;
>         else:
>             p = s.top(); s.pop();
>             visitNode(p);  // 只有在左子树全部被访问，父节点弹出栈才访问
>             p = p->rchild; // 之后就是访问右子树
> ```
> 另一个前序遍历不错，利用了栈的特性，但是此方法不通用。 此过程相当于一次深度优先遍历：
> ```cpp
> void preOrderDFS(TreeNode *root)
> {
>     if (root == nullptr) return;
> 
>     stack<TreeNode *> nstack;
>     nstack.push(root);
> 
>     TreeNode *cur = root;
>     while (!nstack.empty()) {
>         cur = nstack.top();
>         nstack.pop();
>         visitNode(cur);              // 先访问根节点，然后根节点就无需入栈
> 
>         if (node->right != nullptr) {
>             nstack.push(node->right);
>         }
>         if (node->left != nullptr) {
>             nstack.push(node->left);
>         }
>     }
> }
> 
> ```
>
> `preOrderDFS`每次将节点压入栈，然后弹出，压右子树，再压入左子树，在遍历过程中，遍历序列的右节点依次被存入栈，左节点逐次被访问。同一时刻，栈中元素为m-1个右节点和1个最左节点，最高为h。所以空间也为`O(h)`；每个节点同样被压栈一次，弹栈一次，访问一次，时间复杂度`O(n)`

1. [简书：Java二叉树遍历(先序、中序、后序)](https://www.jianshu.com/p/456af5480cee) <!--整体略详细-->

   > 三种遍历方法的考查顺序一致，得到的结果却不一样，原因在于：
   >
   > **先序：**考察到一个节点后，即刻输出该节点的值，并继续遍历其左右子树。(根左右)
   >
   > **中序：**考察到一个节点后，将其暂存，遍历完左子树后，再输出该节点的值，然后遍历右子树。(左根右)
   >
   > **后序：**考察到一个节点后，将其暂存，遍历完左右子树后，再输出该节点的值。(左右根) 

2. [关于二叉树非递归遍历](http://crescentmoon.info/2012/10/14/%E5%85%B3%E4%BA%8E%E4%BA%8C%E5%8F%89%E6%A0%91%E9%9D%9E%E9%80%92%E5%BD%92%E9%81%8D%E5%8E%86/) <!--大概后序遍历讲得还好-->

3. [CSDN：二叉树前序，中序，后序e遍历迭代实现解](https://blog.csdn.net/u014787113/article/details/49717831) <!--邓俊晖的方法，解释一般-->

4. [简书：一种统一的个人想法的非递归遍历二叉树的方法](https://www.jianshu.com/p/49c8cfd07410) <!--看看就行了-->

---

## 二叉搜索树

##### Article 1

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
> - 尾递归算法。查找成功返回1，否则返回0。失败的情况：`root==nullptr`和不存在查找值。
> - 递归出口是`root == nullptr`或者查找成功。 
> - `p`用来记录父节点，所以传入的是pointer；若`root==nullptr`，则p不修改。
>
> ###### 插入：
>
>   ```cpp
>   int insert_tree(node *root, double a);
>   ```
>
> - 非递归算法。`root`中已经有`a`，插入失败，返回0；否则返回1.
> - 若`root!=nullptr`，利用`search_value()`找到待插入节点的父节点。
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

##### Article 2

> [二叉查找树（BST）](https://songlee24.github.io/2015/01/13/binary-search-tree/) <!--另一篇还不错的文章。懒得看了-->



# 图

## General

- [Graph Data Structure And Algorithms](https://www.geeksforgeeks.org/graph-data-structure-and-algorithms/#introDFSnBFS) <!--既有文章说明，又有代码实现练习-->



# 排序

- [面试中的 10 大排序算法总结](http://www.codeceo.com/article/10-sort-algorithm-interview.html) <!--不错。每个算法前都有长段说明，语言通俗。-->
- [简书：八大排序的Java实现](https://www.jianshu.com/p/7f39f04af138)





# —END—