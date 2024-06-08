#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "基本概念与例子")

= 基本概念与例子

== 定义

#definition()[
  非空集合$R$中有两种运算，记为$+$和$dot.op$，若满足：

  + $lr((R , +))$为交换群

  + $lr((R , dot.op))$为半群

  + 左右分配律成立：$a lr((b + c)) = a b + a c , lr((a + b)) c = a c + b c$

  则称代数系统$lr((R ; + , dot.op))$为一个#strong[环(ring)]。
]

#remark()[
  由加法结构已很好，于是重点关注乘法结构：含幺环、交换环、可除环

  所谓的$+$和$dot.op$，并不一定是我们熟悉的加法和乘法，只是为了方便记号，实际上可以是任意的两种运算。
]

== 环的典型例子

数环：$lr((bb(Z) , + , dot.op)) , lr((bb(Q) , + dot.op)) , lr((bb(R) , + , dot.op)) , lr((bb(C) , + , dot.op))$ 含幺交换环

剩余类环：$lr((bb(Z) \/ n bb(Z) , + , dot.op))$

Gauss整环：$lr((bb(Z) lr([i]) , + , dot.op)) = { a + b i \| a , b in bb(Z) }$ (二平方和问题) \
可推广为 $bb(Z) lr([sqrt(d)]) = { a + b sqrt(d) \| a , b in bb(Z) }$，其中$d$为无平方因子

矩阵环（非交换）： $M_n lr((bb(Z))) = { lr((a_(i j)))_(n times n) \| a_(i j) in bb(Z) }$，可推广为$M_n lr((R))$，其中$R$为任意环 \
$M_n lr((F))$（$F$为域）$arrow.r.double$ 线性代数

多项式环（交换）：$lr((bb(Z) lr([x]) , + , dot.op)) , lr((R lr([x]) , + , dot.op)) , lr((f lr([x]) , + , dot.op))$

映射环（非交换）：$L lr((V)) : V$上全体线性变换，$lr((E n d G , + , dot.op))$其中$G$为交换群，自同态环 \
$lr((f + g)) lr((x)) eq.delta f lr((x)) + g lr((x)) , lr((f g)) lr((x)) eq.delta f lr((g lr((x))))$

== 环内特殊元与基本性质

加法幺元：零元$0$；乘法幺元：幺元$1$ \
加法逆元：负元$- a$；乘法逆元：逆元$a^(- 1)$

#property()[
  + 零元 $0 dot.op a = a dot.op 0 = 0 lr((forall a in R))$

    #proof()[
      $b a = lr((b + 0)) a = b a + 0 a arrow.r.double 0 a = 0$
    ]

  + 负元 $lr((- a)) b = a lr((- b)) = - lr((a b)) lr((forall a , b in R))$

    #proof()[
      $lr((- a)) b + a b = lr((- a + a)) b = 0 b = 0 arrow.r.double lr((- a)) b = - lr((a b))$
    ]

  + 减法分配律 $a lr((b - c)) = a b - a c , lr((a - b)) c = a c - b c lr((forall a , b , c in R))$

  + 倍数与方幂 $n a = a + dots.h.c + a lr((n upright("个") a)) , a^n = a dot.op dots.h.c dot.op a lr((n upright("个") a))$

  + 单位与单位元：单位元即幺元，单位即可逆元，记作$U lr((R))$或$R^(\*)$

  + 零因子与消去律

    #definition()[
      设$R$为环，$a , b in R$，若$a b = 0$且$a eq.not 0 , b eq.not 0$，则称$a$为#strong[左零因子]，$b$为#strong[右零因子]。

      若一个元素既是左零因子又是右零因子，则称其为#strong[零因子]。
    ]
    #theorem()[
      环$R$中无左右零因子$arrow.l.r.double R$中消去律成立
    ]
    #proof()[

      - 设$a eq.not 0 ， a b = a c arrow.r.double a lr((b - c)) = 0$，由$R$中无零因子可知$b - c = 0 arrow.r.double b = c arrow.r.double$ 消去律成立

      - 设$a b = 0$，若$a eq.not 0$，则$a b = 0 arrow.r.double b = 0$，故$R$中无零因子
    ]
    #corollary()[
      环$R$中，零因子$sect U lr((R)) = nothing$
    ]
]

== 环的分类

交换环与非交换环，有限环与无限环，含幺环与非含幺环……

#definition()[

  设$R$为环

  + 若$R eq.not { 0 }$，含幺可交换且无零因子，则称$R$为#strong[整环(domain)]

  + 若$R$中至少包含$0 , 1 lr((0 eq.not 1))$，且$R \\ { 0 }$构成乘法群，则称$R$为#strong[（可）除环（division ring）]
]

四元数环（quaternions）: \
设$e , i , j , k$满足$i^2 = j^2 = k^2 = - e$，$e$为幺元，$i j = k = - j i , j k = i = - k j , k i = j = - i k$ \
$bb(H) = { a e + b i + c j + d k \| a , b , c , d in bb(R) }$ 四元数除环，可逆

#theorem()[
  设$lr((bb(Z) \/ n bb(Z) ; + , dot.op))$是域的充要条件是$n$为素数
]

#theorem()[
  一个非零的有限的无零因子环是除环。进而，有限整环是域。
]

有限 + 无零因子 $arrow.r.double$ 非零元可逆

#proof()[

  设$R eq.not { 0 }$为环，$R < oo , lr(|R|) \\ { 0 } eq.not nothing , lr((R \\ { 0 } , dot.op))$为有限半群

  令$R \\ { 0 } = { a_1 , a_2 , dots.h.c , a_n }$，由于无零因子，故消去律成立，则

  $a a_i = a a_j arrow.l.r.double a_i = a_j lr((forall a in R \\ { 0 }))$

  故$a lr((R \\ { 0 })) = { a a_1 , a a_2 , dots.h.c , a a_n } = R \\ { 0 } arrow.r.double exists a_j$使得$a a_j = a arrow.r.double a_j = 1 arrow.r.double R \\ { 0 }$含幺。进一步$exists a_k$使得$a a_k = 1 arrow.r.double a$有逆元$lr((forall a eq.not 0)) arrow.r.double lr((R \\ { 0 } , dot.op))$构成群$arrow.r.double lr((R , + , dot.op))$构成除环
]

== 由已知环构造新环

记$R$为环：

+ $M_n lr((R)) , R lr([x])$均为环

+ $R lr([lr([x])]) = { sum_(i = 0)^oo a_i x^i \| a_i in R }$幂级数环

+ $R_1 times R_2 = { lr((a , b)) \| a in R_1 , b in R_2 } , {lr((a_1 , b_1)) + lr((a_2 , b_2)) eq.delta lr((a_1 + a_2 , b_1 + b_2))\
  lr((a_1 , b_1)) dot.op lr((a_2 , b_2)) eq.delta lr((a_1 dot.op a_2 , b_1 dot.op b_2))$ 环的直积

$U lr((R lr([x]))) = U lr((R)) , med U lr((R lr([lr([x])]))) = {
    f lr((x)) in R lr([lr([x])]) \| f lr((0)) = a_0 in U lr((R))
  }$

利用幂级数表示周期序列：

$frac(1, 1 - x^n) = 1 + x^n + dots.h.c arrow.l lr((1 , 0 , dots.h.c , 0)) ; lr((a_0 , dots.h.c , a_(n - 1))) arrow.r frac(a lr((x)), 1 - x^n) = frac(g lr((x)), f lr((x)))$

如何从给定的分母$f lr((x))$确定周期$n$？参见《代数与编码》