#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "群在集合上的作用")

= 群在集合上的作用

== 群对集合的作用

#example()[
  设$X = { 1 , 2 , dots.h.c , n } , S_n$对$X$可产生作用$lr((G lt.eq S_n))$：$forall g in G , forall x in X , g lr((x))$为$g$在$X$上的作用
]

#definition()[

  设$G$为群，$Omega$是一个集合，若$forall g in G$对应$Omega$上对一个变换$g lr((x))$使得$forall x in Omega$均有

  + $e lr((x)) = x$ (#strong[单位变换])

  + $lr((g_1 g_2)) lr((x)) = g_1 lr((g_2 lr((x))))$ (#strong[运算相容])

  则称$G$在$Omega$上定义了一个#strong[群作用]，$Omega$称为一个#strong[$G$-集合]
]

#remark()[

  + $Omega$可为有限集，也可为无限集

  + 由$g$作为群元素是可逆的，$g$作为变换必为可逆变换（双射）

  + 等价定义$G arrow.r^sigma { Omega upright("的变换群（置换群）") }$的一个同态

  #definition("等价定义")[

    若存在$G times Omega arrow.r Omega , lr((g , x)) arrow.r.bar g lr((x))$使得

    + $e lr((x)) = x$

    + $lr((g_1 g_2)) lr((x)) = g_1 lr((g_2 lr((x))))$

    则称$G$在$Omega$上定义了一个群作用，$Omega$称为一个$G$-集合
  ]
]

#example()[

  + 左乘作用：设$Omega = G$，定义$G$对$Omega = G$的作用$g lr((x)) eq.delta g x$

    验证这是群作用：$e lr((x)) = e x = x , lr((g_1 g_2)) lr((x)) = g_1 g_2 x = g_1 lr((g_2 lr((x))))$

    右乘：$g lr((x)) eq.delta x g$，则$lr((g_1 g_2)) lr((x)) = x g_1 g_2 eq.not g_1 lr((g_2 lr((x)))) = g_1 lr((x g_2)) = x g_2 g_1$，故不是群作用

    右乘逆 $g lr((x)) eq.delta x g^(- 1)$ 为群作用

  + 共轭作用：设$Omega = G$，定义$G$对$Omega = G$的作用$g lr((x)) eq.delta g x g^(- 1) , forall g , x in G$

    验证：$e lr((x)) = e x e^(- 1) = x , g_1 g_2 lr((x)) = lr((g_1 g_2)) x lr((g_1 g_2))^(- 1) = g_1 g_2 x g_2^(- 1) g_1^(- 1) = g_1 lr((g_2 lr((x))))$

  + 子群共轭作用：$Omega = cal(A) = { H \| H lt.eq G } , g lr((H)) eq.delta g H g^(- 1)$

  + 陪集左乘作用：$Omega = lr((G \/ H))_L , g lr((a H)) eq.delta lr((g a)) H$

  + 陪集右乘作用：$Omega = lr((G \/ H))_R , g lr((H a)) eq.delta H lr((a g^(- 1)))$
]

== 轨道与稳定子群

#definition()[
  设$Omega$为一个$G$-集合，取定$x in Omega$，则$Omega_x := { g lr((x)) \| g in G }$称为$x$在$G$作用下的一个#strong[轨道(orbit)]，$x$称为此轨道的一个代表元
]

#property()[
  + 同轨道的关系是$Omega$中的等价关系

    自反性 $x = e lr((x))$, 对称性 $y = g lr((x)) arrow.r.double x = g^(- 1) lr((x))$, 传递性 $y = g lr((x)) , z = g_1 lr((y)) arrow.r.double z = g_1 lr((g lr((x)))) = g_1 g lr((x))$

  + 等价类就是轨道$Omega_x$，对集合$Omega$产生划分$Omega = union.sq.big_(x in Omega) Omega_x arrow.r.double lr(|Omega|) = sum_(x in Omega) lr(|Omega_x|)$

  + $y in Omega_x arrow.l.r.double Omega_x = Omega_y$ （代表元公平）要么$Omega_x sect Omega_y = nothing$，要么$Omega_x = Omega_y$
]

#definition()[
  设$Omega$为一个$G$-集合，$g in G , x in Omega$，若$g lr((x)) = x$，则称$x$是$g$的一个#strong[不动点(fix point)]。而集合 $ upright("stab")_G x = G_x := { g in G \| g lr((x)) = x } subset G $ 称为$x$的#strong[稳定子群(稳定化子, stabilizer)]
]

#property()[
  $G_x lt.eq G$
]

#proof()[
  $e in G_x$，故$G_x eq.not nothing$。

  $forall g_1 , g_2 in G_x$，有$g_1 lr((x)) = x = g_2 lr((x)) , g_1^(- 1) lr((x)) = g_1^(- 1) lr((g_1 lr((x)))) = lr((g_1^(- 1) g_1)) lr((x)) = e lr((x)) = x arrow.r.double g_1^(- 1) in G_x$

  $g_1 g_2 lr((x)) = g_1 lr((g_2 lr((x)))) = g_1 lr((x)) = x arrow.r.double g_1 g_2 in G_x$

  故$G_x lt.eq G$
]

#example()[

  + 左乘作用：$Omega = G , g lr((x)) = g x , Omega_x = { g lr((x)) |g in G } = { g x| g in G } = G = Omega$，只有一个轨道，称为可迁作用。$G_x = { g in G \| g lr((x)) = g x = x } = { e }$ (且此时 $lr(|Omega_x|) lr(|G_x|) = lr(|G|)$)

  + 右乘作用：略

  + 共轭作用：$Omega = G , g lr((x)) = g x g^(- 1) , Omega_x = { g x g^(- 1)
      |g in G } = K_x,
      G_x = { g in G| g x g^(- 1) = x } = { g in G \| g x = x g } = C_G lr((x))$ (且此时 $lr(|K_x|) = lr([G : C lr((x))]) = lr(|G|) \/ lr(|C lr((x))|) arrow.r.double lr(|Omega_x|) lr(|G_x|) = lr(|G|)$)

  + 子群共轭作用：$Omega = cal(A) , g lr((H)) = g H g^(- 1) , Omega_H = { g H g^(- 1)
      |g in G } = K_H,
      G_H = { g in G| g H g^(- 1) = H } = { g in G \| g H = H g } = N_G lr((H))$ (且此时 $lr(|K_H|) = lr([G : N lr((H))]) = lr(|G|) \/ lr(|N lr((H))|) arrow.r.double lr(|Omega_H|) lr(|G_H|) = lr(|G|)$)

  + 陪集作用：$Omega = lr((G \/ H))_L , g lr((a H)) = lr((g a)) H , Omega_H = { g lr((H)) = g H |g in G } = lr((G \/ H))_L, G_H = { g in G| g lr((H)) = H } = H$ (且此时 $lr(|lr((G \/ H))_L|) = lr([G : H]) = lr(|G|) \/ lr(|H|) arrow.r.double lr(|Omega_H|) lr(|G_H|) = lr(|G|)$)
]

#property()[

  + 轨道公式$|Omega_x| = [G: "stab" x]$

  + $|G| = |Omega_x| |"stab"x|, |Omega| = sum_{x in Omega}[G: "stab" x]$（代表元求和）

  + $"stab" g(x) = g("stab" x)g^(-1)$ (同一轨道上元素的稳定子群互相共轭)
]

#proof()[

  + 作对应关系 $Omega_x arrow.r lr((G \/ G_x))_L , g lr((x)) arrow.r.bar g G_x$，验证映射、单射、满射

  + 由1和Lagrange定理及$Omega$单轨道划分可得

  + $forall h in G_(g lr((x))) arrow.r.double h lr((g lr((x)))) = g lr((x)) arrow.r.double g^(- 1) h g lr((x)) = x arrow.r.double g^(- 1) h g in G_x arrow.r.double h in g G_x g^(- 1) arrow.r.double$ 左 $subset.eq$ 右

    反之，$forall tilde(h) in g G_x g^(- 1) arrow.r.double g^(- 1) tilde(h) g in G_x arrow.r.double g^(- 1) tilde(h) g lr((x)) = x arrow.r.double tilde(h) lr((g lr((x)))) = g lr((x)) arrow.r.double tilde(h) in G_(g lr((x))) arrow.r.double$ 右 $subset.eq$ 左

    综上，$g G_x g^(- 1) = G_(g lr((x)))$
]

#example()[
  确定正四面体的旋转群（旋转后重合）
]

#solution()[

  取定定点A，保持其不动的旋转有3个，即$lr(|G_A|) = 3$

  总存在旋转将A转到其他顶点，即$lr(|Omega_A|) = 4$

  $lr(|G|) = lr(|Omega_A|) dot.op lr(|G_A|) = 12 , G lt.eq S_4$

  对应 $lr((1)) , lr((123)) , lr((132)) , lr((124)) , lr((142)) , lr((134)) , lr((143)) , lr((234)) , lr((243)) , lr((12)) lr((34)) , lr((13)) lr((24)) , lr((14)) lr((23))$

  $G = A_4 lt.tri.eq S_4$
]

== Burnside 引理

一般的群作用会用多少个轨道？

#theorem("Burnside 引理")[

  设有限群$G$作用在有限集$Omega$上，记$N$为$Omega$在$G$的作用下的轨道数，$chi lr((g))$表示群元素$g$在$Omega$中的不动点个数，则有$N = 1 / lr(|G|) sum_(g in G) chi lr((g))$
]

$G_x = {g in G |g lr((x)) = x}, chi lr((g)) = \# {x in Omega| g lr((x)) = x}$

#proof()[

  设$Omega = { a_1 , dots.h.c , a_n } , G = { g_1 , dots.h.c , g_m }$

  令$E_(i j) = D lr((g_i , g_j)) eq.delta cases(delim: "{", 1 & g_i lr((a_j)) = a_j, 0 & g_i lr((a_j)) eq.not a_j)$

  $K = lr((E_(i j)))_(1 lt.eq i lt.eq m , 1 lt.eq j lt.eq n) in M_(m times n) {0 , 1}$

  $chi lr((g_i))$为矩阵$K$的第$i$行的行和，$\# G_(a_j)$为第$j$列的列和

  因而$sum_(a in Omega) lr(|G_a|) = sum_(g in G) chi lr((g))$

  设$Omega$的全体轨道为$Omega^(lr((1))) , dots.h.c , Omega^(lr((N)))$，上式左侧化为$sum_(k = 1)^N sum_(a in Omega^(lr((k)))) lr(|G_a|) = sum_(k = 1)^N lr(|Omega^(lr((k)))|) lr(|G_a|) = sum_(k = 1)^N lr(|G|)$
]