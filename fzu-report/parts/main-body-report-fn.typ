#import "../utils/states.typ": part-state
#import "../utils/fonts.typ": 字体, 字号

#let main-body-report-conf(doc, enable-header: false, header: "福州大学课程报告") = {
  set page(
    header: {
        set align(center)
        set text(font: 字体.宋体, size: 字号.小五, lang: "zh")
        set par(first-line-indent: 0pt, leading: 16pt, justify: true)
        show par: set block(spacing: 16pt)

        [#header]
        v(-12pt)
        line(length: 100%, stroke: (thickness: 0.5pt))

        counter(footnote).update(0)
      },
  ) if enable-header
  
  set page(
    numbering: "1",
    header-ascent: 10%,
    footer-descent: 10%
  )

  // indent list
  set enum(indent: 1em)
  set list(indent: 1em)
  show raw.where(block: false): it => box(
  inset: (x:3pt),
  box(
    fill: luma(240), 
    inset: (x: 2pt), 
    outset: (y: 3pt), 
    radius: 3pt
    )[#text(size: 10pt)[#it]])
  show raw: set text(font: 字体.代码, size: 10pt)
  pagebreak(weak: false)
  

  counter(page).update(1)
  counter(heading.where(level: 1)).update(0)

  doc
}