#import "@preview/book:0.2.5": *

#import "/templates/ebook.typ"

#show: ebook.project.with(title: "应用近世代数：笔记", spec: "book.typ")

// set a resolver for inclusion
#ebook.resolve-inclusion(it => include it)
