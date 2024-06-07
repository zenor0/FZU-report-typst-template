#import "@local/fzu-report:0.1.0": report-conf, thanks, appendix
#import "@preview/sourcerer:0.2.1": code
#import "@preview/lovelace:0.2.0": *
#import "@preview/gentle-clues:0.8.0": *

#show: doc => report-conf(
  studentID: "xxxxxx",
  author: "xxxxxx",
  school: "xxxxxx",
  major: "xxxxxx",
  advisor: "xxxxxx",
  thesisname: "示例实验报告",
  date: datetime(year: 2024, month: 5, day: 28),
  outlinedepth: 4,
  cnabstract: [你有这么高速运转的机械进入中国，记住我给出的原理，小的时候。就是研发人，就研发这个东西的一个原理是阴间证权管，你知道为什么会有生灵给他运转，先（仙）位。还有、还有专门饲养这个，为什么地下产这种东西，他管着、他是五世同堂旗下子孙。你以为我在给你闹着玩呢，你不、你不、你不警察吗，黄龙江一派全部带蓝牙，黄龙江、我告诉你，在阴间是、是那个化名、化名，我小舅，亲小舅，张学兰的那个、那个嫡子、嫡孙。咋的你跟王守义玩呢，她是我儿子，她都管我叫太祖奶奶。爱因斯节叶赫那拉，我是施瓦辛格。我告诉你，他不听命于杜康。我跟你说句根儿上的事，你不刑警队的吗？他不听命于杜康。为什么，他是韩国人，他属于合、合作方，合伙人，自己有自己的政权，但是你进入亚洲了，这、这块牡丹江号称小联合国，你触犯了军权就可以抓他！但是你们为了什么，你是为了碎银几两啊，还是限制你的数字啊，还是你兵搁不了，你没有主权。你这兵不硬啊，你理论不强，你都说不明白。你人情世故，你为了几个数字导致你的方向啊。因为什么这块有交警队的人，才说这话的，你天天交警队、交警队的，你、你、你干什么工作了你？你这军情我分析的，我控股人。到时候你张口了管我要军费的时候挺牛逼的。没有定向资金你们，你们的资金全是佣金，就是你那水平，你这活你给我干完了，有这个有这笔钱，不干完没有。这就是连我都是的，我的账号运转是完成阴间的事，生灵，你们的生灵怎么的，嫁接我，养的野门子，改变生理，那你上监狱，那问我这话我也不能告诉你啊。
],
  cnkeywords: ("高速运转", "机械"),
  enabstract: [#lorem(100)],
  enkeywords: ("Keywords1", "Keywords2"),
  show-code-language: true,
  show-code-icon: true,
  doc,
)
#show: setup-lovelace


// 自定义枚举和列表的缩进, 默认为 1em
#set enum(indent: 1em)
#set list(indent: 1em)


= 基本功能

本模板提供了一些基本功能，包括：

1. 封面
2. 摘要
3. 目录
4. 正文
5. 代码块
6. 数学公式
7. 交叉引用
8. 图表 & 脚注
9. 信息块
10. 伪代码块
11. 参考文献说明
12. 附录
13. 致谢

= 一级标题

== 二级标题

=== 三级标题

===== 四级标题

====== 五级标题

默认最高层级为五级标题，如果需要更多层级，请修改模板的 `outlinedepth` 参数。


= 图表 & 脚注
但是如果你想要给插入的图片自动编号, 请使用 `figure` 指令，例如：

#figure(
  image("./assets/fzu_logo.svg", width: 100pt), 
  caption: "福州大学校徽"
)<fig1>

这样将图片作为`figure`插入图片就会自动居中，并且带有图片描述。图片描述使用 `caption` 参数指定#footnote[你发现了吗? 上面这一段的首行缩进消失了. 这是 typst在排版CJK字符时的一个问题. 你需要手动的在没有缩进的地方加上 h(2em) 来解决这个问题.]。

你还可以以同样的方式插入表格，例如：

#figure(
  table(
    columns: (auto, auto, auto),
    stroke: none,
    table.hline(),
    table.header([姓名], [年龄], [性别]),
    table.hline(stroke: 0.5pt),
    [张三], [18], [男],
    [李四], [19], [女],
    [王五], [20], [男],
    table.hline(),
  ),
  caption: [三线表示例]
)<fig2>

// #figure(
//   table(
//     header: ["姓名", "年龄", "性别"],
//   ),
//   caption: "学生信息表"
// )

= 代码块

本模板提供了两种样式的代码块。

1. `code` 是一个简单的代码块，例如：

#code(
```python
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
```
)


1. 使用`typst`默认的代码块样式，例如：

```python
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
```

#h(2em)代码块右上角会显示代码块的语言，如果不需要显示语言或不需要显示图表，请你将模板参数中的 `show-code-language` 或 `show-code-icon` 设置为 `false`#footnote[像这段一样! 你的首行缩进就回来了.]。


= 数学公式

数学公式使用`$`包裹，例如：$E=m c^2$. 这是一个行间公式。

如果在`$`与公式之间加上空格，那么公式将会被居中显示, 并且被自动编号：

$ E = m c^2 $
$ E = m c^2 $
$ E = m c^2 $

= 交叉引用
<tag>

你可以使用`<>`来创建标签，然后使用`@`来引用标签。例如：

这是一个小节的引用 @tag, 图片的引用 @fig1, 表格的引用 @fig2。

= 信息块

信息块是一个可以包含任意内容的块。例如：

#info[
  这是一个信息块，可以包含任意内容。
]

#warning(
  title: [标题也是可以自定义的哈]
)[
  这是一个警告块，可以包含任意内容。
]


= 伪代码块


#algorithm(
  caption: [计算GOTO函数的算法],
  pseudocode(
    no-number,
    [*input: * 项目集 I, 文法符号 X],
    no-number, [*output: * 新的项目集 J],
    [function GOTO(I, X):], ind,
    [J ← ∅], ind,
    [*for* each 项目 [A → α•Xβ, a] in I:], ind,
    [newItem ← [A → αX•β, a]], ded,
    [将 newItem 添加到 J], ded,
    ded,
    [计算 CLOSURE(J)], ded,
    [*return* J],
  )
)


= 参考文献说明

参考文献的引用在模板的 `doc` 参数中指定。例如：

== 为了参考文献而加的章节

参考文献需要使用 bib 格式的引用文献表，再在正文中通过 `@labelname` 方式引用。

这里有一段话 @kopka2004guide，引用多个会自动合并 @kopka2004guide @wang2010guide 。

为了生成中英文双语的参考文献表，本模板实验性地引入了 `bilingual-bibliography` 。有关该功能的详细信息，请访问 https://github.com/nju-lug/modern-nju-thesis/issues/3 。如果出现参考文献显示不正常的情况，请前往 https://github.com/csimide/SEU-Typst-Template/issues/1 反馈。

模板提供了 `bilingual-bib` 参数，用于控制是否使用 `bilingual-bibliography`。当 `bilingual-bib` 参数设置为 `true` 时，模板会使用 `bilingual-bibliography` 渲染。

本模板附带的 `gb-t-7714-2015-numeric-seu.csl` 是“修复”部分 bug 的 CSL 文件。该格式和东大格式不完全吻合，但比自带的 `gb7714-2015` 稍微符合一些。

参考文献过后，会自动进入使用 A B C 排序的附录部分。

如果不需要插入参考文献，但是需要进入附录部分，请使用 `#appendix()` ，后续会自动进入附录部分。

#bibliography(
  "ref.bib", // 替换为自己的bib路径
  style: "gb-t-7714-2015-numeric-seu-bachelor.csl"
)

= 这里是附录内容

== 附录测试1

在参考文献之后的章节会自动编为附录。同样，图表等要素在此都会使用 A B C 序号。例如：

$ a^2 + b^2 = c^2 $ <ss1>

#figure(
  [（假装这里是表格内容）],
  caption: [附录中的一个表格],
  kind: table,
)

#thanks[

学位论文正文和附录之后，一般应放置致谢（后记或说明），主要感谢指导老师和对论文工作有直接贡献和帮助的人士和单位。致谢言语应谦虚诚恳，实事求是。字数一般不超过1000个汉字。

“致谢”用三号黑体加粗居中，两字之间空4个半角空格。致谢内容为小四号宋体，1.5倍行距。

若需要渲染致谢，请用 `#thanks[内容]`。
]



