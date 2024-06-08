#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "群的应用")

= 群的应用

== 项链问题

#example("项链问题")[
  设有$n$种颜色的珠子（每种颜色的珠子都足够多），要做成$m$课珠子都项链，问：在旋转与翻转意义下，可以做成多少种不同的项链？
]

数学表述：设珠子集$X = { 1 , 2 , dots.h.c , m }$，颜色集$A = { a_1 , dots.h.c , a_n }$，群$G = D_m$（二面体群），染色方案集${ f : X arrow.r A } eq.delta Omega$

$g : X arrow.r X , f = mat(delim: "(", 1, 2, dots.h.c, m;c_1, c_2, dots.h.c, c_m)$，其中$c_i in A$

令$g lr((f)) = mat(
  delim: "(",
  g lr((1)), g lr((2)), dots.h.c, g lr((m));c_1, c_2, dots.h.c, c_m,

) = mat(delim: "(", i_1, i_2, dots.h.c, i_m;c_1, c_2, dots.h.c, c_m) in Omega$

$g lr((f)) = f circle.stroked.tiny g^(- 1)$

验证群作用：$e lr((f)) = f circle.stroked.tiny e^(- 1) = f , g_1 g_2 lr((f)) = f circle.stroked.tiny lr((g_1 g_2))^(- 1) = f circle.stroked.tiny g_2^(- 1) circle.stroked.tiny g_1^(- 1) = g_1 lr((g_2 lr((f))))$

等价染色方案的判定：同轨道$g lr((f_1)) = f_2 arrow.l.r.double f_1 tilde.op f_2 arrow.r.double$不同类型的方案数，就是轨道数$N$。由Burnside引理，$N = frac(1, 2 m) sum_(g in D_m) chi lr((g))$

不动点的判定：$g lr((f)) = f arrow.l.r.double g$ 的标准分解中，同一轮换的元涂相同颜色 $chi lr((g)) = n^(lambda_1 + dots.h.c + lambda_m) arrow.r.double N = frac(1, 2 m) sum_(g in D_m) n^(lambda_1 + dots.h.c + lambda_m) = frac(1, 2 m) sum_(1^(lambda_1) dots.h.c m^(lambda_m)) c lr((lambda_1 dots.h.c lambda_m)) n^(lambda_1 + dots.h.c + lambda_m)$，其中$c lr((lambda_1 dots.h.c lambda_m))$为该类型置换数量

#example()[
  用3种颜色做成6颗珠子的项链
]

#solution()[
  $G = D_6 = {
      rho^0 = lr((1)) , rho = lr((123456)) , rho^2 = lr((135)) lr((245))\
      rho^3 = lr((14)) lr((25)) lr((36)) , rho^4 = lr((153)) lr((264)) , rho^5 = lr((165432))\
      lr((16)) lr((25)) lr((34)) , lr((12)) lr((36)) lr((45)) , lr((14)) lr((23)) lr((56))\
      lr((26)) lr((35)) , lr((13)) lr((46)) , lr((15)) lr((24))
    }$

  #figure(
    align(center)[#table(
        columns: 3,
        align: (col, row) => (center, center, center).at(col),
        inset: 6pt,
        [置换类型], [个数], [$chi lr((g))$],
        [$1^6$], [1], [$3^6$],
        [$1^2 2^2$], [3], [$3^4$],
        [$2^3$], [4], [$3^3$],
        [$3^2$], [2], [$3^2$],
        [$6^1$], [2], [$3^1$],
      )],
  )

  $N = 1 / 12 lr([3^6 times 1 + 3^4 times 3 . . .]) = 92$
]

== 带约束条件的项链问题

群可能为$D_m$或其子群，集合可能为$Omega$或其子集

#example()[
  3颗红珠和6颗白珠做项链
]

带珠子标号染色，共有$binom(9, 3) = 84$，$Omega_1 subset.eq Omega$且$Omega_1 = 84$，$D_9$作用在$Omega_1$，$g lr((f)) = f circle.stroked.tiny g^(- 1)$，轨道数$N$为不等价的方案数

#figure(
  align(center)[#table(
      columns: 3,
      align: (col, row) => (center, center, center).at(col),
      inset: 6pt,
      [置换类型], [个数], [$chi lr((g))$],
      [$1^9$], [1], [84],
      [$1^1 2^4$], [9], [4],
      [$3^3$], [2], [3],
      [$9^1$], [$phi lr((9)) = 6$], [0],
    )],
)

7种

#example()[
  设苯环上可结合三种分子，若考虑单双键的区别，一共可形成多少种不同的物质？
]

$D_6$中保持单双键不变的置换有

$G = {
    lr((1)) , rho^2 = lr((135)) lr((246)) , rho^4 = lr((153)) lr((264))\
    lr((16)) lr((25)) lr((34)) , lr((12)) lr((36)) lr((45)) , lr((14)) lr((23)) lr((56))
  } lt.eq D_6$

#figure(
  align(center)[#table(
      columns: 3,
      align: (col, row) => (center, center, center).at(col),
      inset: 6pt,
      [置换类型], [个数], [$chi lr((g))$],
      [$1^6$], [1], [$3^6$],
      [$3^2$], [2], [$3^2$],
      [$2^3$], [3], [$3^3$],
    )],
)

138种

== 正多面体的染色问题

#example()[
  用$n$种颜色，对正多面体的顶点、边、面进行染色，在多面体的旋转意义下，共有多少种本质上不同的染色方法？
]

群变为正多面体的旋转群

共有五类正多面体：

- 正四面体（自对偶）

- 正六面体，正八面体（对偶）

- 正十二面体，正二十面体（对偶）

顶点染色 $arrow.l.r.double$ 对偶体的面染色

== 布尔函数的对称计数问题

设$bb(F)_2 = bb(Z) \/ n bb(Z) = { 0 , 1 }$，形如$f lr((x_1 , dots.h.c , x_n)) : bb(F)_2 times bb(F)_2 times dots.h.c times bb(F)_2 arrow.r bb(F)_2$的函数，称为一个$n$元#strong[布尔函数]。若两个$n$元布尔函数，通过交换变量可相互转换，则称这两个布尔函数同类型。

自变量集$Y = { x_1 , dots.h.c , x_k }$，函数集$Omega = { f : bb(F)_2^k arrow.r bb(F)_2 }$，$G = S_n$

将$G$作用在$Omega$上，$sigma in S_k , f in Omega , sigma lr((f)) lr((x_1 , dots.h.c , x_k)) eq.delta f lr((x_(sigma lr((1))) , dots.h.c , x_(sigma lr((k))))) = f circle.stroked.tiny sigma^(- 1) lr((x_1 , dots.h.c , x_k))$

群作用验证：略

等价函数的判定 $arrow.l.r.double$ 同轨道

不动点判断：$sigma lr((f)) = f arrow.l.r.double f$在每一个$sigma$轨道上赋相同的值（取定$sigma$，作用在$f$的自变量集上产生的不变圈）

#example()[
  3元布尔函数有多少种不同的类型？
]

取$sigma in G = S_3 = { lr((1)) , lr((12)) , lr((13)) , lr((23)) , lr((123)) , lr((132)) }$

== 图的计数问题

#example()[
  图论中，若不计途中顶点的编号次序，$n$个顶点可构成多少种不同类型的简单无（有）向图？
]

从数学角度定义一个图：$lr((V , E))$，其中$V$为顶点集，$E$为边集。设$V = { v_1 , dots.h.c , v_n }$，则 $ cases(
  delim: "{",
  E = { { v_i , v_j } \| upright("对某些") i eq.not j } & upright("无向图"),
  E = { lr((v_i , v_j)) \| upright("对某些") i eq.not j } & upright("有向图"),

) $ 实际上，一个图就对应了一个边集的赋值函数$f : Y arrow.r { 0 , 1 }$，其中$Y = { { v_i , v_j } \| forall i eq.not j }$或${ lr((v_i , v_j)) \| forall i eq.not j }$

故可将群$G = S_n$作用在图集$Omega = { f : Y arrow.r { 0 , 1 } }$，群作用同上。

图等价：$lr((v_i , v_j)) in E arrow.l.r.double lr((sigma lr((v_i)) , sigma lr((v_j)))) in E med lr((exists sigma in S_n))$ (同轨道)

不动点判则：$sigma lr((f)) = f arrow.l.r.double f$对同一个$sigma$轨道（含在集合$Y$中）赋相同值

#example()[
  4个顶点可构成多少种不同类型的简单无向图？
]

#solution()[
  $V = { 1 , 2 , 3 , 4 } , Y = { { i , j } \| 1 lt.eq i < j lt.eq 4 } , Omega = { f : Y arrow.r { 0 , 1 } } , G = S_4$。将$S_4$作用在$Omega$上，重点分析$sigma$作用在自变量集所产生的$sigma$轨道数：

  $sigma = lr((12))$: 4个；$sigma = lr((123))$: 2个；$sigma = lr((12)) lr((34))$: 4个；$sigma = lr((1234))$: 2个

  #figure(
    align(center)[#table(
        columns: 3,
        align: (col, row) => (center, center, center).at(col),
        inset: 6pt,
        [置换类型], [个数], [$chi lr((g))$],
        [$1^4$], [1], [$2^6$],
        [$1^1 3^1$], [8], [$2^2$],
        [$2^2$], [3], [$2^4$],
        [$1^2 2^1$], [6], [$2^4$],
        [$4^1$], [6], [$2^2$],
      )],
  )

  故由 Burnside 引理，不同类型的图共有11个
]
