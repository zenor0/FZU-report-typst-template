#let thanks(title: "致谢", s) = {
  pagebreak()
  align(center)[
    #box()[
      #heading(bookmarked: true, outlined: true, numbering: none, level: 1, title)
    ]
  ]
  // heading(bookmarked: true, outlined: true, numbering: none, level: 1, title)
  s
}