# 编程范式

1. [从赋值语句去理解命令式编程](http://www.nowamagic.net/academy/detail/1220509)

   > 命令式编程一瞥。<!--确实是很好的入门-->
   >
   > 汇编语言，就是命令式语言的一种。计算机在硬件结构上天生就是命令式的、顺序式的。 [命令式编程](http://www.nowamagic.net/academy/tag/%E5%91%BD%E4%BB%A4%E5%BC%8F%E7%BC%96%E7%A8%8B)模型简单直观，而且符合底层计算机硬件结构，因而大行其道，……比如，函数式编程语言（Functional Programming Language），就是一种与命令式语言概念区别甚大的一种非命令式编程语言。
   >
   > ……一条赋值语句的基本形式：左值 = 右值。左值是变量名，右值是表达式。赋值语句就可以写成这样：变量名 = 表达式。这就涉及到编程语言中两个十分重要的概念——变量和表达式。这两个词语源自于数学（代数）中的概念。……，不像在代数中那么纯粹。
   >
   > 我们前面说过，命令式语言是有顺序的、并且按照顺序执行的。赋值语句的执行过程是这样的，……。在命令式编程语言中，所有的变量名都具有这种两面性。可以读，也可以写，因此，可能时时变化。这也符合了变量这个名词的字面含义——可以变化的数量值。 
   >
   > [函数式编程( Functional)与命令式编程( Imperative)对比](https://blog.csdn.net/bitcarmanlee/article/details/53158840)：纯函数式编程语言中的变量也不是命令式编程语言中的变量，即存储状态的单元，而是代数中的变量，即一个值的名称。变量的值是不可变的（immutable），也就是说不允许像命令式编程语言中那样多次给一个变量赋值。比如说在命令式编程语言我们写“x = x + 1”，这依赖可变状态的事实，拿给程序员看说是对的，但拿给数学家看，却被认为这个等式为假。 <!--包含两三个不错的例子！-->
   >
   > [Imperative versus declarative code… what’s the difference?](https://medium.com/front-end-hacking/imperative-versus-declarative-code-whats-the-difference-adc7dd6c8380)：Your code focuses on creating **statements that change program states** by creating algorithms that tell the computer **how to do things**. It closely relates to how hardware works. Typically your code will make use of **conditinal statements**, **loops** and **class inheritence**. 
   >
   > **Declarative code** focuses on building **logic of software without actually describing its flow**. You are saying **what without adding how**. For example with **HTML** you use `<img src="./image.jpg" />` to tell browser to display an image and you don’t care how it does that. 

2. [命令式编程 vs 声明式编程](https://mp.weixin.qq.com/s?__biz=MzAxOTc0NzExNg==&mid=2665513409&idx=1&sn=96a63f7ee3961ed05abec10af0e49c7e&chksm=80d67982b7a1f0944dbb9b00b93f9759d4e373652381c4b0716c182d96b0eae480da10fe2807#rd)

   > <!--另一角度入门不错的文章。-->对上文命令式编程的补充很好。
   >
   > 实际上我们绝大多数程序员都是在用命令式风格在编程， 这是和我们的冯诺依曼计算机机构密切相关的。 
   >
   > 在一个冯诺依曼计算机中， 最核心的就是CPU和内存， 指令和数据都放在内存当中， CPU每次取出一条指令， 译码，执行，然后把结果写回内存 ， 本质就这么简单。
   >
   > 命令式编程就是对硬件操作的抽象， 程序员需要通过指令，精确的告诉计算机干什么事情。
   >
   > 这就是程序员苦逼的地方： 需要把复杂的， 容易产生歧义的人类语言翻译成精确的计算机语言指令。
   >
   > 再用Java举个例子， 例如有一个学生列表， 我们要计算出年龄小于18的学生数量， 如果用传统的命令式， 代码是这样：
   >
   >  ```java
   > int count = 0;
   > Iterator<Student> iter = students.iterator();
   > while(iter.hasNext()) {
   >     Student s = iter.next();
   >     if (s.getAge() < 18) {
   >         count++;
   >     }
   > }
   >  ```
   >
   > 在Java 8 中， 它对应的声明式则是这样： 
   >
   > ```java
   > int count = students.stream().filter(s -> s.getAge() < 18).count();
   > ```
   >
   > 声明性是函数式编程的一个重要特点， 函数式还有其他特点， 像高阶函数、函数没有side effect,  只有值而没有变量， 用递归而不是用迭代等等。  想要完全的掌握函数式需要你彻底的刷新思维， 甚至忘掉命令式的习惯， 所以学习曲线比较陡峭。 



# 算法思想

## 递归

1. [疯子的博客：理解递归](https://www.mincooder.com/di-gui-li-jie/)

   > <!--Brilliant！-->
   >
   > ……一般来说，递归需要有边界条件、递归前进段和递归返回段。当边界条件不满足时，递归前进；当边界条件满足时，递归返回。 一般来讲，能用递归来解决的问题必须满足两个条件：
   >
   > 1. 可以通过递归调用来缩小问题规模，且新问题与原问题有着相同的形式。
   > 2. 存在一种简单情境，可以使递归在简单情境下退出。
   >
   > 英文的Recursion从词源上分析只是……，而对应的中文翻译 ”递归“ 却表达了两个意思：”递“＋”归“。 这两个意思，正是递归思想的精华所在。从这层次上来看，中文翻译反而更达意。
   >
   > *递归就是有去（递去）有回（归来） 注意这句话。*（参考[深入理解递归](https://www.cnblogs.com/klguang/p/5463137.html)有很好的图示）
   >
   > 具体来说，为什么可以”有去“？ 这要求递归的问题需要是可以用同样的解题思路来回答类似但略有不同的问题（上面例子中的那一把钥匙可以开后面门上的锁）。为什么可以”有回“？这要求这些问题不断从大到小，从近及远的过程中，会有一个终点，一个临界点，一个baseline，一个你到了那个点就不用再往更小，更远的地方走下去的点，然后从那个点开始，原路返回到原点。
   >
   > 需注意的是，规模大转化为规模小是核心思想，但递归并非是只做这步转化，而是把规模大的问题**分解为规模小的子问题和可以在子问题解决的基础上剩余的可以自行解决的部分**。**注意这句话。** 
   >
   > ……

2. [简书：人脑理解递归](https://www.jianshu.com/p/4db970d8ddc1)

   > <!--不错，借鉴其他人想法，自己的想法略粗糙。提出了几个例子，自己可以找些其他资料。-->
   >
   > 需注意的是，规模大转化为规模小是核心思想，但递归并非是只做这步转化，而是把规模大的问题分解为规模小的子问题，和可以在子问题解决的基础上剩余的、可以自行解决的部分。而后者就是归的精髓所在，是在实际解决问题的过程。
   >
   > 其实递归可以是“有去有回”，也可以是“有去无回”。但其根本是“由大往小地去，由近及远地去”。“递”是必需，“归”并非必需，依赖于要解决的问题，有的需要去的路上解决，有的需要回来的路上解决。有递无归的递归其实就是我们很容易理解的一种分治思想。 

3. [朋友你听说过尾递归吗](http://imweb.io/topic/584d33049be501ba17b10aaf)

   > <!--Good-->
   >
   > 在计算的过程中，堆栈需要不停的记录每一层次调用的详细信息（如参数、局部变量、返回地址等等），以确保该层次的操作完成，能返回到上一层次，这些信息再少也会占用一定空间……。于是`stackOverflow`异常就被抛出了。 
   >
   > 你会发现，尾调用作为函数的最后一步操作，它在某些场景下不需要保存外层函数的调用记录，因为这些信息不会再被用到了（这里是作为参数传入下一次调用了），所以可以以上层调用帧作为尾调用的调用环境。 
   >
   > > [斐波那契数列及尾递归](http://lixinzhang.github.io/fei-bo-na-qi-shu-lie-ji-wei-di-gui.html)：尾调用的重要性在于它可以不在调用栈上面添加一个新的堆栈帧——而是更新它，如同迭代一般。尾递归因而具有两个特征： 调用自身函数(Self-called)； 计算仅占用常量栈空间(Stack Space)。 而形式上只要是最后一个return语句返回的是一个完整函数，它就是尾递归。 
   >
   > 使用尾递归，取消过多的堆栈记录，而只记录最外层和当前层的信息，完成计算后，立刻返回到最上层。这也就不会有栈溢出的问题，同时减少了内存以及上下文切换的损耗。 
   >
   > 细心的朋友也发现了，**尾递归的本质实际上就是将方法需要的上下文通过方法的参数传递进下一次调用之中**，以达到去除上层依赖。 
   >
   > > [尾递归与Continuation](http://blog.zhaojie.me/2009/03/tail-recursion-and-continuation.html)：与普通递归相比，由于尾递归的调用处于方法的最后，因此方法之前所积累下的各种状态对于递归调用结果已经没有任何意义，因此完全可以把本次方法中留在堆栈中的数据完全清除，把空间让给最后的递归调用。这样的优化便使得递归不会在调用堆栈上产生堆积，意味着即时是“无限”递归也不会让堆栈溢出。这便是尾递归的优势。
   > >
   > > 有些朋友可能已经想到了，尾递归的本质，其实是将递归方法中的需要的“所有状态”通过方法的参数传入下一次调用中。
   >
   > > 我的理解：非尾递归从第一次递归开始，不断地产生树结构分支，一直到达到递归结束条件开始返回。也就是从树叶的位置(baseline)返回到根位置。尾递归产生的是单链表的结构，因此结构相当简化。
   > >
   > > [类似](http://www.voidcn.com/article/p-qdsabmbw-xk.html)：`fibonacci(n-1, acc2, acc1+acc2)`真是神来之笔，原本朴素的递归产生的栈的层次像二叉树一样，以指数级增长，但是现在栈的层次却像是数组，变成线性增长了，实在是奇妙，总结起来也很简单，原本栈是先扩展开，然后边收拢边计算结果，现在却变成在调用自身的同时通过参数来计算。 
   > >
   > > 尾递归的本质是：将单次计算的结果缓存起来，传递给下次调用，相当于自动累积。
   > >
   > > 在Java等命令式语言中，尾递归使用非常少见，因为我们可以直接用循环解决。而在函数式语言中，尾递归却是一种神器，要实现循环就靠它了。

4. [递归算法详解](https://chenqx.github.io/2014/09/29/Algorithm-Recursive-Programming/)

   > <!--之前的已经解释很详细了。这个文章作为补充很好，有些有趣的句子。-->
   >
   > 然而递归的思维确实很我们的常规思维相逆的，我们通常都是从上而下的思维问题， 而递归趋势从下往上的进行思维。……
   >
   > 不过，使用 归纳定义的（`inductively-defined`）数据集 可以令子问题的获得更为简单。归纳定义的数据集是根据自身定义的数据结构 —— 这叫做 *归纳定义*（`inductive definition`）。 
   >
   > 不过，有一类函数，即尾部递归函数，不管递归有多深，栈的大小都保持不变。尾递归属于线性递归，更准确的说是线性递归的子集。 
   >
   > 当编译器检测到一个函数调用是尾递归的时候，它就覆盖当前的活动记录而不是在栈中去创建一个新的。编译器可以做到这点，因为递归调用是当前活跃期内最后一条待执行的语句，于是当这个调用返回时栈帧中并没有其他事情可做，因此也就没有保存栈帧的必要了。通过覆盖当前的栈帧而不是在其之上重新添加一个，这样所使用的栈空间就大大缩减了，这使得实际的运行效率会变得更高。 
   >
   > 可见，要使调用成为真正的尾部调用，在尾部调用函数返回之前，对其结果 *不能执行任何其他操作*。 *注意*，由于在函数中不再做任何事情，那个函数的实际的栈结构也就不需要了。 

5. [看云：（07）递归程序设计](https://www.kancloud.cn/digest/binarytreeex/162180)

   > <!--从设计层面谈递归程序。很有趣的想法，提供idea-->
   >
   > 先从一个具体的例子开始引入巴克斯范式。现将前一篇“递归程序构造”中关于二叉树的定义再次描述如下： 
   >
   > ```html
   > <二叉树> = null | 节点<左子树><右子树>  
   > <左子树> = <二叉树>  
   > <右子树> = <二叉树> 
   > ```
   >
   > 上面的定义由三行文本组成，每一行文本是一个等式，称之为规则，所以一共是三条规则。等号的左边称为非终结符，等号的右边表示这个非终结符的组成内容。一般非终结符用“<”和“>”两个符号包围。这些是巴克斯范式中的内容。 
   >
   > 请注意写出递归的关键是发现问题的递归结构，这个递归结构是事物本身的特性，而不是只指我们需要对该事物执行什么样的操作。这就是说逆转操作不是关键，关键是如何找到字符串的递归结构或者说如何找到字符串的递归定义。当然这个能力需要在实践中逐步培养。 

6. 漫谈系列 <!--不懂。。-->

   > [漫谈递归：尾递归与CPS](http://www.nowamagic.net/librarys/veda/detail/2331)：尾递归就是Continuation Passing Style。
   >
   > [漫谈递归：递归的思想](http://www.nowamagic.net/librarys/veda/detail/2314) ：用归纳法来理解递归。

7. [十张GIFs让你弄懂递归等概念](http://www.10tiao.com/html/160/201607/2649639232/1.html) <!--蛮有趣，不过没啥大用-->

## 回溯算法

1. [Backtracking - David Matuszek](https://www.cis.upenn.edu/~matuszek/cit594-2012/Pages/backtracking.html) :star:

   > <!--Brilliant！不过需要花时间去看，英文略长。内容略丰富。比之大多中文文章可信的多！-->
   >
   > <!--关于回溯的原理几乎全部讲到了，而且到点子上！需要细细揣摩并且写自己的感悟-->
   >
   > <!--提供了回溯算法的伪代码，是通用的模板！又对思想的解释极好！-->
   >
   > …If you run out of options, revoke the choice that got you here, and try another choice at that node. If you end up at the root with no options left, there are no good leaves to be found. 
   >
   > Notice that the algorithm is expressed as a *boolean* function. This is essential to understanding the algorithm. If `solve(n)` is true, that means node` n `is part of a solution--that is, node` n `is one of the nodes on a path from the root to some goal node. We say that` n `is *solvable*. If` solve(n) `is false, then there is *no* path that includes` n` to any goal node. 
   >
   > ```java
   > // Non-recursive backtracking, using a stack
   > boolean solve(Node n) {
   >     put node n on the stack;
   >     while the stack is not empty {
   >         if the node at the top of the stack is a leaf {
   >             if it is a goal node, return true
   >             else pop it off the stack
   >         }
   >         else {
   >             if the node at the top of the stack has untried children
   >                 push the next untried child onto the stack
   >             else pop the node off the stack
   > 
   >     }
   >     return false
   > }
   > ```
   >
   > Starting from the root, the only nodes that can be pushed onto the stack are the children of the node currently on the top of the stack, and these are only pushed on one child at a time; hence, the nodes on the stack at all times describe a valid path in the tree. Nodes are removed from the stack only when it is known that they have no goal nodes among their descendents. Therefore, if the root node gets removed (making the stack empty), there must have been no goal nodes at all, and no solution to the problem. 
   >
   > When the stack algorithm terminates successfully, the nodes on the stack form (in reverse order) a path from the root to a goal node. 
   >
   > ```java
   > // the recursive backtracking algorithm, modified slightly 
   > // to print (in reverse order) the nodes along the successful path
   > boolean solve(Node n) {
   >     if n is a leaf node {
   >         if the leaf is a goal node {
   >            print n
   >            return true
   >         }
   >         else return false
   >     } else {
   >         for each child c of n {
   >             if solve(c) succeeds {
   >                 print n
   >                 return true
   >             }
   >         }
   >         return false
   >     }
   > }
   > ```
   >
   > To keep the program clean, therefore, tests like this should be buried in methods. In a chess game, for example, you could test whether a node is a leaf by writing a`gameOver `method (or you could even call it` isLeaf`). This method would encapsulate all the ugly details of figuring out whether any possible moves remain. 
   >
   > > The most straightforward way to keep track of which children of the node have been tried is as follows: Upon initial entry to the node (that is, when you first get there from above), make a list of all its children. As you try each child, take it off the list. When the list is empty, there are no remaining untried children, and you can return "failure." This is a simple approach, but it may require quite a lot of additional work.
   > >
   > > There is an easier way to keep track of which children have been tried, **if** you can define an ordering on the children. If there is an ordering, and you know which child you just tried, you can determine which child to try next.
   > >
   > > 对于迷宫算法来说，在一个分叉口(the node not a leaf)，有多个选项可以走(children)，有序的经过(上下左右)，可以保证全面、非重地检验可行性。
   >
   > > And finally, here's the recursive backtracking routine to "solve" the binary tree by finding a goal node. 
   > >
   > > ```java
   > > static boolean solvable(BinaryTree node) {
   > > /* 1 */  if (node == null) return false;
   > > /* 2 */  if (node.isGoalNode) return true;
   > > /* 3 */  if (solvable(node.leftChild)) return true;
   > > /* 4 */  if (solvable(node.rightChild)) return true;
   > > /* 5 */  return false;
   > > }
   > > ```
   > >
   > > Each time we ask for another node, we have to check if it is `null`. In the above we put that check as the first thing in `solvable`. An alternative would be to check first whether each child exists, and recur only if they do. Here's that alternative version: 
   > >
   > > ```java
   > > static boolean solvable(BinaryTree node) {
   > >     if (node.isGoalNode) return true;
   > >     if (node.leftChild != null && solvable(node.leftChild)) return true;
   > >     if (node.rightChild != null && solvable(node.rightChild)) return true;
   > >     return false;
   > > }
   > > ```
   > >
   > > I think the first version is simpler, but the second version is slightly more efficient. 
   > >
   > > 我更喜欢version 2，因为对此方法更像是一个辅助的方法(helper method)，用来被主程序调用。因此它的接口应该限制，范围越小越好。意思是对参数`node`，默认是非空的。对调用该方法的语句加以约束。

   -  [地图四色着图的C++实现](https://blog.csdn.net/ghuiL/article/details/40950175) <!--补充1-->

     > 上文也有提到四色问题，并且给出了两个思路，并且计算程序得到结论：***If there is any way to eliminate children (reduce the set of choices), do so!*** 这个例子则给出了很不错的四色问题的程序解。可供补充。

   - [[Leetcode\] Backtracking回溯法(又称DFS,递归)全解](https://segmentfault.com/a/1190000006121957) <!--补充2-->

     > <!--对上文的解读，很好很好很好！！！-->
     >
     > 回溯是一种穷举，但与brute force有一些区别，回溯带了两点脑子的，并不多，brute force一点也没带。 第一点脑子是回溯知道回头；相反如果是brute force,发现走不通立刻跳下山摔死，换第二条命从头换一条路走。 第二点脑子是回溯知道剪枝；如果有一条岔路上放了一坨屎，那这条路我们不走，就可以少走很多不必要走的路。 
     >
     > 判断回溯很简单，拿到一个问题，你感觉如果不穷举一下就没法知道答案，那就可以开始回溯了。
     > 一般回溯的问题有三种：
     >
     > 1. Find a path to success 有没有解
     > 2. Find all paths to success 求所有解
     >    - 求所有解的个数
     >    - 求所有解的具体信息
     > 3. Find the best path to success 求最优解
     >
     > 关于回溯的三种问题，模板略有不同， 第一种，返回值是true/false。 第二种，求个数，设全局`counter`，返回值是`void`；求所有解信息，设result，返回值void。 第三种，设个全局变量best，返回值是void。 

2. [【回顾&小结】回溯法](https://segmentfault.com/a/1190000012218890) <!--里面提到一些术语。尽管文章不怎么样，不过又引出了新的线索。有时间整理-->



## [动态规划](https://en.wikipedia.org/wiki/Dynamic_programming)

<img src="https://he-s3.s3.amazonaws.com/media/uploads/6b68f98.png" style="zoom:70%" >

1. [CSDN：算法-动态规划 Dynamic Programming--从菜鸟到老鸟](https://blog.csdn.net/u013309870/article/details/75193592)

  > 上面已经知道动态规划算法的核心是记住已经求过的解，记住求解的方式有两种：①**自顶向下的备忘录法** ②**自底向上。**  为了说明动态规划的这两种方法，举一个最简单的例子：求斐波拉契数列**Fibonacci** 。先看一下这个问题 ……
  >
  > 备忘录法也是比较好理解的，创建了一个n+1大小的数组来保存求出的斐波拉契数列中的每一个值，在递归的时候如果发现前面fib（n）的值计算出来了就不再计算，如果未计算出来，则计算出来后保存在Memo数组中，下次在调用fib（n）的时候就不会重新递归了。 ……
  >
  > ……那么何不先计算出fib（1），fib（2），fib（3）……,呢？这也就是动态规划的核心，先计算子问题，再由子问题计算父问题。 
  >
  > 你以为看懂了上面的例子就懂得了动态规划吗？那就too young too simple了。动态规划远远不止如此简单，下面先给出一个例子看看能否独立完成。然后再对动态规划的其他特性进行分析。 ……

2. [动态规划：从新手到专家](http://www.hawstein.com/posts/dp-novice-to-advanced.html)

3. [HackerEarth：Introduction to Dynamic Programming 1](https://www.hackerearth.com/zh/practice/algorithms/dynamic-programming/introduction-to-dynamic-programming-1/tutorial/) <!--举了几个极佳的例子，是不错的intruduction-->

   > The core idea of Dynamic Programming is to avoid repeated work by remembering partial results and this concept finds it application in …
   >
   > Dynamic programming is basically, recursion plus using common sense. What it means is that …
   >
   > *The intuition behind dynamic programming is that we trade space for time.* 
   >
   >  In Top Down, you start building the big solution right away by explaining how you build it from smaller solutions. In Bottom Up, you start with the small solutions and then build up. 
   >
   > This counter-example should convince you, that the problem is not so easy as it can look on a first sight and it can be solved using DP. 

4. [Dynamic Programming for the confused : Rod cutting problem](https://medium.com/@pratikone/dynamic-programming-for-the-confused-rod-cutting-problem-588892796840) <!--尚可-->

5. [动态规划迷思](http://pancakeawesome.ink/%E5%8A%A8%E6%80%81%E8%A7%84%E5%88%92%E8%BF%B7%E6%80%9D.html) <!--对动态规划一些术语的自己解释和澄清。尚可-->

6. [Dynamic Programming – 7 Steps to Solve any DP Interview Problem](http://blog.refdash.com/dynamic-programming-tutorial-example/) <!--用一个例子给出了过于详细的说明-->

# —END––