#import "../utils/packages.typ": fakebold
#import "../utils/fonts.typ": 字体, 字号, chineseunderline, justify-words

#let report-cover-conf(
  studentID: "10210xxxx",
  author: "zenor0",
  school: "计算机与大数据学院",
  major: "信息安全",
  advisor: "你的老师",
  thesisname: "title",
  date: (year: 2021, month: 9, day: 1),
) = page(paper: "a4", margin: (top: 2cm+0.7cm, bottom: 1cm, left: 2cm + 0.5cm, right: 2cm))[

  #set text(lang: "zh")

  #set align(center)
  //#hide[#heading(outlined: false, bookmarked: true)[封面]]

  #image("../assets/logos/fzu_logo.svg", width: 5cm)
  #image("../assets/logos/fzu-text-logo.svg", width: 10cm)
  #v(40pt)
  #block(height: 2cm, {
    text(font: 字体.黑体, size: 40pt, fakebold[实验报告])
  })
  
  #v(20pt)

  #{
    set text(font: 字体.宋体, size: 字号.小二, weight: "regular")
    grid(
      columns: (3.44cm-1em, 1em, 10cm),
      rows: 1.4cm,
      justify-words("实验名称", width: 4em), "：", chineseunderline(thesisname),
      justify-words("学号", width: 4em), "：", chineseunderline(studentID),
      justify-words("姓名", width: 4em), "：", chineseunderline(author),
      justify-words("学院", width: 4em), "：", chineseunderline(school),
      justify-words("专业", width: 4em), "：", chineseunderline(major),
      justify-words("指导教师", width: 4em), "：", chineseunderline(advisor),
      // justify-words("起止日期", width: 4em), "：", chineseunderline(date),
    )
  }
  // #date.display()
  #set text(font: 字体.宋体, size: 字号.小三)
  #date.display("[year]年[month padding:space]月[day padding:space]日")
]

// 测试部分
#report-cover-conf(
  date: datetime(year: 2024, month: 9, day: 1),
)