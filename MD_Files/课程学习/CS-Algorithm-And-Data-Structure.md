# Programming Online

- [GeeksForGeeks](https://www.geeksforgeeks.org/)
- [LeetCode](https://leetcode.com/)
- [牛客网](https://www.nowcoder.com/)

# Others

- [博客园：从《编程之美》买票找零问题说起，娓娓道来卡特兰数——兼爬坑指南](http://www.cnblogs.com/wuyuegb2312/p/3016878.html#suggestion) <!--超详细-->

# 树

## 二叉树遍历

<img src="https://upload-images.jianshu.io/upload_images/2405011-5f5b0b136713f744.jpg" style="zoom:40%" >

1. [CSDN：非递归遍历二叉树](https://blog.csdn.net/kofsky/article/details/2886453/) <!--版本全面，解释简略-->

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

2. [CSDN：二叉树前序、中序、遍历非递归写法的透彻解析，后续标志法](https://blog.csdn.net/zhangxiangdavaid/article/details/37115355) <!--中序的过程最详细-->

   > 假设，你面前有一棵二叉树，现要求你写出它的中序遍历序列。如果你对中序遍历理解透彻的话，你肯定先找到左子树的最下边的节点。
   >
   > > `<二叉树>`：`<左子树>`根节点`<右子树>`。又根据递归性质，对`左子树`有相同的情况。因此初始节点是the left most node。
   >
   > 保存一路走过的根节点的理由是：中序遍历的需要，遍历完左子树后，需要借助根节点进入右子树。
   >
   > > 二叉树的pre-order遍历和in-order遍历的区别较小，只是访问节点的时机不同：
   > >
   > > ```cpp
   > > /* 中序遍历 */
   > > void InOrderWithoutRecursion2(BTNode* root) {
   > >     if (root == nullptr) return;
   > > 
   > >     BTNode* p = root;
   > >     stack<BTNode*> s;
   > >     while (!s.empty() || p) {
   > >         if (p) {
   > >             s.push(p);
   > >             p = p->lchild;
   > >         } else {
   > >             p = s.top(); s.pop();
   > >             visitNode(p);  // 只有在左子树全部被访问，父节点弹出栈才访问
   > >             p = p->rchild; // 之后就是访问右子树
   > >         }
   > >     }
   > > }
   > > 
   > > 
   > > 
   > > ```
   > >
   > > 另一个前序遍历不错，利用了栈的特性，但是此方法不通用。 此过程相当于一次深度优先遍历：
   > >
   > > ```cpp
   > > void preOrderDFS(TreeNode *root)
   > > {
   > >     if (root == nullptr) return;
   > > 
   > >     stack<TreeNode *> nstack;
   > >     nstack.push(root);
   > > 
   > >     TreeNode *cur = root;
   > >     while (!nstack.empty()) {
   > >         cur = nstack.top();
   > >         nstack.pop();
   > >         visitNode(cur);              // 先访问根节点，然后根节点就无需入栈
   > > 
   > >         if (node->right != nullptr) {
   > >             nstack.push(node->right);
   > >         }
   > >         if (node->left != nullptr) {
   > >             nstack.push(node->left);
   > >         }
   > >     }
   > > }
   > > 
   > > ```
   > >
   > > `preOrderDFS`每次将节点压入栈，然后弹出，压右子树，再压入左子树，在遍历过程中，遍历序列的右节点依次被存入栈，左节点逐次被访问。同一时刻，栈中元素为m-1个右节点和1个最左节点，最高为h。所以空间也为`O(h)`；每个节点同样被压栈一次，弹栈一次，访问一次，时间复杂度`O(n)`

3. [简书：Java二叉树遍历(先序、中序、后序)](https://www.jianshu.com/p/456af5480cee) <!--整体略详细-->

   > 三种遍历方法的考查顺序一致，得到的结果却不一样，原因在于：
   >
   > **先序：**考察到一个节点后，即刻输出该节点的值，并继续遍历其左右子树。(根左右)
   >
   > **中序：**考察到一个节点后，将其暂存，遍历完左子树后，再输出该节点的值，然后遍历右子树。(左根右)
   >
   > **后序：**考察到一个节点后，将其暂存，遍历完左右子树后，再输出该节点的值。(左右根) 

4. [关于二叉树非递归遍历](http://crescentmoon.info/2012/10/14/%E5%85%B3%E4%BA%8E%E4%BA%8C%E5%8F%89%E6%A0%91%E9%9D%9E%E9%80%92%E5%BD%92%E9%81%8D%E5%8E%86/) <!--大概后序遍历讲得还好-->

5. [CSDN：二叉树前序，中序，后序e遍历迭代实现解](https://blog.csdn.net/u014787113/article/details/49717831) <!--邓俊晖的方法，解释一般-->

6. [简书：一种统一的个人想法的非递归遍历二叉树的方法](https://www.jianshu.com/p/49c8cfd07410) <!--看看就行了-->



# 图

## General

- [Graph Data Structure And Algorithms](https://www.geeksforgeeks.org/graph-data-structure-and-algorithms/#introDFSnBFS) <!--既有文章说明，又有代码实现练习-->

# 排序

- [面试中的 10 大排序算法总结](http://www.codeceo.com/article/10-sort-algorithm-interview.html) <!--不错。每个算法前都有长段说明，语言通俗。-->
- [简书：八大排序的Java实现](https://www.jianshu.com/p/7f39f04af138)





# —END—