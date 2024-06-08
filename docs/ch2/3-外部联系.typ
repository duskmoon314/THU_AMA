#import "/book.typ": *

#show: thmrules
#show: book-page.with(title: "外部联系")

= 外部联系

== 群同态与群同构

回顾：$angle.l a angle.r tilde.equiv lr((bb(Z) , +))$或$lr((bb(Z) \/ n bb(Z) , +))$，其中同构\=双射+保运算

#definition()[

  设$lr((G , dot.op)) , lr((G prime , circle.stroked.tiny))$为群，若存在映射$f : G arrow.r G prime$使得$forall a , b in G$均有$f lr((a dot.op b)) = f lr((a)) circle.stroked.tiny f lr((b))$，则称$f$是$G$到$G prime$的一个#strong[同态(homomorphism)]

  进一步：

  - 单射(injective) + 同态 = #strong[单同态] or #strong[嵌入(monomorphism)] $G arrow.r.hook^f G prime$

  - 满射(surjective) + 同态 = #strong[满同态] or #strong[映上(epimorphism)] $G arrow.r.twohead^f G prime$

  - 双射(bijective) + 同态 = #strong[同构(isomorphism)] $G arrow.r^tilde_f G'$
]

Imf 像集 $I m f = f lr((G)) = { f lr((g)) \| g in G } subset.eq G prime$，$f$满$arrow.l.r.double f lr((G)) = G prime$

Kerf 核 $K e r f = f^(- 1) lr((e prime)) = { g in G \| f lr((g)) = e prime } subset.eq G$，$K e r f = { e } arrow.l.r.double f$单

#property()[

  设$f : G arrow.r G prime$为群同态，则

  + $f lr((e)) = e prime$（保幺元）$f lr((a^(- 1))) = f lr((a))^(- 1)$（保逆元）$f lr((a^n)) = f lr((a))^n$（保方幂）

    $f lr((e)) = f lr((e^2)) = f lr((e)) f lr((e)) arrow.r.double f lr((e)) = e prime$

    $e prime = f lr((e)) = f lr((a dot.op a^(- 1))) = f lr((a)) f lr((a^(- 1))) arrow.r.double f lr((a^(- 1))) = f lr((a))^(- 1)$ (左逆同理)

  + $H lt.eq G arrow.r.double f lr((H)) lt.eq G prime$（保子群）特别有$I m f = f lr((G)) lt.eq G prime$

    $forall f lr((a)) f lr((b)) in f lr((H))$，其中$a , b in H$，$f lr((a)) f lr((b))^(- 1) = f lr((a b^(- 1))) in f lr((H)) arrow.r.double f lr((H)) lt.eq G$

  + $H lt.tri.eq G arrow.r.double f lr((H)) lt.tri.eq f lr((G))$

    $forall f lr((h)) in f lr((H)) , forall f lr((g)) in f lr((G)) , f lr((g)) f lr((h)) f lr((g))^(- 1) = f lr((g h g^(- 1))) in f lr((H))$

  + $N lt.eq f lr((G)) = I m f arrow.r.double f^(- 1) lr((N)) lt.eq G$（反向局部保子群）

    $forall a , b in f^(- 1) lr((N)) , exists n_1 , n_2 in N$使得$a = f lr((n_1)) , b = f lr((n_2))$

    $f lr((a b^(- 1))) = f lr((a)) f lr((b))^(- 1) = n_1 n_2^(- 1) in N arrow.r.double a b^(- 1) in f^(- 1) lr((N)) arrow.r.double f^(- 1) lr((N)) lt.eq G$

  + $N lt.tri.eq f lr((G)) = I m f arrow.r.double f^(- 1) lr((N)) lt.tri.eq G$（反向局部保正规子群），特别当$N = { e }$时，$f^(- 1) lr((N)) = K e r f lt.tri.eq G$

    $forall a in f^(- 1) lr((N)) , forall g in G$，设$f lr((a)) = n_1 in N$，

    则$f lr((g a g^(- 1))) = f lr((g)) n_1 f lr((g))^(- 1) in N arrow.r.double g a g^(- 1) in f^(- 1) lr((N)) arrow.r.double f^(- 1) lr((N)) lt.tri.eq G$

  + 若$o lr((a)) < oo arrow.r.double o lr((f lr((a)))) \| o lr((a))$（保持阶为因子）

    $f lr((a))^(o lr((a))) = f lr((a^(o lr((a))))) = f lr((e)) = e prime arrow.r.double o lr((f lr((a)))) \| o lr((a))$

  + #theorem()[

      设$K = K e r f$则

      + $forall a prime in I m f$，若$f lr((a)) = a prime$，则$f^(- 1) lr((a prime)) = a K$

      + $f$为单同态$arrow.l.r.double lr(|K|) = 1$
    ]

  #proof()[

    + $forall k in K , f lr((a k)) = f lr((a)) f lr((k)) = a prime e prime = a prime arrow.r.double a k in f^(- 1) lr((a prime))$

      反之，$forall x in f^(- 1) lr((a prime))$

      有$f lr((x)) = a prime = f lr((a)) arrow.r.double f lr((a^(- 1) x)) = f lr((a))^(- 1) f lr((x)) = e prime arrow.r.double a^(- 1) x in K = f^(- 1) lr((e prime)) arrow.r.double x in a K arrow.r.double f^(- 1) lr((a prime)) subset.eq a K$

      综上，$f^(- 1) lr((a prime)) = a K$

      + f单 $arrow.l.r.double forall a prime in f lr((G)) , a prime$的原像唯一$arrow.l.r.double lr(|a K|) = 1 arrow.l.r.double lr(|K|) = 1 arrow.l.r.double K = { e }$
  ]

  + 保陪集
]

#theorem("同态基本定理")[

  设$f : G arrow.r G prime$为群同态，$K = K e r f$，则

  + $G \/ K tilde.equiv f lr((G))$，特别，若$f$为满同态，则$G \/ K tilde.equiv G prime$

  + 设$pi : G arrow.r.twohead G \/ K$为自然同态，$j : f lr((G)) arrow.r.hook G prime$为嵌入同态，则$f$可分解为$f = j circle.stroked.tiny f^(‾) circle.stroked.tiny pi$，其中$f^(‾) : G \/ K arrow.r f lr((G)) , a^(‾) arrow.r.bar f lr((a))$
]

#proof()[

  + 作对应$f^(‾) : G \/ K arrow.r f lr((G)) = I m f , g K arrow.r.bar f lr((g))$

    $g K = g_1 K arrow.l.r.double g^(- 1) g_1 in K arrow.l.r.double f lr((g^(- 1) g_1)) = e prime arrow.l.r.double f lr((g_1)) = f lr((g)) arrow.l.r.double f^(‾) lr((g_1 K)) = f^(‾) lr((g K))$

    故$f^(‾)$为映射，且为单射。另一方面，显然满射。下验证其保运算

    $f^(‾) lr((g_1 K dot.op g_2 K)) = f^(‾) lr((g_1 g_2 K)) = f lr((g_1 g_2)) = f lr((g_1)) f lr((g_2)) = f^(‾) lr((g_1 K)) dot.op f^(‾) lr((g_2 K))$

    故$f^(‾)$为同构

  + $forall g in G , j circle.stroked.tiny f^(‾) circle.stroked.tiny pi lr((g)) = j circle.stroked.tiny f^(‾) lr((g K)) = j lr((f lr((g)))) = f lr((g)) arrow.r.double f = j circle.stroked.tiny f^(‾) circle.stroked.tiny pi$
]

#theorem("子群对应定理")[
  设$f : G arrow.r G prime$为满同态，$K = ker f , S = { H |H lt.eq G , K lt.eq H }, S prime = { N| N lt.eq G prime }$，则$S$与$S prime$之间有一一对应。
]

#proof()[

  作映射$sigma : S arrow.r S prime , H arrow.r.bar f lr((H))$

  验证$sigma$为单射：若$sigma lr((H)) = sigma lr((H_1))$，有$f lr((H)) = f lr((H_1)) arrow.r.double forall h in H , exists h_1 in H_1 , f lr((h)) = f lr((h_1)) arrow.r.double f lr((h_1^(- 1) h)) = e prime arrow.r.double h_1^(- 1) h in K arrow.r.double h in h_1 K subset.eq H_1 arrow.r.double H subset.eq H_1$。同理$H_1 subset.eq H arrow.r.double H = H_1 arrow.r.double sigma$单射

  验证$sigma$满射：$forall N in S prime$，令$H = f^(- 1) lr((N))$，由局部反向保子群知$H lt.eq G$。又$K = f^(- 1) lr((e prime)) subset.eq f^(- 1) lr((N)) = H$，故$H subset.eq S$，且$sigma lr((H)) = f lr((H)) = N$，故$sigma$满射

  综上，$sigma$为单射且满射，故为双射，即为一一对应
]

#theorem("商群同构定理（第一同构定理）")[
  设$f : G arrow.r.twohead G prime$为满同态，$K = ker f , H lt.tri.eq G , K lt.eq H$，则 $ G \/ H tilde.equiv G prime \/ f lr((H)) tilde.equiv frac(G \/ K, H \/ K) $
]

#proof()[

  令$H prime = f lr((H))$，故$H prime lt.tri.eq G prime , G prime \/ H prime = f lr((G)) \/ f lr((H)) = { f lr((g)) H prime \| f lr((g)) in G prime }$

  作映射$sigma : G arrow.r G prime \/ H prime , g arrow.r.bar f lr((g)) H prime$

  验证$sigma$满：由$f$满可证。

  验证$sigma$保运算：$sigma lr((g_1 g_2)) = f lr((g_1 g_2)) H prime = f lr((g_1)) f lr((g_2)) H prime = lr((f lr((g_1)) H prime)) lr((f lr((g_2)) H prime)) = sigma lr((g_1)) sigma lr((g_2))$

  $ker sigma = { g in G | sigma lr((g)) = f lr((g)) H prime = H prime = e prime H } = { g in G| f lr((g)) in H prime = f lr((H)) } = f^(- 1) lr((H prime))$。由$H prime = f lr((H)) , K lt.eq H$与子群对应定理知$ker sigma = H$。

  对$sigma$用同态基本定理有$G \/ ker sigma = G \/ H tilde.equiv G prime \/ H prime = G prime \/ f lr((H))$

  由$f : G arrow.r.twohead G prime$知$G \/ K tilde.equiv G prime$。

  考虑限制映射（只考虑$H$内的元素，其外的不关心）$f \|_H : H arrow.r f lr((H)) = H prime , h arrow.r.bar f lr((h))$，显然为满同态。

  $ker f |_H = {h in H | f lr((h)) = e prime} = {h in H \| h in K} = H sect K = K$

  对$f \|_H$用同态基本定理有$H \/ K tilde.equiv f lr((H)) = H prime$，则有$G prime \/ H prime tilde.equiv frac(G \/ K, H \/ K)$
]

#corollary()[
  设$N lt.tri.eq H , N lt.tri.eq G , H lt.tri.eq G$，则 $ G \/ H tilde.equiv frac(G \/ N, H \/ N) $
]

#theorem("子群乘积同构定理（第二同构定理）")[
  设$N lt.tri.eq G , H lt.eq G$，则$H N \/ N tilde.equiv H \/ lr((H sect N))$
]

#proof()[

  仍用基本定理，作映射$phi : H arrow.r H N \/ N , h arrow.r.bar lr((h n)) N = h N$，显然$phi$为满射。

  验证保运算：$phi lr((h_1 h_2)) = lr((h_1 h_2)) N = lr((h_1 N)) lr((h_2 N)) = phi lr((h_1)) phi lr((h_2)) arrow.r.double phi$为满同态

  $ker phi = {h in H |phi lr((h)) = h N = N} = {h in H| h in N} = H sect N$

  对$phi$用同态基本定理有$H \/ ker phi = H \/ lr((H sect N)) tilde.equiv H N \/ N$
]

#example()[
  证明：$S_4 \/ K_4 tilde.equiv S_3$
]

#proof()[

  $S_3 lt.eq S_4 , K_4 lt.tri.eq S_4 arrow.r.double S_3 K_4 lt.eq S_4$，且$lr(|S_3 K_4|) = frac(lr(|S_3|) lr(|K_4|), lr(|S_3 sect K_4|)) = frac(6 times 4, 1) = 24$，故$S_3 K_4 = S_4 , S_3 sect K_4 = { lr((1)) }$

  由子群乘积同构定理，$S_4 \/ K_4 = S_3 K_4 \/ K_4 tilde.equiv S_3 \/ S_3 sect K_4 = S_3$
]