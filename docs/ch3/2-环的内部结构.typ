#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "环的内部结构")

= 环的内部结构

== 子环、理想与商环

#definition()[
  设$lr((R , + , dot.op))$为环，$nothing eq.not S subset.eq R$，若$S$对于$+$和$dot.op$也构成一个环，则称$S$为$R$的#strong[子环\(subring)]。反之，称$R$为$S$的#strong[扩环]。
]

#property()[

  + 平凡子环：${ 0 } , R$

  + 子环判则：$nothing eq.not S subset.eq R , S$为$R$的子环$arrow.l.r.double a - b in S , a b in S , lr((forall a , b i n S))$

  + 子环运算律：设$S_1 , S_2$为$R$的子环，则$S_1 sect S_2$为子环, $S_1 union S_2 , S_1 + S_2 , S_1 S_2$不一定为子环

    其中，$S_1 + S_2 = { a + b | a in S_1 , b in S_2 },
      med S_1 S_2 = { sum_(i = 1)^n a_i b_i| a_i in S_1,
      b_i in S_2,
      n in bb(Z)^(+) }$

    #example()[

      设$R = bb(Z) , S_1 = { 4 k \| k in bb(Z) } = 4 bb(Z) , S_2 = 6 bb(Z)$

      $S_1 sect S_2 = 12 bb(Z)$，

      $S_1 union S_2 = {n in bb(Z) lr(|4|) n upright("或") 6 \| n}$

      $S_1 + S_2 = { 4 k + 6 t \| k , t in bb(Z) } = 2 bb(Z)$，

      $S_1 S_2 = {sum_(i = 1)^n 24 k_i t_i \| k_i , t_i in bb(Z) , n in bb(Z)^(+)} = 24 bb(Z)$
    ]
]

子环构造陪集（加法）：设 $S$ 为 $R$ 的子环，$a + S eq.delta overline(a) , b + S eq.delta overline(b)$

#definition()[

  设$R$为环，$I$为其一个子环，$forall a in I , forall r in R$

  + 若$r a in I$，则称$I$是$R$的#strong[左理想]$arrow.l.r.double r I subset.eq I$（左吸收律）

  + 若$a r in I$，则称$I$是$R$的#strong[右理想]$arrow.l.r.double I r subset.eq I$（右吸收律）

  + 若$I$既是左理想又是右理想，则称$I$为$R$的#strong[理想(Ideal)]
]

#property()[

  + 平凡理想：${ 0 } , R$，且$0$属于任何理想

    只有平凡理想的环称为#strong[单环]

  + 若$R$交换，则左理想\=右理想\=理想

  + 理想判则：$nothing eq.not I subset.eq R$为理想$arrow.l.r.double forall a , b in I , forall r in R$有$r a , a r , a - b in I$

  + 若$R$为含幺环，$I$为理想，则$I = R arrow.l.r.double 1 in I arrow.l.r.double u in I lr((forall u in U lr((R))))$

  + 若$I , J$为$R$的环中理想，则$I sect J , I + J , I J$均为理想
]

#example("单环")[
  证明$M_n lr((F))$为单环，其中$F$为域
]

#proof()[

  设${ 0 } eq.not cal(I) subset.eq M_n lr((F))$为一个理想，只须证$cal(I) = R arrow.l.r.double E in cal(I)$（其中$E$为单位阵）

  设$0 eq.not A in cal(I) , A = lr((a_(i j)))_(n times n) , exists a_(k l) eq.not 0$，令$E_(i j) = mat(
    delim: "(",
    0, dots.h.c, 0, dots.h.c, 0;dots.v, dots.down, dots.v, , dots.v;0, dots.h.c, 1, dots.h.c, 0;dots.v, , dots.v, dots.down, dots.v;0, dots.h.c, 0, dots.h.c, 0,

  )$，其中$1$在第$i$行第$j$列

  考虑$E_(i k) A E_(l i) = a_(k l) E_(i i) in cal(I) lr((forall i)) , lr((a_(k l)^(- 1) E)) lr((a_(k l) E_11 + dots.h.c a_(k l) E_n n)) = E in cal(I) arrow.r.double cal(I) = R = M_n lr((F))$
]

=== 生成子环与生成理想

#definition()[
  设$R$为环，$nothing eq.not S subset.eq R$，则$R$的包含$S$的最小的子环称为#strong[由$S$生成的子环]，记作$lr([S])$，它是所有包含$S$的子环的交
]

#definition()[
  设$R$为环，$nothing eq.not S subset.eq R$，则$R$的包含$S$的最小的理想称为#strong[由$S$生成的理想]，记作$lr((S))$，它是所有包含$S$的理想的交
]

由一个元素生成的理想：主理想

=== 商环

#definition()[
  设$R$为环，$I$为其一个理想，$R$作为加法群关于$I$的商群$R \/ I$对模$I$对加法与乘法所构成的环称为#strong[$R$关于$I$的商环（quotient ring）]，记作$R \/ I$
]

#definition()[
  设$M$是环$R$的非平凡理想，若有理想$H$使$M subset.neq H subset.eq R$则有$H = R$，则称$M$是$R$的一个#strong[极大理想\(maximal ideal)]
]

#theorem()[
  设$R$为含幺交换环，则$M$是$R$的极大理想$arrow.l.r.double R \/ M$为域
]

#proof()[

  - $R \/ M = { a + M |a in R } = { a^(‾)| a in R }$只须证含不同零元、幺元、可逆元

    $0^(‾) = 0 + M = M , 0^(‾) in R \/ M , 1^(‾) = 1 + M in R \/ M$

    由$1 in M arrow.r.double M = R$平凡理想，与非平凡矛盾，故$0^(‾) eq.not 1^(‾)$

    $forall a^(‾) = a + M lr((a in.not M))$，令$H eq.delta lr((a + M)) R = a R + M = lr((a)) + M$为理想之和$arrow.r.double H$为理想，且$M subset.eq H$（取$0 in lr((a)) , 0 + M = M subset.eq lr((a)) + M = H$），$M eq.not H$（$a in.not M$但$a = a + 0 in lr((a)) + M = H$）

    极大性知$H = R arrow.r.double 1 in H = R , exists b in R , exists m in M$使得$a b + m = 1 arrow.r.double a^(‾) b^(‾) = 1^(‾) arrow.r.double b^(‾)$就是$a^(‾)$在$R \/ M$中的逆元

  - $forall 0^(‾) eq.not a^(‾) in R \/ M , a^(‾)$有逆元，即$exists b^(‾)$使得$a^(‾) b^(‾) = 1^(‾)$

    设$M subset.neq H subset.eq R , H$为理想$arrow.r.double exists a in H$但$a in.not M arrow.r.double a^(‾) eq.not 0^(‾) arrow.r.double a^(‾) b^(‾) = 1^(‾) arrow.r.double 1 - a b in M arrow.r.double 1 in a b + M arrow.r.double 1 in H arrow.r.double H = R arrow.r.double M$为极大理想
]
