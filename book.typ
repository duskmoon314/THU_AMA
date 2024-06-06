
#import "@preview/book:0.2.5": *

#show: book

#book-meta(
  title: "应用近世代数：笔记",
  description: "暮月上清华大学「应用近世代数」课程时记下的笔记",
  authors: ("暮月",),
  language: "zh",
  repository: "https://github.com/duskmoon314/THU_AMA",
  summary: [

    - #chapter("docs/ch1/0-序论与背景知识.typ", section: "1")[序论与背景知识]
      - #chapter("docs/ch1/1-背景.typ", section: "1.1")[背景]
      - #chapter("docs/ch1/2-发展史.typ", section: "1.2")[发展史]
      - #chapter("docs/ch1/3-例题与应用.typ", section: "1.3")[例题与应用]
    - #chapter("docs/ch2/0-群论.typ", section: "2")[群论]
      - #chapter("docs/ch2/1-概念与例子.typ", section: "2.1")[概念与例子]
  ],
)

// re-export page template
#import "/templates/page.typ": project
#let book-page = project

// Other preamble
#import "@preview/ctheorems:1.1.2": *
#let thmrules = thmrules
#let theorem = thmbox("theorem", "定理", fill: rgb("#b3e2cd"))
#let definition = thmbox("definition", "定义", fill: rgb("#fdcdac"))
#let remark = thmplain("remark", "注").with(number: none)