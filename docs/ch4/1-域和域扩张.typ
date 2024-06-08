#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "域和域扩张")

= 域和域扩张

域 = 两个交换群 + 分配律 = 可交换的除环 = 乘法可逆的整环

#property()[

  $U lr((F)) = F \\ {0} = F^(\*)$

  $F$中理想只有平凡理想$arrow.r.double F$为单环

  域之间的同态$sigma : F_1 arrow.r F_2$

  $ker sigma$为$F_1$中的理想$arrow.r.double ker sigma = lr((0))$或$F_2 arrow.r.double sigma$单同态或$sigma equiv 0$
]

#definition()[
  设$lr((K , + , dot.op))$为域，$nothing eq.not F subset.eq K$，若$F$对于$+ , dot.op$也构成一个域，则称$F$为$K$的#strong[子域(subfield)]，反之称$K$为$F$的#strong[扩域(extension field)]。记作$F lt.eq K$或$K \/ F$
]

== 域的特征与素域

#definition()[

  对域$F$而言，$nothing eq.not S subset.eq F$，则$F$中包含$S$对最小子域称为#strong[由$S$生成的子域]，记作$angle.l S angle.r$

  $1$生成的子域$angle.l 1 angle.r$称为$F$的#strong[素域]，记作$F_0$
]

#theorem()[
  设$F$为域，则若1在$lr((F , +))$中的阶$o^(+) lr((1)) < oo$，则必有$o^(+) lr((1)) = p$，其中$p$为素数
]

#proof()[
  若$o^(+) lr((1)) < oo$，不妨设$o^(+) lr((1)) = n in bb(Z)^(+)$，假设$n$不是素数，则$exists n_1 , n_2 > 1$满足$n = n_1 n_2 arrow.r.double 0 = n 1 = lr((n_1 n_2)) 1 = lr((n_1 1)) lr((n_2 1)) in F$，由于$F$中无零因子，只有$n_1 1 = 0$或$n_2 1 = 0$，与$o^(+) lr((1))$的最小性矛盾，故$n$为素数
]

#definition()[
  设$lr((F , + , dot.op))$，如下定义其#strong[特征(character)]： $ c h lr((F)) = cases(
    delim: "{",
    p & upright("若") o^(+) lr((1)) = p < oo,
    0 & upright("若") o^(+) lr((1)) = oo,

  ) $
]

#property()[
  若$o^(+) lr((1)) = p$为素，$forall a in F^(\*)$均有$o^(+) lr((a)) = p$
]

#proof()[
  若$m a = 0 arrow.r.double lr((m a)) b = 0 = a lr((m b)) arrow.r.double m b = 0$
]

#theorem()[

  设$F$为域，$F_0$是$F$的素域，则 $ F_0 tilde.equiv cases(
    delim: "{",
    bb(Q) & o^(+) lr((1)) = oo,
    bb(Z) \/ p bb(Z) & o^(+) lr((1)) = p < oo,

  ) $
]

#proof()[

  若$c h lr((F)) = 0 , o^(+) lr((1)) = oo , lr((n 1)) lr((m 1))^(- 1) in F_0$，令$sigma : bb(Q) arrow.r F_0$，从而有$n / m arrow.r.bar lr((n 1)) lr((m 1))^(- 1)$，可验证$sigma$为单同态，即$sigma lr((bb(Q))) subset.eq F_0$。由$F_0$的最小性知$sigma lr((bb(Q))) = F_0$，则$sigma$满，故为同构。

  若$c h lr((F)) = p$，令$sigma : bb(Z) \/ p bb(Z) arrow.r F_0 , a^(‾) arrow.r.bar a_0 1 lr((a_0 = 0 , 1 , dots.h.c , p - 1 upright("s.t.") a_0 in a^(‾)))$可验证$sigma$为单同态，进一步由$F_0$的最小性知$sigma lr((bb(Z) \/ p bb(Z))) = F_0$，则$sigma$满，故为同构。
]

== 域的扩张方式

设$K \/ F$为域扩张，设$u , v in K , a , b in F arrow.r.double a u + b v in K$，可视为$u$与$v$的$F$-线性组合

#definition()[
  设$K \/ F$为域扩张，$K$作为$F$-线性空间的维数$dim_F K$就称为$K$对$F$的#strong[扩张次数（extension degree）]，记作$lr((K : F))$
]

#theorem("链式法则，望远镜公式")[
  若$F , K , E$为域，且$F subset.eq K subset.eq E$，则$E \/ F$为#strong[有限扩张]$arrow.l.r.double K \/ F$，$E \/ K$均为有限扩张，且此时还有如下数量关系： $ lr((E : F)) = lr((E : K)) lr((K : F)) $
]

#proof()[

  设${ v_i }_(i = 1)^(n_1)$为$K$的一组$F$-基，${ u_j }_(j = 1)^(n_2)$为$E$的一组$K$-基

  构造$E$的$F$-基${ u_i v_j }_(1 lt.eq i lt.eq n_1 , 1 lt.eq j lt.eq n_2)$，验证线性无关与表出性
]

#example()[

  $bb(C) = { a + b i \| a , b in bb(R) }$，故${ 1 , i }$为$bb(C)$的一组$bb(R)$-基，从而$lr((bb(C) : bb(R))) = 2$

  $K = { a + b sqrt(2) \| a , b in bb(Q) }$，故${ 1 , sqrt(2) }$为$K$的一组$bb(Q)$-基，从而$lr((K : bb(Q))) = 2$

  $E = { c + d sqrt(3) \| c , d in K }$，故${ 1 , sqrt(3) }$为$E$的一组$K$-基，从而$lr((E : K)) = 2$

  $lr((E : bb(Q))) = lr((E : K)) lr((K : bb(Q))) = 4$，且$E$的一组$bb(Q)$-基为${ 1 , sqrt(2) , sqrt(3) , sqrt(6) }$，即$E = { a + b sqrt(2) + c sqrt(3) + d sqrt(6) \| a , b , c , d in bb(Q) }$

  如此添加$sqrt(p)$作扩张，可知$bb(R) \/ bb(Q)$为无限扩张，即$lr((bb(R) : bb(Q))) = oo$
]

== 添元扩张法

#definition()[

  设$K \/ F$为域扩张，$nothing eq.not S subset.eq K$，称包含$S union F$的$K$的最小子域为#strong[$F$添加$S$所得的域]，记作$F lr((S))$

  当$S = { u }$时，即$F$添加一个元素$u$所得的域$F lr((u))$，称为$F$上的#strong[单扩张（simple extension）]
]

#definition()[

  设$K \/ F$为域扩张，$u in K$，若$u$是$F$上某个非零多项式$f lr((x)) in F lr([X])$的根，则称$u$为$F$上的#strong[代数元（algebraic element）]，否则称为#strong[超越元（transcendental element）]

  当$F = bb(Q)$时，$bb(Q)$上的代数元称为#strong[代数数（algebraic number）]，超越元称为#strong[超越数（transcendental number）]
]

#definition()[
  若$u$为$F$上的代数元，称以$u$为根的首一的次数最小的多项式$f lr((x)) in F lr([x])$为$u$在$F$上的#strong[最小多项式]，记作$m_u lr((x))$。当$deg m_u lr((x)) = n$时，称$u$为一个$n$次代数元
]

#property()[

  + 最小多项式不可约

  + 最小多项式是唯一的

  + 最小多项式是全体以$u$为根的多项式的公因子
]

#theorem("单扩张定理")[

  若$E \/ F$为域扩张，$u in E$，则 $ F lr((u)) tilde.equiv cases(
    delim: "{",
    { a_0 + a_1 u + dots.h.c a_(n - 1) u^(n - 1) \| a_i in F } tilde.equiv F lr([x]) \/ lr((m lr((x)))) & u upright("为") F upright("上") n upright("次代数元"),
    { frac(f lr((x)), g lr((x))) \| f lr((x)) , g lr((x)) in F lr([x]) , g lr((x)) eq.not 0 } tilde.equiv F lr((x)) & u upright("为") F upright("上超越元"),

  ) $ 且有$lr((F lr((u)) : F)) = cases(delim: "{", deg m lr((x)) & upright("代数"), oo & upright("超越"))$
]

#proof()[

  + 当$u$为$F$上的$n$次代数元时，由$F lr([x])$是PID，$m lr((x))$是$F lr([x])$中的不可约多项式$arrow.r.double lr((m lr((x))))$是极大理想$arrow.r.double F lr([x]) \/ lr((m lr((x))))$是域，其中的元素为$a^(‾) lr((x)) = a lr((x)) + lr((m lr((x))))$且$deg a lr((x)) lt.eq n - 1$，不妨设$a lr((x)) = a_0 + a_1 + dots.h.c + a_(n - 1) x^(n - 1)$

    作映射$sigma : S eq.delta { a_0 + a_1 u + dots.h.c a_(n - 1) u^(n - 1) \| a_i in F } arrow.r F lr([x]) \/ lr((m lr((x)))) , g lr((u)) arrow.r.bar g lr((x))$。验证$sigma$为环同态、双射，故$sigma$为同构映射。则$S$为包含$F union { u }$的在同构意义下的一个域，即$F lr((u)) subset.eq S$。另一方面，$S subset.eq F lr([u]) subset.eq F lr((u))$，故$S = F lr((u))$，且${ 1 , u , dots.h.c , u^(n - 1) }$为其$F$-基，$lr((F lr((u)) : F)) = deg m lr((x)) = n$

  + 当$u$为$F$上超越元时，作映射$sigma : F lr((u)) arrow.r F lr((x)) = { frac(f lr((x)), g lr((x))) \| f , g in F lr([x]) , g eq.not 0 }$，验证$sigma$为同构……
]

$F lr((u))$中乘法就是关于多项式乘法，特别当$u$代数时为关于$u$的多项式乘法（$mod m_u lr((x))$）

== 代数扩张域有限扩法

#definition()[
  设$K \/ F$为域扩张，若每一个$u in K$，均为$F$上的代数元，则称$K$是$F$的#strong[代数扩张（algebraic extension）]。否则（只须存在一个超越元）称为#strong[超越扩张（transcendental extension）]
]

#theorem()[
  $K \/ F$为有限扩张$arrow.r.double K \/ F$为代数扩张，反之不成立
]

#proof()[
  设$lr((K : F)) = n , forall u in K$，考虑$1 , u , u^2 , dots.h.c , u^n in K$共$n + 1$个元，$K$是$n$维的$F$-线性空间$arrow.r.double { 1 , u , dots.h.c , u^n }$线性相关，即$exists$不全为零的$a_i in F$使得$a_0 + a_1 u + dots.h.c + a_n u^n = 0 arrow.r.double f lr((x)) eq.not 0$且$f lr((u)) = 0$，从而$u$维代数元。进而$K \/ F$为代数扩张。
]

#property()[
  设$K \/ F$为域扩张，$a , b in K$，分别为$m , n$次代数元，则$lr((F lr((a , b)) : F)) lt.eq m n$
]

#proof()[
  设$a , b$在$F$上的最小多项式分别为$f lr((x)) , g lr((x)) in F lr([x]) , deg f = m , deg g = n$。$F lr((a , b)) = lr((F lr((a)))) lr((b))$相当于将$b$添加到$F lr((a))$中，设$b$在$F lr((a))$上的最小多项式为$g prime lr((x)) in F lr((a)) lr([x])$，将$g lr((x))$视为$F lr((a)) lr([x])$中到多项式（$F subset.eq F lr((a))$），则有$g lr((b)) = g prime lr((b)) = 0 arrow.r.double g prime lr((x)) \| g lr((x)) in F lr((a)) lr([x]) arrow.r.double deg g prime lt.eq deg g = n$。故$lr((F lr((a , b)) : F lr((a)))) = deg g prime lt.eq n arrow.r.double lr((F lr((a , b)) : F)) = lr((F lr((a , b)) : F lr((a)))) lr((F lr((a)) : F)) lt.eq m n$
]

#property()[
  设$K \/ F$为域扩张，$a , b in K$为$F$上的代数元，则$a$与$b$到四则运算（加减乘除）均为$F$上的代数元
]

#proof()[
  由性质1，$F lr((a , b)) \/ F$有限扩，进而是代数扩。
]

#property("代数扩张的传递性")[
  若$K \/ F , E \/ K$为代数扩张，则$E \/ F$为代数扩张
]

#definition()[
  $F$添加全体$F$上的代数元所得的域称为$F$的#strong[代数闭包（algebraic closure）]，记作$F^(A C)$或$F^(‾)$
]

== 有限域

$bb(Z) \/ p bb(Z)$为有限域，特别当$p = 2$时，$bb(Z) \/ p bb(Z) = bb(F)_2 = G F lr((2))$为最简单的有限域

=== 有限域的构造与唯一性

首先，若$\# F = n < oo$，则$c h lr((F)) = p arrow.r.double F_0 tilde.equiv bb(Z) \/ p bb(Z) eq.delta bb(F)_p arrow.r.double F \/ bb(F)_p$域扩张

其次，扩张次数$lr((F : bb(F)_p)) = s < oo arrow.r.double \# F = p^s$

如何表示：

+ 线性空间 $F tilde.equiv bb(F)_p u_1 + dots.h.c + bb(F)_p u_s$

+ 单代数扩张 $F tilde.equiv bb(F)_p lr((alpha)) tilde.equiv bb(F)_p lr([x]) \/ lr((m_alpha lr((x)))) , deg m_alpha lr((x)) = s$

#example()[
  构造8阶域
]

#solution()[

  $8 = 2^3 arrow.r.double c h lr((F)) = 2$且$F \/ bb(F)_2$的3次扩域。取$bb(F)_2 lr([x])$上的3次不可约多项式$x^3 + x + 1 , x^3 + x^2 + 1$

  $f lr((x)) = x^3 + x^2 + 1 in bb(F)_2 lr([x])$，设$alpha$为$f lr((x))$在$bb(F)_2^(A C)$中的一根

  令\$F \= \\mathbb{F}\_2\(\\alpha) \= \\mathbb{F}\_2\[x\]/\(f\(x)) \= \\{ \\overline{a\_0 + a\_1 x + a\_2 x^2} | a\_i \\in \\mathbb{F}\_2 \\} \\\\
  \= \\{ \\bar{0}, \\bar{1}, \\bar{x}, \\overline{1+x}, \\bar{x^2}, \\overline{1+x^2}, \\overline{x + x^2}, \\overline{1 + x + x^2} \\} \\\\
  \= \\{ 0, 1, \\alpha, 1 + \\alpha, \\alpha^2, 1 + \\alpha^2, \\alpha + \\alpha^2, 1 + \\alpha + \\alpha^2 \\}\$

  $F$中的加法：多项式的加法，也是线性空间的加法，${ 1 , alpha , alpha^2 }$为一组$bb(F)_2$-基

  $F$中的乘法：多项式的乘法$med ( mod med f lr((x)) \)$（利用$alpha^3 = alpha^2 + 1$化简）

  + 根的选取有自由性

  + 选取另一多项式构造的域是同构的
]

#theorem()[
  任何两个元素个数为$p^n$的有限域是同构的，且都同构于$S = { alpha in bb(F)_n^(A C) \| alpha upright("为") x^(p^n) - x upright("的根") }$
]

+ $f lr((x)) = x^(p^n) - x = x lr((x^(p^n - 1) - 1))$，称"一篮子多项式"

+ $forall F_1 tilde.equiv S tilde.equiv forall F_2$（唯一性）

+ $forall p , forall n in bb(Z)^(+) , x^(p^n) - x$存在$arrow.r.double S$存在$arrow.r.double$阶数为$p^n$的有限域存在

#proof()[

  + 先讨论$S$的结构，即说明$S$构成域

    设$f lr((x)) = x^(p^n) - x$，则$f prime lr((x)) = p^n x^(p^n - 1) - 1 = - 1 arrow.r.double lr((f , f prime)) tilde.op 1 arrow.l.r.double f lr((x))$无重根$arrow.r.double \# S = p^n$。设$S = { alpha_0 = 0 , alpha_1 = 1 , alpha_2 , dots.h.c , alpha_(p^n - 1) }$，其中$alpha_1 , dots.h.c , alpha_(p^n - 1)$为$x^(p^n - 1) - 1$的根$arrow.r.double o_times lr((alpha_i)) \| p^n - 1 lr((forall i eq.not 0))$

    若$S$中有$p^n - 1$阶元，设为$alpha$，则$angle.l alpha angle.r = { alpha^j \| 0 lt.eq j lt.eq p^n - 2 }$就是$x^(p^n) - 1 = 0$的全部根，即$S = { 0 } union angle.l alpha angle.r$。

    进一步验证$S$对于加法乘法运算封闭，且构成群。 \
    $forall a , b in S arrow.r.double lr((a + b))^(p^n) - lr((a + b)) = a^(p^n) + b^(p^n) - a - b = lr((a^(p^n) - a)) + lr((b^(p^n) - b)) = 0 arrow.r.double lr((a + b)) in S$ \
    $lr((a b))^(p^n) - lr((a b)) = a b - a b = 0 arrow.r.double a b in S$ \
    $S$构成域

  + 证明$S$中必有$p^n - 1$阶元（参考教材）

  + 再看$F$与$S$的关系：$forall F s . t . \# F = p^n$

    $bb(F)_p$中元满足$a^p = a$（费马小定理$a^(p - 1) equiv 1 med ( mod med p \)$若$lr((a , p)) = 1$）$arrow.r.double bb(F)_p subset.eq S arrow.r.double 0 , 1 in S$

    $forall u in F^(\*)$有$o_times lr((u)) \| \# F^(\*) = p^n - 1 arrow.r.double u^(p^n - 1) = 1 arrow.r.double u in S arrow.r.double F subset.eq S$

    又$lr(|F|) = lr(|S|) = p^n arrow.r.double F tilde.equiv S$
]

#remark()[

  + 取定$p , n$，则$p^n$阶的有限域存在且在同构意义下唯一，记作$bb(F)_(p^n)$或$G F lr((p^n))$

  + 加法方面$lr((bb(F)_(p^n) , +)) tilde.equiv lr((bb(F)_p^n , +))$

  + 乘法方面$lr((bb(F)_(p^n)^(\*) , dot.op)) = angle.l alpha angle.r tilde.equiv C_(p^n - 1)$，生成元$alpha$称为$bb(F)_(p^n)$的本原元

  + $bb(F)_(p^n) tilde.equiv cases(
      delim: "{",
      bb(F)_p lr((beta)) = bb(F)_p lr([x]) \/ lr((p lr((x)))) & p lr((x)) upright("为") bb(F)_p upright("上n次不可约多项式，") beta upright("为其一根"),
      { a_0 + a_1 beta + dots.h.c + a_(n - 1) beta^(n - 1) \| a_i in bb(F)_p },
      { x^(p^n) - x upright("在") bb(F)_p^(A C) upright("的全部根") },
      { 0 } union angle.l alpha angle.r,

    )$
]

#definition()[

  + $F_(p^n)^(\*)$中$p^n - 1$阶元称为$bb(F)_(p^n)$的#strong[本原元\(primitive element)]，本原元$alpha$在$bb(F)_p$上的最小多项式称为$bb(F)_p lr([x])$中的#strong[本原多项式(primitive polynomial)]

  + 若$alpha$是方程$x^r - 1 = 0$在$bb(F)_p^(A C)$中的根，但不是任何$x^h - 1 = 0 lr((h < r))$的根，则称$alpha$是#strong[r次本原单位根(primitive root of unit)]
]

#example()[
  给出一个$bb(F)_2 lr([x])$中的4次本原多项式
]

#solution()[
  首先找一个4次不可约多项式： \
  试根法得可选项$x^4 + x^3 + x^2 + x + 1 , x^4 + x^3 + 1 , x^4 + x^2 + 1 upright("讨论可知可约") , x^4 + x + 1$ \
  其次，在上述3个不可约多项式中，寻找本原多项式，即其根的阶$2^4 - 1 = 15$

  因$x^5 - 1$含有$x^4 + x^3 + x^2 + x + 1$，故$x^4 + x^3 + x^2 + x + 1$的根$alpha$的阶为5，故不是本原的

  考虑$x^4 + x^3 + 1$，设其根$alpha , o_times lr((alpha)) \| 15 , alpha^4 = alpha^3 + 1 arrow.r.double alpha^5 = alpha^4 + alpha = alpha^3 + alpha + 1 eq.not 1 arrow.r.double alpha$ 必为15阶元$arrow.r.double x^4 + x^3 + 1$ 为本原多项式

  同理，$x^4 + x + 1$也是本原的
]

=== 有限域的子域

#theorem()[
  $bb(F)_(p^n)$的全部子域为$bb(F)_(p^m)$，其中$m \| n$
]

#proof()[

  一方面，设$K$为$bb(F)_(p^n)$的子域，则$bb(F)_p subset.eq K subset.eq bb(F)_(p^n) arrow.r.double lr(|K|) = p^m lr((m lt.eq n))$。又因$bb(F)_(p^n)$可视为$K$-线性空间，$lr((bb(F)_(p^n) : K)) = r arrow.r.double lr(|bb(F)_(p^n)|) = lr(|K|)^r arrow.r.double p^n = lr((p^m))^r arrow.r.double m \| n$

  另一方面，$forall d \| n$，有$lr((p^d - 1)) lr(|lr((p^n - 1)) arrow.r.double lr((x^(p^d - 1) - 1))|) lr((x^(p^n - 1) - 1)) arrow.r.double lr((x^(p^d) - x)) \| lr((x^(p^n) - x)) arrow.r.double bb(F)_(p^d) subset.eq bb(F)_(p^n)$
]

=== 有限域上的多项式

#theorem()[
  设$q$为素数$p$的方幂，$f lr((x)) in bb(F)_q lr([x])$是n次不可约的，$u$为$f lr((x))$在$bb(F)_q^(A C)$的一个根，则$f lr((x))$在$bb(F)_q^(A C)$的全部根为$u , u^q , dots.h.c u^(q^(n - 1))$。注：$u^(q^n) = u$
]

#proof()[
  设$f lr((x)) = sum_(i = 0)^n a_i x^i lr((a_i in bb(F)_q , a_n eq.not 0))$，则$f lr((u)) = 0$

  又$a_i in bb(F)_q arrow.r.double a_i^q = a_i lr((forall i)) arrow.r.double a_i^(q^j) = a_i$，$f lr((u^(q^j))) = a_0 + a_1 u^(q^j) + dots.h.c + a_n u^(n q^j) = lr((a_0 + a_1 u + dots.h.c + a_n u^n))^(q^j) = f lr((u))^(q^j) = 0^(q^j) = 0 arrow.r.double u^(q^j)$为$f lr((x))$的根($j = 0 , 1 , 2 , dots.h.c n - 1$)

  $bb(F)_q lr((u)) = bb(F)_q lr([x]) \/ lr((f lr((x)))) tilde.equiv bb(F)_(q^n) = {x^(q^n) - x upright("的全部根")}$

  下证n个根互不相同，反证：设$exists i eq.not j s . t . u^(q^i) = u^(q^j) lr((i > j)) arrow.r.double 0 = u^(q^i) - u^(q^j) = lr((u^(q^(i - j)) - u))^(q^j) arrow.r.double u^(q^(i - j)) = u arrow.r.double u in bb(F)_(q^(i - j))$且$i - j < n arrow.r.double bb(F)_q lr((u)) subset.eq bb(F)_(q^(i - j))$但$bb(F)_q lr((u)) tilde.equiv bb(F)_(q^n) arrow.r.double bb(F)_(q^n) subset.eq bb(F)_(q^(i - j))$与$i - j < n$矛盾。故这n个根就是$f lr((x))$的全部根（由代数基本定理得）
]

#example()[
  在$bb(F)_2 lr([x])$中分解多项式$x^7 - 1$
]

#solution()[

  $x^7 - 1$在$bb(F)_2^(A C)$中的根必为${ 1 , alpha , alpha^2 dots.h.c alpha^6 } , alpha^7 = 1$。

  设$p lr((x))$为$x^7 - 1$的不可约因式，若$alpha$为$p lr((x))$的根$arrow.r.double alpha , alpha^2 , alpha^4$为$p lr((x))$的全部根$arrow.r.double deg p lr((x)) = 3$

  设$q lr((x))$为$x^7 - 1$的另一不可约多项式，且$alpha^3$为$q lr((x))$的根$arrow.r.double alpha^3 , alpha^6 , alpha^5$为$q lr((x))$的全部根$arrow.r.double deg q lr((x)) = 3$

  $x^7 - 1 = lr((x - 1)) p lr((x)) q lr((x))$
]

#theorem("一篮子多项式分解定理")[

  $x^(p^n) - x$是$bb(F)_p lr([x])$中次数除尽n的首一不可约多项式的乘积

  $x^(p^n) - x = product_(d \| n) g lr((x)) , g lr((x)) = upright("d次首一不可约多项式")$
]

#theorem()[

  + $bb(F)_q lr([x])$中n次不可约多项式的个数为 $ I_q lr((n)) = 1 / n sum_(d \| n) mu lr((d)) q^(n \/ d) $

  + $bb(F)_q lr([x])$中n次本原多项式的个数为 $ J_q lr((n)) = frac(phi lr((q^n - 1)), n) $
]