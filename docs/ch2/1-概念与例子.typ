#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "概念与例子")

= 概念与例子

== 群的基本概念与实例

#definition("群")[
  有一个非空集合 $G$，其中有二元运算“$dot$”，$(G, dot)$ 满足：

  / 疯: 封闭性 $forall a, b in G, a dot b in G$
  / 姐: 结合律 $forall a, b, c in G, (a dot b) dot c = a dot (b dot c)$
  / 咬: 幺元 / 单位元 $exists e in G, forall a in G, e dot a = a dot e = a$
  / 你: 逆元 $forall a in G, exists b in G, a dot b = b dot a = e$，记 $b = a^(-1)$
  / 脚: 交换律 $forall a, b in G, a dot b = b dot a$

  从上至下，逐渐形成*原群(magma)*、*半群(semigroup)*、*幺半群(monoid)*、*群(group)*、*阿贝尔群/交换群(abelian group/commutative group)*。
]

#definition("环")[
  有一个非空集合 $R$，其中有两个二元运算“$+$”和“$dot$”，$(R, +, dot)$ 满足：

  - $(R, +)$ 构成交换群
  - $(R, dot)$ 构成半群
  - 左右分配律 $forall a, b, c in R, a dot (b + c) = a dot b + a dot c, (a + b) dot c = a dot c + b dot c$

  称为*环(ring)*。
]

#definition("域")[
  $(R, +)$与$(R^*, dot)$均构成交换群的环，称为*域(field)*。
]

== 典型实例

#example("数群")[
  / 数集: $NN arrow.r ZZ arrow.r QQ arrow.r RR arrow.r CC$
  / 加法: $(ZZ, +), (QQ, +), (RR, +), (CC, +)$ 为群（交换、无限）
  / 乘法: $(QQ^*, dot), (RR^*, dot), (CC^*, dot)$ 为群（$QQ^* =^triangle.t QQ  {0}$）
]

#example("有限群")[
  剩余类群：$ZZ_n = ZZ / (n ZZ) = {accent(0, -), dots, bar{n-1}}  (accent(a, -) =^triangle.t {b in ZZ | a equiv b mod n})$

  令$G=ZZ / (n ZZ), \#G=n, accent(a, -) + accent(b, -) =^triangle.t bar{a + b}$，则$(G, +)$构成群（交换、有限）

  $(G, dot)$，其中$accent(a, -)dot accent(b, -)=accent(a dot b, -)$，为幺半群，幺元为$accent(1, -)$

  $accent(a, -)$可逆，即$exists accent(b, -)$ s.t. $accent(a, -)dot accent(b, -)=accent(1, -)$，即$a b + k n = 1 (exists k)$，即$(a, n) = 1$互素

  令$G^* = {accent(a, -) | (a, n) = 1}$，则$(G^*, dot)$构成群（交换、有限）

  $\#G^* = phi(n)$，特别当$n=p$素，$phi(p)=p-1$，$(G, +, dot)$构成有限域

  验证唯一性 $G times G arrow.l.r G$

  设$a_1 = a + k n, b_1 = b + t n$，则$a_1 dot b_1 = (a + k n)(b + k n) = a b + (a t + b k)n + k t n^2$，即$accent(a_1 b_1, -) = accent(a b, -)$，即$accent(a, -)dot accent(b, -) = accent(a_1, -)dot accent(b_1, -)$。加法同理
]

#example("矩阵群")[

  $(M_{m times n}(F), +)$构成交换群，*0* 为幺元

  $(M_n(F), dot)$构成幺半群，幺元$I_n$，非交换

  $G L_n(F) = {A in M_n(F) | det A eq.not 0 }$ 为群，一般线性群

  $S L_n^plus.minus (F) = {A in M_n(F) | det A = plus.minus 1}$

  $S L_n(F) = {A in M_n(F) | det A = 1 }$ 特殊线性群

  $O_n(RR) = {A in M_n(RR) | AA^T=I }$ 正交群

  $S O_n(RR) = {A in O_n | det A = 1 }$ 特殊正交群
]

#example("Klein 四元群")[

  $G = {e, a, b, c}$

  #table(
    stroke: none,
    columns: 5,
    table.vline(x: 1),
    [],
    [$e$],
    [$a$],
    [$b$],
    [$c$],
    table.hline(),
    [$e$],
    [$e$],
    [$a$],
    [$b$],
    [$c$],
    [$a$],
    [$a$],
    [$e$],
    [$c$],
    [$b$],
    [$b$],
    [$b$],
    [$c$],
    [$e$],
    [$a$],
    [$c$],
    [$c$],
    [$b$],
    [$a$],
    [$e$],
  )

  对称阵，交换群
]

#example("置换群")[

  $S_n = {"有限集" A = {1, 2, dots, n} "上全体置换" }$（双射），$A arrow.r^sigma A$

  $S_n$ 中的映射在复合意义下构成群 $sigma circle.tiny tau(i) eq^triangle.small.t sigma(tau(i))$ 且 $\#S_n = n!$

  表示方法 $sigma = mat(1, 2, dots, n; i_1, i_2, dots, i_n;)$

  如 $S_3$ 中有6个元：$sigma_1 = (1), sigma_2 = (12), sigma_3 = (23), sigma_4 = (13), sigma_5 = (123), sigma_6 = (132)$

  $
    sigma_2 sigma_5 mat(1; 2; 3) = sigma_2 mat(2; 3; 1) = mat(1; 3; 2) = sigma_3 mat(1; 2; 3)
  $

  $
    sigma_5 sigma_2 mat(1; 2; 3) = sigma_5 mat(2; 1; 3) = mat(3; 2; 1) = sigma_4 mat(1; 2; 3)
  $

  $S_3$ 是阶数最小的非交换置换群

  $(123)=(231)=(312), (123)=(12)(23)$

  $(12)(123)=(12)(12)(23)=(23)$

  $(123)(12)=(312)(12)=(31)(12)(12)=(31)=(13)$

  $S_3$的乘法表：

  // \begin{tabular}{c|cccccc}
  //            & (1)  & (12) & (23)  & (13)  & (123) & (132) \\
  //       \hline
  //       (1)  & (1)  & (12) & (23)  & (13)  & (123) & (132) \\
  //       (12) & (12) & (1)  & (123) & (213)                 \\
  //   \end{tabular}

  #table(
    stroke: none,
    columns: 7,
    align: horizon + center,
    table.vline(x: 1),
    [],
    [$(1)$],
    [$(12)$],
    [$(23)$],
    [$(13)$],
    [$(123)$],
    [$(132)$],
    table.hline(),
    [$(1)$],
    [$(1)$],
    [$(12)$],
    [$(23)$],
    [$(13)$],
    [$(123)$],
    [$(132)$],
    //
    [$(12)$],
    [$(12)$],
    [$(1)$],
    [$(123)$],
    [$(213)$],
    [$(23)$],
    [$(13)$],
  )
]

#example([二面体群$D_n$])[

  一个允许翻转的正n边形

  $\#D_3 = 6, \#D_4 = 8, dots, \#D_n = 2n$
]

== 群内的特殊元与性质

#definition()[
  左右幺元、左右逆
]

#theorem()[
  半群中，若左右单位同时存在，则必相等，即$e_L = e_R = e$，进而可知群中幺元唯一
]

#proof()[

  - $e_L = e_L dot e_R = e_R$
  - 设有两个幺元$e_1, e_2$，则$e_1 = e_1 dot e_2 = e_2$，即唯一 #qedhere
]

#theorem()[
  群中任一元素$a$，若$a$同时具有左右逆，则$a_L^(-1)=a_R^(-1)=a^(-1)$，进而可知$a$的逆元唯一
]

#proof()[

  - $a_L^(-1)=a_L^(-1) e = a_L^(-1)(a a_R^(-1)) = (a_L^(-1) a) a_R^(-1) = a_R^(-1)$
  - 设有两个逆元$a_1^(-1), a_2^(-1)$，则$a_1^(-1)=a_1^(-1) a a_2^(-1) =  a_2^(-1)$，即唯一 #qedhere
]

#corollary()[
  幺元和逆元存在的话必唯一
]

#theorem()[
  $a x = b , y a = b$，在群$G$中有唯一解；左右消去律在群$G$中成立
]

#theorem()[

  对群中任一元素$a$及整数$m , n$，有

  - $lr((a^(- 1)))^(- 1) = a$

  - $lr((a b))^(- 1) = b^(- 1) a^(- 1)$

  - $lr((a^n))^(- 1) = lr((a^(- 1)))^n = a^(- n)$
]