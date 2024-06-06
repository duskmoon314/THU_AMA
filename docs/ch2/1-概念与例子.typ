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

  从上至下，逐渐形成*原群(magma)*、*半群(semigroup)*、*幺半群(monoid)*、*群(group)*、*阿贝尔群/交换群(abelian group)*。
]