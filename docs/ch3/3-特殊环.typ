#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "特殊环: 整环、多项式环")

= 特殊环: 整环、多项式环

== 整环及几类特殊整环

#figure(
  align(center)[#table(
      columns: 3,
      align: (col, row) => (center, center, center).at(col),
      inset: 6pt,
      [$bb(Z)$], [$F lr([x])$], [$D$(整环)],
      [整除性], [], [但$U lr((D))$致相伴],
      [素数], [不可约多项式], [但存在既约元与素元之分],
      [公因子], [], [但GCD可能不存在],
      [唯一分解], [], [],
      [带余除法], [], [],
    )],
)

#definition()[

  设$D$为含幺整环，$a , b in D$，则

  + 若$exists c in D$使得$a = b c$，则称$b$是$a$的#strong[因子\(factor, divisor)]，称$a$为$b$的#strong[倍元\(multiple)]，并称$b$可#strong[整除]$a$，记作$b \| a$

  + 若$a \| b$且$b \| a$，则称$a$与$b$#strong[相伴\(associate)]，记作$a tilde.op b$

  + 若$a = b c$，且$b , c$均不为可逆元，则称$b$为$a$的#strong[真因子\(proper factor)]
]

#property()[

  + $forall a in D arrow.r.double a \| 0 quad lr((a 0 = 0))$

  + $forall a in D arrow.r.double 1 \| a quad lr((1 a = a))$

  + $forall u in U lr((D)) arrow.r.double u \| a quad lr((u u^(- 1) a = a))$

  + 整除的传递性 $a lr(|b , b|) c arrow.r.double a \| c$

  + $a tilde.op b arrow.l.r.double a = u b quad lr((u in U lr((D))))$

  + 相伴是一种等价关系

  + $u in U lr((D))$则$u tilde.op 1$且$u$无真因子
]

=== 素性

#definition()[

  设$D$为含幺整环，$a , b in D , p in D \\ lr(({ 0 } union U lr((D))))$（非零非单位），则

  + 若$p$无真因子，则称$p$为#strong[既约元(irreducible element)]，也即

  + 若$p lr(|a b arrow.r.double p|) a upright("或") p \| b$，则称$p$为#strong[素元(prime)]
]

#property()[

  + #theorem()[
      设$D$为含幺整环，则$D$中的#strong[素元必为既约元]
    ]
  #proof()[
    设$p$为素元，若$p = a b arrow.r.double p lr(|a b arrow.r.double p|) a upright("或") p \| b$，不妨设$p \| a$。又$p = a b arrow.r.double a \| p$，故$p tilde.op a$，为既约元
  ]

  + 反之，既约元不一定是素元

  #example()[

    设$D = bb(Z) lr([sqrt(- 5)]) = { a + b sqrt(- 5) \| a , b in bb(Z) } subset.eq bb(C)$

    引入模长方$N lr((u)) eq.delta u u^(‾) = a^2 + 5 b^2 in bb(N) lr((forall u in D))$

    验证$N lr((u_1 u_2)) = N lr((u_1)) N lr((u_2))$ 为积性函数

    设$u v = 1 arrow.r.double N lr((u)) N lr((v)) = N lr((1)) = 1 arrow.r.double N lr((u)) = N lr((v)) = 1 = a^2 + 5 b^2 arrow.r.double a = plus.minus 1 , b = 0 arrow.r.double U lr((D)) = { plus.minus 1 }$

    考虑$3 in D$，设$3 = u v arrow.r.double N lr((3)) = 9 = N lr((u)) N lr((v))$，若$u , v$不是可逆元，则$N lr((u)) = N lr((v)) = 3$，但$a^2 + 5 b^2 = 3$无整数解，故这样的$u , v$不存在，故$3$为既约元

    又$3 \| 6 = 2 times 3 = lr((1 + sqrt(- 5))) lr((1 - sqrt(- 5)))$，但$3 divides.not 1 plus.minus sqrt(- 5)$，故$3$不是素元
  ]
]

=== 公因子

#definition()[

  设$D$为含幺整环，$a , b in D$，若有$d in D$满足

  + $d \| a$且$d \| b$

  + 若有$d prime in D$使得$d prime lr(|a , d prime|) b$，则$d prime \| d$

  则称$d$是$a$与$b$的#strong[最大公因子(greatest common divisor, gcd)]，记作$d tilde.op lr((a , b))$或$g c d lr((a , b))$
]

#property()[

  + $a$与$b$的任意GCD是相伴的

  + $lr((0 , a)) tilde.op a , lr((1 , a)) tilde.op 1 arrow.r.double lr((u , a)) tilde.op 1$，其中$u in U lr((D))$

  + $lr((a , lr((b , c)))) tilde.op lr((lr((a , b)) , c))$

  #proof()[
    记$d_1 = lr((a , lr((b , c)))) , d_2 = lr((lr((a , b)) , c))$

    $d_1 lr(|a , d_1|) lr((b , c)) arrow.r.double d_1 lr(|b , d_1|) c arrow.r.double d_1 lr(|lr((a , b)) arrow.r.double d_1|) d_2$
  ]

  + $c lr((a , b)) tilde.op lr((c a , c b))$

  #proof()[
    记$d = lr((a , b)) , d_1 = lr((c a , c b))$

    $d lr(|a arrow.r.double c d|) c a , d lr(|b arrow.r.double c d|) c b arrow.r.double c d \| d_1$，令$d_1 = z c d$

    进一步令$c a = x d_1 , c b = y d_1$，将上式代入得$c a = x lr((z c d)) arrow.r.double^(upright("若") c eq.not 0) a = x z d$，同理得$b = y z d arrow.r.double z d \| lr((a , b)) = d arrow.r.double z tilde.op 1$
  ]

  + #definition()[
      设$a , b in D$，若$lr((a , b)) tilde.op 1$，则称$a$与$b$#strong[互素(relative prime)]
    ]

  若$lr((a , b)) tilde.op 1 , lr((a , c)) tilde.op 1$，则$lr((a , b c)) tilde.op 1$

  #proof()[
    $lr((a , b c)) tilde.op lr((lr((a , a c)) , b c)) tilde.op lr((a , lr((a c , b c)))) tilde.op lr((a , c lr((a , b)))) tilde.op lr((a , c)) tilde.op 1$
  ]

  #remark()[
    GCD 的定义中有存在性的假设

    $forall a , b in D , lr((a , b))$是否存在？#strong[不一定存在]
  ]

  + #theorem()[

      设$D$为含幺整环，若$forall a , b in D , gcd lr((a , b))$均存在，则$D$中的每个既约元也是素元

      GCD条件 $arrow.r.double$ 素性条件
    ]

    #proof()[

      设$p$为既约元，若$p$不是素元，则$exists a , b , in D$使得$p \| a b$且$p divides.not a , p divides b$。

      由$lr((a , p))$存在，可设$lr((a , p)) x = p$。由$p$既约，由$lr((a , p)) tilde.op p$或$lr((a , p)) in U lr((D))$。

      若$lr((a , p)) tilde.op p$，因$lr((a , p)) \| a$，故有$p \| a$，这与$p divides.not a$矛盾。

      故$lr((a , p)) tilde.op lr((b , p)) tilde.op 1$，由性质5，$lr((p , a b)) tilde.op 1$，与$p \| a b$矛盾。
    ]
]

=== 唯一分解

#definition()[

  设$D$为含幺整环，若对任何$a in D \\ lr(({ 0 } union U lr((D))))$均有

  + $a$可分解为优先个既约元之积，即$a = p_1 p_2 dots.h.c p_s$，其中$p_i$为既约元

  + 在不计次序的意义下，以上分解唯一

  则称$D$为#strong[唯一分解整环\(unique factorization domain, UFD)]
]

#definition()[

  GCD条件：$D$中任何两个（不全为0）的元素均有最大公因子

  素性条件：$D$中的每个既约元也是素元

  因子链条件：$D$中的任何真因子链$a_1 , a_2 , dots.h.c , a_i , dots.h.c$只能含有有限项$lr((a_(i + 1) \| a_i , a_(i + 1) tilde.not a_i))$
]

#theorem()[

  设$D$为含幺整环，则以下命题等价

  + $D$为唯一分解整环

  + $D$满足GCD条件和因子链条件

  + $D$满足素性条件和因子链条件
]

#proof()[

  / 1 #sym.arrow.r 2: 由UFD分解的存在性可知因子链条件成立

    设$a = u p_1^(k_1) dots.h.c p_s^(k_s) , b = v p_1^(l_1) dots.h.c p_s^(l_s)$，其中$u , v in U lr((D)) , p_i$为既约元，$k_i , l_i in bb(N)$。令$e_i = min { l_i , k_i }$，则易验证$d = p_1^(e_1) dots.h.c p_s^(e_s)$为$gcd lr((a , b))$

  / 2 #sym.arrow.r 3: 显然

  / 3 #sym.arrow.r 1: $f o r a l l a in D \\ lr(({ 0 } union U lr((D))))$。先证明分解存在性，可由因子链条件保证。再证分解唯一性，可由素性条件保证。
]

=== 主理想整环

#definition()[

  环中有一个元素生成的理想$lr((a))$称为#strong[主理想(principal ideal)]

  设$D$为含幺整环，若$D$的任意理想均为主理想，则称$D$为#strong[主理想整环(principal ideal domain, PID)]
]

#property()[

  + #theorem()[
      PID必为UFD
    ]
  #proof()[

    构造因子链条件：$a_0 a_1 dots.h.c a_n dots.h.c arrow.r.double lr((a_0)) subset.neq lr((a_1)) subset.neq lr((a_2)) dots.h.c arrow.r.double A eq.delta union.big_(i = 0)^oo lr((a_i))$ 可验证$A$为$D$的理想$arrow.r.double A = lr((r)) med lr((exists r in D)) arrow.r.double r in A arrow.r.double r in lr((a_k)) med lr((exists k)) a_k in A = lr((r)) arrow.r.double a_k tilde.op r$，同理$a_(k + 1) tilde.op r , a_(k + 2) tilde.op r dots.h.c$，故$a_k tilde.op a_(k + 1) tilde.op a_(k + 2) tilde.op dots.h.c$，故因子链条件成立

    验证GCD条件：令$I = { x a + y b \| x , y in D }$，验证$I$为$D$中理想$arrow.r.double I = lr((d)) arrow.r.double exists x_0 , y_0 in D$使得$d = x_0 a + y_0 b$，故$d tilde.op lr((a , b))$
  ]

  + Bezout等式在PID中成立

  + 存在UFD不是PID，反例$bb(Z) lr([x])$为UFD但不是PID
]

#example()[
  $F lr([x])$为PID，$F$为域
]

=== 欧几里得整环

#definition()[
  设$D$为含幺整环，若存在映射$v : D^(\*) arrow.r bb(Z)^(+)$，满足对任何$a in D^(\*) , b in D$，均存在$q , r in D$使得 $ b = a q + r , r = 0 upright("或") v lr((r)) < v lr((a)) $ 则称$D$为#strong[欧几里得整环(Euclidean domain, ED)]，而$v lr((a))$称为$a$的#strong[范数]
]

#theorem()[
  ED必为PID，反之不成立（反例：蓝皮书）
]

#example()[
  $bb(Z) , F lr([x]) , bb(Z) lr([i]) = { a + b i \| a , b in bb(Z) }$为ED
]

== 多项式环

核心问题：求根与分解

#theorem([$QQ[x]$ 中的多项式分解])[

  设$f lr((x)) in bb(Q) lr([x])$，系数通分后得$c f lr((x)) in bb(Z) lr([x])$，则

  $c f lr((x))$在$bb(Z) lr([x])$中（不）可约$arrow.l.r.double f lr((x))$在$bb(Q) lr([x])$中（不）可约
]

#theorem("有理根判则")[

]

#theorem("Eisenstein 判则")[

]