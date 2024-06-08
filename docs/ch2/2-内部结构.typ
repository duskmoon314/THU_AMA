#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "内部结构")

= 内部结构

== 子群与子群判则

#definition()[

  设$G$是群，$H subset.eq G$为非空子集，若$H$在$G$的运算下也构成群，则称$H$是$G$的一个#strong[子群]，记为$H lt.eq G$

  $H < G$：当$H$为$G$的真子群，即$H eq.not G$
]

#corollary()[
  $e lt.eq G$、 $G lt.eq G$， 称为平凡子群
]

#theorem("子群判则")[

  设$H subset.eq G$为群内非空子集，则

  + $H lt.eq G$

  + $forall a , b in H$，有$a b in H$且$a^(- 1) in H$ （四合二）

  + $forall a , b in H$，有$a b^(- 1) in H$ （四合一）

  等价
]

#proof()[

  - 1 $arrow.r$ 2

    显然

  - 2 $arrow.r$ 3

    由2知，$b in H arrow.r.double b^(- 1) in H arrow.r.double a b^(- 1) in H$

  - 3 $arrow.r$ 1

    取 $a = b arrow.r.double e in H$，幺元

    取 $a = e arrow.r.double b^(- 1) in H$，逆元

    将$b$视为$lr((b^(- 1)))^(- 1) arrow.r.double a b = a lr((b^(- 1)))^(- 1) in H$，封闭性

    结合律可由大群中继承

    故 H 构成群即 $H lt.eq G$ #qedhere
]

#example()[

  $lr((4 bb(Z) , +)) lt.eq lr((2 bb(Z) , +)) lt.eq lr((bb(Z) , +))$ 偶数构成子群

  若$n \| m$，则$m bb(Z) lt.eq n bb(Z)$

  $S O_n < S L_n lr((bb(R))) < S L_n^plus.minus lr((bb(R))) < G L_n lr((bb(R)))$
]

#theorem("子群运算律")[

  + $H lt.eq G$，则$H$中的幺元为$G$中的幺元

  + $H_1 , H_2 lt.eq G$，则$H_1 sect H_2 lt.eq G$

  + $H_1 , H_2 lt.eq G$，则$H_1 union H_2 lt.eq G arrow.l.r.double H_1 subset.eq H_2$或$H_2 subset.eq H_1$

  + $H_1 , H_2 lt.eq G$，则$H_1 H_2 lt.eq G arrow.l.r.double H_1 H_2 = H_2 H_1 eq.delta { h_1 h_2 \| h_1 in H_1 , h_2 in H_2 }$
]

#proof("验证子群运算律")[

  / 1,2: 略
  / 3:
    - 设$h_1 in H_1 , h_2 in H_2 \\ H_1$，则$h_1 h_2 in.not H_1$（否则$h_1^(- 1) h_1 h_2 in H_1$，矛盾）

      由$H_1 union H_2 lt.eq G$，$h_1 h_2 in H_2 arrow.r.double.long h_1 = h_1 h_2 h_1^(- 1) in H_2$

      再由$h_1 h_2$的任意性，$H_1 subset.eq H_2$

    - 若$H_1 subset.eq H_2$，则$H_1 union H_2 = H_2 lt.eq G$

  / 4:
    - $forall a b in H_1 H_2 lr((a in H_1 b in H_2))$，由$H_1 H_2 lt.eq G$，$lr((a b))^(- 1) in H_1 H_2$

      记$lr((a b))^(- 1) = a_1 b_1 lr((exists a_1 in H_1 , b_1 in H_2))$

      又$a b = lr((a_1 b_1))^(- 1) = b_1^(- 1) a_1^(- 1) in H_2 H_1 arrow.r.double.long H_1 H_2 subset.eq H_2 H_1$

      反之，$forall b a in H_2 H_1$，有$lr((b a))^(- 1) = a^(- 1) b^(- 1) in H_1 H_2$，则$b a = lr((lr((b a))^(- 1)))^(- 1) in H_1 H_2$

      综上有$H_1 H_2 = H_2 H_1$

    - $e in H_1 H_2 arrow.r.double.long H_1 H_2 eq.not nothing$，$forall a b , a_1 b_1 in H_1 H_2$，$lr((a_1 b_1)) lr((a b))^(- 1) = a_1 b_1 b^(- 1) a^(- 1) = a_1 b prime a^(- 1) = a_1 a prime b prime.double = a prime.double b prime.double in H_1 H_2 arrow.r.double.long H_1 H_2 lt.eq G$ #qedhere
]

== 元素的阶

#definition()[
  设G是群，$a in G$，使$a^n = e$的最小正整数n称为$a$的#strong[阶]或#strong[周期（order, period）]，记为$o lr((a))$（允许$o lr((a)) = oo$）
]

#corollary()[

  + $o lr((e)) = 1$, $o lr((a^(- 1))) = o lr((a))$

  + $a^m = e arrow.l.r.double o lr((a)) \| m$

  #proof()[

    / #sym.arrow.r.double: 若$a^m = e$，设$o lr((a)) = k$，对m与k作带余除法，$m = q k + r lr((0 lt.eq r < k))$

      $e = a^m = a^(q k) a^r = e a^r = a^r$，由阶的最小性，$r = 0$

    / #sym.arrow.l.double: 显然
  ]

  + 有限群中所有元素的阶均有限，而无限群不一定存在无限阶元

  #example()[
    $W = {upright("全体复单位根")} = {
        e^(frac(2 pi i k, n)) \| n in bb(N) , 0 lt.eq k < n
      } lt.eq lr((bb(C)^(\*) , dot.op))$
  ]

  + 设$o lr((a)) = m , o lr((b)) = n$，若$lr((m , n)) = 1$且$a b = b a$，则$o lr((a b)) = m n$

  #proof()[

    设$o lr((a b)) = k$，则$lr((a b))^(m n) = a^(m n) b^(m n) = e^n e^m = e arrow.r.double.long k \| m n$

    $e = lr((a b))^(k m) = b^(k m) arrow.r.double.long n lr(|k m arrow.r.double.long n|) k$

    $e = lr((a b))^(k n) = a^(k n) arrow.r.double.long m lr(|k n arrow.r.double.long m|) k$

    故 $m n \| k arrow.r.double.long k = m n$ #qedhere
  ]

  + $forall a in G \\ { e }$，若总有$o lr((a)) = 2$，则G为交换群（如Klein四元群）

  #proof()[
    $a^2 = e arrow.r.double.long a = a^(- 1) , forall a , b in G$，有$a b = lr((a b))^(- 1) = b^(- 1) a^(- 1) = b a$ #qedhere
  ]
]

== 循环群与生成子群

包含a的最简单的子群？设 $H lt.eq G$ 使得 $a in H$

${dots.h.c , a^(- 2) , a^(- 1) , e = a^0 , a , a^2 , dots.h.c , a^n , dots.h.c} = {
    a^k \| k in bb(Z)
  } = cyclicgroup(a) subset.eq H$

$a^(k_1) lr((a^(k_2)))^(-) 1 = a^(k_1 - k_2) in cyclicgroup(a)$

#definition()[

  设$S subset.eq G$非空子集，G中包含S的所有子群的交称为#strong[由S生成的子群]，记为$cyclicgroup(S)$（$arrow.l.r.double cyclicgroup(S)$是包含S的最小子群）

  由1个元素生成的（子）群称为#strong[循环（子）群（cyclic group）]
]

#corollary()[
  设$S subset.eq G$非空子集，则$cyclicgroup(S) = { a_1^(epsilon.alt_1) a_2^(epsilon.alt_2) dots.h.c a_n^(epsilon.alt_n) \| n in bb(Z)^(+) , a_i in S , epsilon.alt_i = plus.minus 1 }$（$a_i$可重）
]

#definition()[
  若$G = cyclicgroup(S)$，且任何S的真子集的生成子群均不是G，则称S为G的#strong[极小生成集]
]

#example()[

  $lr((bb(Z) , +)) = < 1 > = < - 1 >$

  $lr((m bb(Z) , +)) = < m > = < - m >$

  $lr((bb(Z) \/ n bb(Z) , +)) = < 1^(‾) > = < a^(‾) > , lr((a , n)) = 1$（$lr((a , n)) = 1 arrow.l.r.double a x + n y = 1 arrow.l.r.double a^(‾) x^(‾) = 1^(‾) arrow.l.r.double x_0 upright("个") a^(‾) upright("相加")$

  $K_4 = {e , a , b , c} = < a , b > = < a , c > = < b , c >$
]

#corollary()[
  生成元集不一定是唯一的，但极小生成集包含的元素个数是唯一的
]

#property()[

  + 循环群必交换

  + #proposition()[
      循环子群的阶等于生成元的阶，即$\# < a > = o lr((a))$
    ]

  + #theorem()[
      $
        < a > tilde.equiv cases(
        delim: "{",
        lr((bb(Z) , +)) & o lr((a)) = oo,
        lr((bb(Z) \/ n bb(Z) , +)) & o lr((a)) = n < oo,

      )
      $ (同构 \= 双射 + 保运算)
    ]

  #proof()[
    当$o lr((a)) = oo$时，$< a > = { a^k \| k in bb(Z) } arrow.r^sigma lr((bb(Z) , +))$，$a^k arrow.r.bar k$

    当$o lr((a)) = n < oo$时，$< a > = { a^k \| k in bb(Z) , 0 lt.eq k < n } arrow.r^sigma lr((bb(Z) \/ n bb(Z) , +))$，$a^k arrow.r.bar k^(‾)$
  ]

  + #corollary()[
      阶数相同的循环群必同构
    ]
]

#theorem()[

  + $lr((bb(Z) , +))$的子群必为$m bb(Z) lr((m in bb(Z)))$的形式，从而无限循环群的非零子群仍为无限循环群。

  + $lr((bb(Z) \/ n bb(Z) , +))$的子群必同构于$lr((bb(Z) \/ d bb(Z) , +))$的形式，其中$d \| n$，且对n的任意因子d，$bb(Z) \/ n bb(Z)$有且仅有1个d阶子群。进而有限循环群的非零子群仍为有限循环群。
]

#proof()[

  + 容易验证 $m bb(Z) lt.eq bb(Z)$。反之，设$H lt.eq bb(Z)$，则令$H = H^(+) union { 0 } union H^(-)$，其中$H^(+) = { h in H |h > 0 }, H^(-) = { h in H | h < 0 }$，可知$H^(+) = - H^(-) , H^(+) subset.eq bb(N)$。

    由自然数的良序性知，$H^(+)$中存在最小元，记作m。 于是$forall x in H^(+)$，有$x = q m_0 + r lr((0 lt.eq r < m_0))$，则$r = x - q m_0 = x - lr((m_0 + dots.h.c + m_0)) in H$

    若$r > 0$，则$r in H^(+)$，但这与$m_0$的最小性矛盾。故只有$r = 0$，即$x = q m_0$，即$m_0 \| x lr((forall x in H))$。

    即$H = m_0 bb(Z) = < m_0 >$

  + 容易验证：若$d \| n$，有$< d^(‾) > lt.eq lr((bb(Z) \/ n bb(Z) , +))$，$< d^(‾) > tilde.equiv lr((bb(Z) \/ n / d bb(Z) , +))$。

    反之，设$H lt.eq lr((bb(Z) \/ n bb(Z) , +))$，令$tilde(H) = { k \| k^(‾) in H \\ { 0^(‾) } 1 lt.eq k lt.eq n - 1 } subset.eq bb(Z)^(+)$

    则由良序性知，$tilde(H)$中存在最小元，记作d。$forall x in tilde(H)$，有$x = q d + r lr((0 lt.eq r < d)) arrow.r.double.long r^(‾) = x^(‾) - q d^(‾) in H$

    若$r eq.not 0$，则$r in tilde(H)$，但这与d的最小性矛盾矛盾。故只有$r^(‾) = 0^(‾) arrow.r.double.long r = 0 arrow.r.double.long tilde(H) = { k d
      |0 < k < n \/ d } arrow.r.double.long H = { k^(‾) d^(‾)| k = 0,
      1, 2 dots.h.c }$

    下证$d \| n$。设$lr((n , d)) = t$，则$u n + v d = t lr((exists u , v))$。$v^(‾) d^(‾) = t^(‾) in H$。由$0 < t lt.eq d$，$t in tilde(H)$。由d的最小性知$t = d$，即$d \| n$。

    故有$H = { 0^(‾) , d^(‾) , overline(2 d) , dots.h.c , overline(lr((n / d - 1)) d) } = < d^(‾) > tilde.equiv lr((bb(Z) \/ n / d bb(Z) , +))$
]

#example()[
  决定$D_n$的所有子群$D_n = angle.l rho , pi | o lr((rho)) = n , o lr((pi)) = 2 , rho pi = pi rho^(- 1) angle.r = { rho^i pi^j | 0 lt.eq i lt.eq n - 1 , 0 lt.eq j lt.eq 1 }$
]

#proof()[

  $\# D_n = 2 n$

  + $< rho > tilde.equiv C_n lt.eq D_n$以及$< rho >$的所有子群$< rho^d > lr((forall d \| n))$

  + $< pi > tilde.equiv C_2 lt.eq D_n , < rho^k pi > tilde.equiv C_2 lt.eq D_n lr((0 lt.eq k lt.eq n - 1))$

  + $< rho^k , rho^l pi > = { rho^(i k) , rho^(i k) lr((rho^l pi)) = rho^(i k + l) pi , lr((rho^l pi)) rho^(i k) = rho^(- i k + l) pi , rho^0 = e } tilde.equiv D_(n / k)$ 只须$k \| n , 0 lt.eq l < k$
]

#remark()[
  $D_n$的子群数量为$sum_(k \| n) k^0 + sum_(k \| n) k$
]

== 置换群与变换群

最简单的非交换群

#definition()[
  非空集合$Omega$上所有可逆变换全体构成的群及其子群称为$Omega$的#strong[变换群]。有限集上的变换群及其子群称为#strong[置换群]（或#strong[对称群]），记为$S_n$，其中$n = lr(|Omega|)$。
]

设$sigma in S_n , sigma = mat(delim: "(", 1, 2, dots.h.c, n; i_1, i_2, dots.h.c, i_n) , \# S_n = n !$

一类特殊的置换，称为#strong[轮换]

#definition("轮换")[

  $sigma in S_n$满足

  + $sigma lr((i_1)) = i_2 , sigma lr((i_2)) = i_3 , dots.h.c , sigma lr((i_l)) = i_1$

  + $forall i in { 1 , 2 , dots.h.c n } \\ { i_1 , i_2 , dots.h.c , i_l }$，有$sigma lr((i)) = i$

  则称$sigma$是一个长度为$l$的#strong[轮换]或#strong[循环(cycle)]，记作$lr((i_1 i_2 dots.h i_l))$。特别，长度为2的轮换称为#strong[对换(transposition)]
]

#property()[

  + 长度为$l$的轮换$sigma$，有$o lr((sigma)) = l$

  + 轮换可从圈上任一元开始，表法不唯一。一般从最小元开始， \
    如$lr((7325)) arrow.r lr((2573))$

  + 乘积就近原则，如 $ lr((1345)) lr((25)) mat(delim: "[", 1;2;3;4;5) $ $lr((25))$先作用

  + 同一轮换中无重复元（反证：这与可逆变换矛盾）

  + 若两个轮换不相交（无公共元）则乘积可交换
]

#theorem()[

  $forall sigma in S_n$，有

  + $sigma$ 可分解为不相交的轮换之积，且分解唯一（#strong[标准轮换分解]）

  + 若$sigma$的标准轮换分解为$sigma = r_1 r_2 dots.h.c r_s$则 \
    $o lr((sigma)) = l c m lr((o lr((r_1)) , o lr((r_2)) , dots.h.c , o lr((r_s))))$
]

#corollary()[
  $S_n$中$1^(lambda_1) 2^(lambda_2) dots.h.c n^(lambda_n)$型（指$sigma$的标准轮换分解中含$lambda_i$个长度为i的轮换）的置换个数为$frac(
    n !, 1^(lambda_1) 2^(lambda_2) dots.h.c n^(lambda_n) lambda_1 ! lambda_2 ! dots.h.c lambda_n !,
  )$ \
  其中$sum_(i = 1)^n i lambda_i = n , sum_(i = 1)^n lambda_i$为标准分解中轮换的个数
]

#theorem()[
  $forall sigma in S_n , sigma$可分解为对换的乘积，即$sigma = pi_1 pi_2 dots.h.c pi_s$（$pi_i$为对换），且分解式中对换个数s的奇偶性由$sigma$决定，与分解的形式无关。（不一定不相交，不一定唯一）
]

#proof()[

  存在性：只须证轮换可分解为对换乘积即可

  两种常见分解方法$i_1 dots.h.c i_l = cases(
    delim: "{",
    lr((i_1 i_2)) lr((i_2 i_3)) dots.h.c lr((i_(l - 1) i_l)) & upright("接龙法"),
    lr((i_1 i_l)) lr((i_1 i_(l - 1))) dots.h.c lr((i_1 i_2)) & upright("牵头法（逆向）"),

  )$

  下证$S$的奇偶性唯一：由上述两种常见分解可知均把$l$-轮换分解为$l - 1$个对换之积， \
  则可令$N lr((r_i)) = l_i - 1$（其中$r_i$为$l_i$-轮换），若$sigma = r_1 dots.h.c r_k$为标准分解 \
  则$N lr((sigma)) = sum_(i = 1)^k lr((l_i - 1)) = sum_(i = 1)^k l_i - k = n - k$

  $forall a , b in { 1 , dots.h.c , n }$ 当 ab在$sigma$中的不同轮换中时，考虑 $ lr((a b)) sigma & = lr((a b)) lr((b b_2 dots.h.c b_(l_2))) lr((a a_2 dots.h.c a_(l_1)))\
                  & = lr((a b b_2 dots.h.c b_(l_2))) lr((a a_2 dots.h.c a_(l_1)))\
                  & = lr((b b_2 dots.h.c b_(l_2) a a_2 dots.h.c a_(l_1))) $ $N lr((lr((a b)) sigma)) = n - lr((k - 1)) = N lr((sigma)) + 1$

  当 ab在同一轮换$sigma$中时，考虑 $ lr((a b)) sigma & = lr((a b)) lr((a a_2 dots.h.c a_(g_1) b b_2 dots.h.c b_(g_2)))\
                  & = lr((a a_2 dots.h.c a_(g_1))) lr((b b_2 dots.h.c b_(g_2))) $ $N lr((lr((a b)) sigma)) = n - lr((k + 1)) = N lr((sigma)) - 1$

  设$sigma = pi_1 dots.h.c pi_s$为任一对换分解，则

  + $sigma^(- 1) sigma = lr((pi_1 dots.h.c pi_s))^(- 1) sigma = pi_s^(- 1) dots.h.c pi_1^(- 1) sigma = pi_s dots.h.c pi_1 sigma$ \
    $o = N lr((lr((1)))) = N lr((pi_s dots.h.c pi_1 sigma)) equiv N lr((sigma)) + s mod med 2$ \
    $S equiv N lr((sigma)) mod med 2$
]

#definition()[
  若$sigma$可表为奇(偶)数个对换之积，则称$sigma$为#strong[奇(偶)置换]。其中$S_n$中全体偶置换构成的集合称为#strong[交错群]，记为$A_n$，并有$A_n lt.eq S_n$
]

进一步，$\# A_n = frac(n !, 2)$

#proof("证明思路")[
  作映射$f : A_n arrow.r { upright("奇置换") } , f lr((sigma)) = lr((12)) sigma$，验证$f$单满即可
]

#corollary()[
  $S_n = angle.l lr((12)) , lr((13)) , dots.h.c lr((1 n)) angle.r = angle.l lr((12)) , lr((123 dots.h.c n)) angle.r lr((n gt.eq 2))$

  $A_n = angle.l lr((123)) , lr((124)) , dots.h.c lr((12 n)) angle.r lr((n gt.eq 3))$
]

#theorem("Cayley 定理")[
  任一群$G$必同构于某个集合上的变换群。任一$G$有限群，若$lr(|G|) = n$，则必有$G tilde.equiv G prime lt.eq S_n$
]

#remark()[
  某个集合：$G prime = { sigma_a \| a in G }$，其中$sigma_a : G arrow.r G , g arrow.r.bar a g$ 左乘变换，变换群
]

#proof()[

  要证$G tilde.equiv G prime$

  + 验证$G prime$构成群（以映射的复合为运算） \
    $sigma_a circle.stroked.tiny sigma_b lr((g)) = sigma_a lr((sigma_b lr((g)))) = a b g = sigma_(a b) lr((g))$ \
    封 结 幺元 $sigma_e$ 逆元 $sigma_(a^(- 1))$

  + 构造群之间的映射 $f : G arrow.r G prime , f lr((a)) = sigma_a$，验证$f$单、满、保运算(由1得)

  + 当$lr(|G|) = n = lr(|G prime|)$时，验证$G prime lt.eq S_n$，不妨设 $G = { a_1 , dots.h.c a_n }$ \
    $sigma_a lr((a_i)) = a a_i , sigma_a lr((G)) = {a a_1 , a a_2 , dots.h.c a a_n} = a G subset.eq G$ \
    $forall a_i in G$，有$a_i = a lr((a^(- 1) a_i)) in a G arrow.r.double G subset.eq a G$ \
    故$G = a G$ \
    $sigma_a = mat(delim: "(", a_1, dots.h.c, a_n;a_(i_1), dots.h.c, a_(i_n))$ 视为 $mat(delim: "(", 1, 2, dots.h.c, n;i_1, i_2, dots.h.c, i_n)$ 可视为对下标的n阶置换$in S_n$
]

#example()[

  $K_4 = {e , a , b , c} = angle.l a , b angle.r = angle.l a , c angle.r = angle.l b , c angle.r$

  由Cayley定理，$K_4 tilde.equiv K_4 prime = { sigma_g \| g in K_4 } lt.eq S_4$

  - $e arrow.r sigma_e = mat(delim: "(", e, a, b, c;e, a, b, c) arrow.r lr((1))$

  - $a arrow.r sigma_a = mat(delim: "(", e, a, b, c;a, e, c, b) arrow.r lr((12)) lr((34))$

  - $b arrow.r sigma_b = mat(delim: "(", e, a, b, c;b, c, e, a) arrow.r lr((13)) lr((24))$

  - $c arrow.r sigma_c = mat(delim: "(", e, a, b, c;c, b, a, e) arrow.r lr((14)) lr((23))$

  $K_4 prime = {lr((1)) , lr((12)) lr((34)) , lr((13)) lr((24)) , lr((14)) lr((23))} lt.eq A_4 lt.eq S_4$
]

== 陪集与 Lagrange 定理

从一个特定的子群出发，讨论其对于大群内部产生的划分效果

#definition()[

  设G为群，$H lt.eq G , forall a in G$

  $a H = { a h \| h in H }$称为关于$H$的一个#strong[左陪集（left coset）]

  $H a = { h a \| h in H }$称为关于$H$的一个#strong[右陪集（right coset）]
]

#remark()[
  当G为交换群时，左右陪集相等 $a H = H a$
]

#example()[
  $G = lr((bb(Z) , +)) , H = m bb(Z)$ 故$H$的左右陪集为 $a + H = { a + k m \| k in bb(Z) } = a^(‾) in bb(Z) \/ m bb(Z)$。共有m个不同的陪集
]

#example()[

  $G = S_3 , H = angle.l lr((12)) angle.r = {lr((1)) , lr((12))}$

  $H$的左陪集为 $ lr((1)) H  & = lr((12)) H = { lr((1)) , lr((12)) }\
  lr((13)) H & = lr((123)) H { lr((13)) , lr((123)) }\
  lr((23)) H & = lr((132)) H = { lr((23)) , lr((132)) } $

  右陪集类似
]

#property()[

  - $a H = H arrow.l.r.double a in H$

  #proof()[

    - $a H = H arrow.r.double forall h in H , exists h_1 in H med s . t . med a h = h_1 arrow.r.double a = h_1 h^(- 1) in H$

      - $a in H arrow.r.double a H subset.eq H , a^(- 1) in H arrow.r.double a^(- 1) H subset.eq H arrow.r.double H subset.eq a H$
  ]

  - (人人平等) $b in a H arrow.l.r.double b H = a H$

  #proof()[

    - $b in a H arrow.r.double b = a h arrow.r.double b H = lr((a h)) H = a H$

      - $b H = a H arrow.r.double a h = b h_1 lr((forall h , exists h_1)) arrow.r.double b = a h h_1^(- 1) in a H$
  ]

  - (陪集相等判则) $a H = b H arrow.l.r.double a^(- 1) b in H lr((H a = H b arrow.l.r.double a b^(- 1) in H))$

    对比子群的四合一判则 $nothing eq.not H lt.eq arrow.l.r.double a b^(- 1) in H lr((forall a , b in H))$

  - (不重不漏) $forall a , b in G$，有$a H = b H$或$a H sect.big b H = nothing$

  #proof()[

    若$a H eq.not b H$且$a H sect.big b H eq.not nothing$，则$a^(- 1) b in.not H$且$exists x = a h_1 = b h_2 arrow.r.double h_1 h_2^(- 1) = a^(- 1) b in H$，矛盾
  ]

  - 陪集划分给出一种等价关系，记$tilde.op_L : a tilde.op_L b$表示$a H = b H$和$tilde.op_R : a tilde.op_R b$表示$H a = H b$

    等价关系 $arrow.r.double$ 等价类（陪集） $arrow.r.double$ 商集 ${ a H \| a in G }$ $arrow.r.double$ 划分 $G = union.sq.big_(a in G) a H = union.sq.big_(a in G) H a arrow.r.double lr(|G|) = sum_(a in G) lr(|a H|) = k lr(|H|) = lr(|H|) lr(|lr((G \/ H))_L|) = lr(|H|) lr(|lr((G \/ H))_R|) eq.delta lr(|H|) lr([G : H])$

  - H与aH之间（Ha之间）存在双射，特别当H有限时，有$lr(|H|) = lr(|a H|) = lr(|H a|) lr((forall a in G))$
]

#definition()[
  设$H lt.eq G$，H的左右陪集的个数称为关于H的#strong[指数]，记为$lr([G : H])$
]

#theorem()[
  设$H lt.eq G$，H的全体左右陪集分别记为$lr((G \/ H))_L , lr((G \/ H))_R$，则存在两者间的双射
]

#theorem("Lagrange 定理")[
  设$lr(|G|) < oo$，$H lt.eq G$，则$lr(|G|) = lr(|H|) lr([G : H])$
]

#corollary()[

  - $lr(|G|) < oo , H lt.eq G arrow.r.double lr(|H|) lr(||) G lr(|, lr([G : H])|) lr([G])$

  - $lr(|G|) < oo , forall a in G arrow.r.double o lr((a)) lr(||) G \| , a^(lr(|G|)) = e$

  - 若$lr(|G|) = p$为素数，则G为p阶循环群

  #proof()[
    $forall a in G , o lr((a)) = 1 upright("或") p arrow.r.double a eq.not e , o lr((a)) = p arrow.r.double angle.l a angle.r lt.eq G , lr(|angle.l a angle.r|) = lr(|G|) arrow.r.double angle.l a angle.r = G$
  ]
]

#example()[
  确定所有的4阶群

  $lr(|G|) = 4$，则G中只能有1、2、4阶元（1阶元即e）

  若G中有4阶元，$a arrow.r.double angle.l a angle.r = G = C_4$

  若G中无4阶元，除幺元外皆2阶元，即$G = K_4 tilde.equiv C_2 times C_2$

  $arrow.r.double$ 4阶群必交换

  $arrow.r.double$ 2、3、4、5阶群均为交换群，$S_3$为最小的非交换群（6阶）
]

#example()[
  #theorem("Euler 定理")[
    设 $lr((a , m)) = 1$，则$a^(phi lr((m))) equiv 1 med ( mod med m \)$
  ]

  #proof()[

    $lr((a , m)) = 1 arrow.l.r.double a^(‾) in lr((bb(Z) \/ m bb(Z)))^(\*)$

    $lr(|lr((bb(Z) \/ m bb(Z)))^(\*)|) = phi lr((m))$，由Larange定理的推论，$a^(‾)^(phi lr((m))) = 1^(‾)$
  ]
]

#example()[
  #theorem("Wilson 定理")[
    设p为素数，则$lr((p - 1)) ! equiv - 1 med ( mod med p )$
  ]

  #proof()[

    当p\=2时，显然

    当p\>2时，$p$为奇素数，在$lr((lr((bb(Z) \/ p bb(Z)))^(\*) , dot.op))$中${ 1^(‾) , 2^(‾) , dots.h.c , overline(p - 1) }$每个元均有逆元，即$exists a^(‾)^(- 1) upright(" s.t. ") a^(‾) a^(‾)^(- 1) = 1^(‾)$。

    若$a^(‾) = a^(‾)^(- 1) arrow.l.r.double a^(‾)^2 = 1^(‾) arrow.r.double p \| lr((a - 1)) lr((a + 1)) lr((1 lt.eq a lt.eq p - 1)) arrow.r.double a = 1$或$p - 1 arrow.r.double a^(‾) = overline(plus.minus 1)$

    除$lr((overline(plus.minus 1)))$以外，$a^(‾)$与$a^(‾)^(- 1)$均成对出现，故$overline(p - 1) ! = 1^(‾) lr((overline(- 1))) 1^(‾)^(frac(p - 3, 2)) = overline(- 1)$
  ]
]

#theorem()[
  设G为群，A、B为G中的有限子群，则有 $ lr(|A B|) = frac(lr(|A|) lr(|B|), lr(|A sect B|)) $
]

#proof()[

  $A , B lt.eq G arrow.r.double A sect B lt.eq G$，但AB不一定是子群

  转化为用陪集表示$A B = union.big_(a in A) a B = union.big_(b in B) A b arrow.r.double lr(|A B|) = lr(|B|) dot.op \# { a B \| a in A }$

  令$S_1 = { a B \| a in A }$关键讨论何时有$a_1 B = a_2 B$

  $a_1 B = a_2 B arrow.l.r.double a_1^(- 1) a_2 in B arrow.l.r.double a_1^(- 1) a_2 in A sect B arrow.l.r.double a_1 lr((A sect B)) = a_2 lr((A sect B)) lr((\*))$

  令$S_2 = { a lr((A sect B)) \| a in A }$，由$A sect B lt.eq A$，则$S_2 = lr((A \/ A sect B))_L arrow.r.double lr(|S_2|) = lr([A : lr((A sect B))]) = frac(lr(|A|) lr(|B|), lr(|A sect B|))$

  故只须证明$lr(|S_1|) = lr(|S_2|)$，作对应$f : S_1 arrow.r S_2 a B arrow.r.bar a lr((A sect B))$，由$lr((\*))$知$f$为映射，且为单射

  又$f$显然满射，故为双射，即$lr(|S_1|) = lr(|S_2|) arrow.r.double lr(|A B|) = lr(|B|) lr(|S_1|) = lr(|B|) lr(|S_2|) = lr(|B|) lr(|A|) \/ lr(|A sect B|)$
]

== 正规子群与商群

考虑$lr((G \/ H))_L$商集$= { a H \| a in G } , \# lr((G \/ H))_L = lr([G : H])$

当$G = lr((bb(Z) , +)) , H = m bb(Z)$时，$lr((G \/ H)) = lr((bb(Z) \/ m bb(Z) , +)) a^(‾) + b^(‾) eq.delta overline(a + b)$

一般的，是否可在左陪集之间引入运算 $lr((a H)) lr((b H)) = lr((a b)) H$?

当$b H = H b lr((forall b in G))$时，上式成立

#definition()[
  设G为群，$H lt.eq G$，若$forall g in G$，有$g H = H g$，则称H为G的一个#strong[正规子群(normal subgroup)]，记为$H lt.tri.eq G$
]

特别，$H lt.tri G$表示$H < G$且正规，即H为G的正规真子群

#corollary()[

  - 平凡子群均为正规子群

  - 当G交换时，任何子群均正规

  - 若G中不存在非平凡的正规子群，则称G为单群
]

#example()[
  指数为2的子群必正规

  #proof()[

    设$H lt.eq G$且$lr([G : H]) = 2$，取$forall a in G \\ H$，故$a H eq.not H$，则$H union a H = G$

    但$H sect a H = nothing$。同理$H union H a = G$，且$H sect H a eq.not nothing$

    综上$a H = G \\ H = H a arrow.r.double H lt.tri.eq G$
  ]
]

由上例可知，$A_n lt.tri.eq S_n , angle.l p angle.r = C_n lt.tri.eq D_n = angle.l rho pi angle.r$

#theorem("正规子群判则")[

  设G为群，$H lt.eq G$，则下述命题等价

  + $H lt.tri.eq G$

  + $forall g in G , forall h in H , g h g^(- 1) in H$

  + $forall g in G , g H g^(- 1) subset.eq H$

  + $forall g in G , g H g^(- 1) = H$
]

#proof()[

  / 1 #sym.arrow.r 2: $forall g in G , forall h in H$，由$g H = H g$，$exists h_1 in H med s . t . med g h = h_1 g arrow.r.double g h g^(- 1) = h_1 in H$

  / 2 #sym.arrow.r 3: 由h的任意性，知成立

  / 3 #sym.arrow.r 4: 在3中，用$g^(- 1)$替换$g$，得$g^(- 1) H g subset.eq H arrow.r.double H subset.eq g H g^(- 1) arrow.r.double g H g^(- 1) = H$

  / 4 #sym.arrow.r 1: $g H g^(- 1) = H arrow.r.double g H = H g arrow.r.double H lt.tri.eq G$
]

#example()[
  设$K_4 = { lr((1)) , lr((12)) lr((34)) , lr((13)) lr((24)) , lr((14)) lr((23)) }$，证明$K_4 lt.tri.eq S_4$

  #proof()[
    易验证$K_4$是$S_4$的一个子群

    下用判则$forall sigma in S_4 , forall tau in K_4$（不妨设$tau = lr((12)) lr((34))$）

    $sigma tau sigma^(- 1) = sigma lr((12)) lr((34)) sigma^(- 1) = lr((sigma lr((12)) sigma^(- 1))) lr((sigma lr((34)) sigma^(- 1))) = lr((sigma lr((1)) sigma lr((2)))) lr((sigma lr((3)) sigma lr((4))))$

    由于所有$2^2$型置换和$1^4$型置换均在$K_4$中，故$sigma tau sigma^(- 1) in K_4 arrow.r.double K_4 lt.tri.eq S_4$。
  ]
]

一般的，由$sigma lr((a_1 dots.h.c a_l)) sigma^(- 1) = lr((sigma lr((a_1)) dots.h.c sigma lr((a_l))))$

#theorem("正规子群运算律")[

  + $A lt.tri.eq G , B lt.tri.eq G arrow.r.double A sect B lt.tri.eq G , A B lt.tri.eq G$

  + $A lt.tri.eq G , B lt.eq G arrow.r.double A sect B lt.tri.eq B , A B lt.eq G$

  + $A lt.tri.eq G , B lt.tri.eq G , A sect B = {e} arrow.r.double a b = b a lr((forall a in A , forall b in B))$
]

#proof()[

  + $forall g in G , forall c in A sect B$，有$g c g^(- 1) in A , g c g^(- 1) in B arrow.r.double g c g^(- 1) in A sect B arrow.r.double A sect B lt.tri.eq G$

    对$A B$，因$A lt.tri.eq G$，有$b A = A b lr((forall b in B)) arrow.r.double b A subset.eq A B$，由b的任意性知，$B A subset.eq A B$。同理可证$A B subset.eq B A arrow.r.double A B = B A arrow.l.r.double A B lt.eq G$

    $forall g in G , forall a b in A B$，有$g lr((a b)) g^(- 1) = g a g^(- 1) g b g^(- 1) in A B arrow.r.double A B lt.tri.eq G$

  + 习题

  + $forall a in A , forall b in B , a b a^(- 1) b^(- 1) = lr((a b a^(- 1))) b^(- 1) = b_1 b^(- 1) in B$

    同理，$a b a^(- 1) b^(- 1) = a lr((b a^(- 1) b^(- 1))) = a a_1 in A$

    由$A sect B = { e }$知$a b a^(- 1) b^(- 1) = e arrow.r.double a b = b a$
]

#remark()[

  $a b a^(- 1) b^(- 1)$记作$lr([a , b])$，称为$a$与$b$的#strong[换位子]

  ${ angle.l a b a^(- 1) b^(- 1) angle.r \| a , b in G } lt.tri.eq G$，称为#strong[换位子群]
]

#definition()[

  设$H lt.tri.eq G , lr((G \/ H)) = { a H |a in G } eq.delta { a^(‾)| a in G }$

  定义 $lr((a H)) dot.op lr((b H)) eq.delta lr((a b)) dot.op H$，即$a^(‾) dot.op b^(‾) eq.delta overline(a b)$

  诱导运算
]

#definition()[

  设G是群，$H lt.tri.eq G$，则$G \/ H$ 在子集乘法的运算下构成群，称为G关于H的#strong[商群]，且$lr(|G \/ H|) = lr([G : H]) = lr(|G|) \/ lr(|H|) lr((lr(|G|) < oo))$

  - $lr((a H)) lr((b H)) = lr((a b)) H in G \/ H$

  - 可由原群中的结合律诱导而来（继承）

  - $e^(‾) = e H = H , H lr((a H)) = lr((e a)) H = a H , lr((a H)) H = lr((a e)) H = a H$

  - $a^(‾)^(- 1) = overline(a^(- 1)) = lr((a^(- 1))) H$

  二元运算的唯一性：确保运算与代表元选取无关

  $a H = a_1 H , b H = b_1 H arrow.l.r.double a^(- 1) a_1 in H , b^(- 1) b_1 in H$

  考虑$lr((a b))^(- 1) lr((a_1 b_1)) = b^(- 1) a^(- 1) a_1 b_1 = b^(- 1) h b_1 = b^(- 1) b_1 h_1 = h_2 h_1 in H$

  故$lr((a b)) H = lr((a_1 b_1)) H$，唯一性验证
]

商群是对原群的降阶，保结构（部分），化简（模者抹也）

#theorem()[
  设$G$为有限交换群，$p$素数，$p lr(||) G \|$，则$G$中必有$p$阶元
]

#proof()[

  当$lr(|G|) = p$时，有$G tilde.equiv C_p = angle.l a angle.r , o lr((a)) = p$

  假设结论对$lr(|G|) < n$且$p lr(||) G \|$均成立，考虑$lr(|G|) = n$且$p lr(||) G \|$的情形：

  取$e eq.not a in G$，若$p \| o lr((a)) = k$，则$a^(k \/ p)$就是$G$中的$p$阶元

  若$p divides.not o lr((a))$，令$H = angle.l a angle.r$，则$p divides.not lr(|H|)$，由$G$交换知$H lt.tri.eq G$。考虑$G \/ H$，有$p divides lr(|G \/ H|) = lr(|G|) \/ lr(|H|)$且$lr(|G \/ H|) < n$，由归纳假设知$G \/ H$中有$p$阶元。

  设$b^(‾) = b H$，即$b^(‾)^p = e^(‾) arrow.l.r.double lr((b H))^p = b^p H = e H = H arrow.l.r.double b^p in H$

  $lr((b^p))^(o lr((a))) = b^(p lr(|H|)) = lr((b^(lr(|H|))))^p = e$，从而$b^(lr(|H|)) = b^(o lr((a)))$就是$G$中的$p$阶元

  $b^(lr(|H|)) eq.not e$否则$b^(lr(|H|)) = e arrow.r.double b^(‾)^(lr(|H|)) = e^(‾) arrow.r.double p lr(||) H \|$矛盾
]

== 共轭元和共轭子群

#definition()[
  群$G$的#strong[中心(center)]定义为$C lr((G)) = { x in G \| x g = g x , forall g in G }$，简记为$C$
]

#property()[

  + $e in C lr((G)) arrow.r.double C lr((G)) eq.not nothing$

  + $forall a , b in C lr((G))$，由$a g = g a lr((forall g)) arrow.r.double g a^(- 1) = a^(- 1) g lr((forall g)) arrow.r.double a^(- 1) in C lr((G))$

    $lr((a b)) g = a g b = g lr((a b)) arrow.r.double a b in C lr((G))$

    四合二$arrow.r.double C lr((G)) lt.eq G$

  + $forall a in C lr((G)) , forall g in G , g a g^(- 1) = a g g^(- 1) = a in C lr((G)) arrow.r.double C lr((G)) lt.tri.eq G$
]

#definition()[

  对$a in G$，$a$在$G$中的#strong[中心化子]为$C_G lr((a)) = { x in G \| x a = a x }$，简记为$C lr((a))$

  对$A subset.eq G$，$A$在$G$中的#strong[中心化子]为$C_G lr((A)) = { x in G \| x a = a x , forall a in A }$，简记为$C lr((A))$
]

#property()[

  + $C_G lr((a)) sect C_G lr((b)) = C_G lr(({ a , b }))$

  + $angle.l a angle.r subset.eq C_G lr((a)) arrow.r.double angle.l a angle.r lt.eq C_G lr((A))$

  + ${e} lt.eq C lr((G)) lt.eq C_G lr((a)) lt.eq C_G lr((a)) lt.eq G lr((forall a in A subset.eq G))$

  #proof()[

    只须证$C_G lr((A)) lt.eq G , forall x , y in C_G lr((A))$有$x a = a x , y a = a y lr((forall a in A))$

    $arrow.r.double a^(- 1) x = x a^(- 1) lr((forall a)) arrow.r.double x^(- 1) in C_G lr((A))$

    $lr((x y)) a = x a y = a lr((x y)) lr((forall a)) arrow.r.double x y in C_G lr((A))$

    $arrow.r.double C_G lr((A)) lt.eq G$
  ]

  + 当$a in C lr((G))$，有$C_G lr((a)) = G$
]

#example()[

  设$G = { mat(delim: "(", a, b;c, d) lr(|a , b , c , d in bb(Z) ,|) a d - b c \| = 1 } = S L_2 lr((bb(Z)))$

  $H = {mat(delim: "(", 1, t;0, 1) \| t in bb(Z)} quad g = mat(delim: "(", 1, 2;0, - 1) in G$

  求$C lr((G)) , C_G lr((H)) , C_G lr((g))$
]

#soultion()[

  设$A = mat(delim: "(", a, b;c, d) in C lr((G))$，则$forall X in G$有$A X = X A$

  取$X = mat(delim: "(", 1, 0;0, - 1)$，则$A X = mat(delim: "(", a, - b;c, - d) = X A = mat(delim: "(", a, b;- c, - d) arrow.r.double b = c = 0$

  取$X = mat(delim: "(", 0, 1;- 1, 0)$，则$A X = mat(delim: "(", 0, a;- d, 0) = X A = mat(delim: "(", 0, d;- a, 0) arrow.r.double a = d$

  $arrow.r.double C lr((G)) = {plus.minus I_2}$

  $mat(delim: "(", a, b;c, d) mat(delim: "(", 1, t;0, 1) = mat(delim: "(", a, a t + b;c, c t + d) = mat(delim: "(", 1, t;0, 1) mat(delim: "(", a, b;c, d) = mat(delim: "(", a + t c, b + t d;c, d)$

  $arrow.r.double c = 0 , a = d , a^2 = 1 arrow.r.double C_G lr((H)) = {
      plus.minus mat(delim: "(", 1, b;0, 1) \| b in bb(Z)
    }$
]

#example()[
  $S_4$中求$a = lr((12))$的中心化子
]

#soultion()[

  $angle.l a angle.r subset.eq C_G lr((a))$且与1，2无关的置换（与a不相交）也含在$C_G lr((a))$

  $arrow.r.double lr((1)) , lr((12)) , lr((34)) in C lr((a)) arrow.r.double lr((12)) lr((34)) in C lr((a))$

  设$sigma in S_4$使$sigma lr((12)) = lr((12)) sigma arrow.r.double sigma lr((12)) sigma^(- 1) = lr((12)) = lr((sigma lr((1)) sigma lr((2))))$

  $arrow.r.double {sigma lr((1)) = 1\
  sigma lr((2)) = 2$或${sigma lr((1)) = 2\
  sigma lr((2)) = 1$

  验证可知满足上式的元只有以上4个，故$C lr((a)) = { lr((1)) , lr((12)) , lr((34)) , lr((12)) lr((34)) }$
]

#definition()[
  设$a , b in G$，若$exists g in G$使$g a g^(- 1) = b$则称$a$与$b$#strong[共轭(conjugate)].
]

#property()[

  + 共轭是一种等价关系

  + 每一个等价类，记作$K_a = { g a g^(- 1) \| g in G }$，称为$a$的共轭类，且有划分$G = union.sq.big_(a in G) K_a$

    取$lr(|G|) = sum_(a in G) lr(|K_a|)$

    当$a in C lr((G))$时，有$K_a = { g a g^(- 1) \| g in G } = { a }$。故可将上述划分修改为$G = C lr((G)) union.sq.big lr((union.sq.big_(a in.not C lr((G))) K_a)) arrow.r.double lr(|G|) = lr(|C|) + sum_(a in.not C) lr(|K_a|)$
]

#theorem()[
  设$lr(|K_A|) < oo$，则$lr(|K_a|) = lr([G : C_G lr((a))])$
]

#proof()[

  考虑$K_a$与$lr((G \/ C_G lr((a))))_L$之间的对应关系：

  $sigma : K_a arrow.r lr((G \/ C_G lr((a))))_L , g a g^(- 1) arrow.r.bar g C lr((a))$

  $g a g^(- 1) = g_1 a g_1^(- 1) arrow.l.r.double g_1^(- 1) g a = a lr((g_1^(- 1) g)) arrow.l.r.double g_1^(- 1) g in C lr((a)) arrow.l.r.double g C lr((a)) = g_1 C lr((a))$

  则$sigma$为映射，且为单射。另一方面，$sigma$显然为满射，故为双射。从而$lr(|K_a|) = lr(|lr((G \/ C lr((a))))_L|)$
]

#theorem("类方程")[
  设$lr(|G|) < oo$，则$lr(|G|) = lr(|C|) + sum_(a in.not C) lr([G : C_G lr((a))])$，其中只对共轭类代表元求和
]

#corollary()[
  设$H lt.eq G$，则$H$正规$arrow.l.r.double K_h subset.eq H lr((forall h in H))$，即$H$恰为若干个共轭类的并
]

#corollary()[
  p-群有非平凡的中心，即若$p$为素数，$lr(|G|) = p^n$，则$lr(|C lr((G))|) > 1$
]

#proof()[
  用类方程分析$lr(|G|) = p^n = lr(|C|) + sum_(a in.not C) lr([G : C lr((a))])$

  由Lagrange定理知$lr(|C|) , lr([G : C lr((a))]) lr(|p^n arrow.r.double p|) lr([G : C lr((a))])$或$lr([G : C lr((a))]) = 1$

  但$lr([G : C lr((a))]) = 1 arrow.l.r.double a in C lr((G))$，从而$forall a in.not C$有$p \| lr([G : C lr((a))])$

  从而有$p lr(||) C \|$，但$e in C$即$lr(|C|) gt.eq 1 arrow.r.double lr(|C|) gt.eq p > 1$
]

#definition()[
  对$H lt.eq G , H_1 = g H g^(- 1)$称为$H$的#strong[共轭子群\(conjugate)]
]

共轭子群类$K_H = { g H g^(- 1) \| g in G }$，令$cal(A) = { H \| H lt.eq G }$，共轭是$d$的一个等价关系，$K_H$为一个等价类

$arrow.r.double cal(A)$有划分，$cal(A) = union.sq.big_(H in cal(A)) K_H arrow.r.double ? lr(|cal(A)|) = sum_(H in cal(A)) lr(|K_H|)$

#definition()[
  对$H lt.eq G$，$G$中所有与$H$可交换的元素构成的集合，即$N_G lr((H)) = { g in G |g H = H g } = { g in G| H = g H g^(- 1) }$称为$H$的#strong[正规化子(normalizer)]，简记为$N lr((H))$
]

#property()[

  + $H lt.tri.eq N lr((H)) lt.eq G$ (满足$H lt.tri.eq H prime lt.eq G$的最大的$H prime$)

  + 当$H lt.tri.eq G$时，有$N lr((H)) = G$；当$H lt.tri.not G$时，$N lr((H)) < G$。特别，当$H lt.tri.eq G$时，有$K_H = { g H g^(- 1) \| g in G } = { H }$，令$cal(N) = { H \| H lt.tri.eq G }$，$cal(A) = cal(N) union.sq lr((union.sq.big_(H in.not cal(N)) K_H)) arrow.r.double lr(|cal(A)|) = lr(|cal(N)|) + sum_(H in.not cal(N)) lr(|K_H|)$
]

#theorem()[
  设$lr(|K_H|) < oo$，则$lr(|K_H|) = lr([G : N_G lr((H))])$
]

#theorem("类方程2")[
  $lr(|cal(A)|) = lr(|cal(N)|) + sum_(H in.not cal(N)) lr([G : N lr((H))])$
]

#example()[
  设$H$是$G$中唯一的n阶子群，则$H lt.tri.eq G$
]

#soultion()[

  $lr(|H|) =^(?) lr(|g H g^(- 1)|) arrow.r.double H = g H g^(- 1) arrow.l.r.double g H = H g arrow.l.r.double H lt.tri.eq G lr((forall g))$

  只须在$H$与$g H g^(- 1)$之间建立双射
]

#theorem()[
  设对称群$S_n$中，$sigma_1$与$sigma_2$共轭$arrow.l.r.double sigma_1$与$sigma_2$的类型相同
]

#proof()[

  $arrow.r.double$ 习题，略

  $arrow.l.double$

  设$sigma_1 = lr((i_1 dots.h.c i_(l_1))) dots.h.c lr((p_1 dots.h.c p_(l_s))) , sigma_2 = lr((j_1 dots.h.c j_(l_1))) dots.h.c lr((q_1 dots.h.c q_(l_s)))$

  寻找$tau in S_n$使得$tau sigma_1 tau^(- 1) = sigma_2$

  只须令$tau = mat(
    delim: "(",
    i_1, dots.h.c, i_(l_1), dots.h.c, p_1, dots.h.c, p_(l_s);j_1, dots.h.c, j_(l_1), dots.h.c, q_1, dots.h.c, q_(l_s),

  )$即可
]

#theorem()[

  设$sigma in A_n$，令$K_sigma$是$A_n$中所有与$sigma$有相同类型的偶置换集合，$C_(S_n) lr((sigma))$为$sigma$在$S_n$内的中心化子，则

  + 当$C_(S_n) lr((sigma))$含有奇置换时，$K_sigma$是$A_n$的一个共轭类

  + 当$C_(S_n) lr((sigma))$不含有奇置换时，$K_sigma$在$A_n$中分裂为两个共轭类$K_sigma prime$与$K_sigma prime.double$

    $K_sigma prime = {tau sigma tau^(- 1) \| tau in S_n , tau upright("为偶置换")}$

    $K_sigma prime.double = {tau sigma tau^(- 1) \| tau in S_n , tau upright("为奇置换")}$
]

#theorem()[
  设$n gt.eq 5$，$A_n$是单群
]