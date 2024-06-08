# THU_AMA: 应用近世代数笔记

本仓库是我于清华大学应用近世代数课上记录的笔记的简单整理，以 CC-BY 4.0 协议开放。

## 背景

我于 2023 年春季学期在「应用近世代数」课上使用 LaTeX 记录了约 2500 行的笔记，主要包括课上所讲的定理、证明、例题等内容。
2024 年春季，应同学邀请，我将笔记转换为 [Typst](https://typst.app) 格式并基于 [`typst-book`](https://github.com/Myriad-Dreamin/typst-book) 生成 web 页面以供阅读。

笔记内容依赖 Typst 的 web app 进行转换，可能存在大量的细节问题，欢迎提出 issue。

## 阅读

[Github Pages](https://duskmoon314.github.io/THU_AMA/)

## 本地构建

本项目依赖 `typst` 和 `typst-book`，请先安装这两个工具。

```bash
typst-book build
```

也可以使用 typst 构建 PDF 版本：

```bash
typst c ebook.typ
```