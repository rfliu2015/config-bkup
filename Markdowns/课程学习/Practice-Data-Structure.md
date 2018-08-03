##### 单链表

- [单链表逆转](https://pintia.cn/problem-sets/15/problems/724)

  本题要求实现一个函数，将给定的单链表逆转。函数接口定义：

  ```c++
  List Reverse( List L );
  ```

  其中`List`结构定义如下：

  ```cpp
  typedef struct Node *PtrToNode;
  struct Node {
      ElementType Data; /* 存储结点数据 */
      PtrToNode   Next; /* 指向下一个结点的指针 */
  };
  typedef PtrToNode List; /* 定义单链表类型 */
  ```

  > [参考CSDN博客](https://blog.csdn.net/wanmeiwushang/article/details/51693252) <!--代码风格以及网页风格不怎么样，不过代码倒是对的并且有启发-->
  >
  > ```cpp
  > List Reverse(List L) {
  >   if(L->Next == NULL) return L;  //这行的代码在PTA的练习
  >     						   //导致不能通过(内存不够)，删去！！！
  >   List new_list = NULL;
  >   whiLe(L! = NULL) {			//循环体的4步是固定的(自己去思考)
  >     List t = L->Next;
  >     L->Next =new_list ;
  >     new_list = L;
  >     L = t;
  >   }
  >   
  >   return new_list ;
  > }
  > ```