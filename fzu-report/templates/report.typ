#import "../utils/fonts.typ": 字体, 字号
#import "../utils/set-report.typ": set-report
#import "../utils/bilingual-bibliography.typ": appendix
#import "../utils/states.typ": part-state
#import "../utils/thanks.typ": thanks
#import "../utils/packages.typ": *


#import "../pages/cover-report-fn.typ": report-cover-conf
#import "../parts/abstract-report-fn.typ": abstract-conf
#import "../parts/outline-report-fn.typ": outline-conf
#import "../parts/main-body-report-fn.typ": main-body-report-conf

#let report-conf(
  studentID: "10210xxxx",
  author: "zenor0",
  school: "计算机与大数据学院",
  major: "信息安全",
  advisor: "你的老师",
  thesisname: "title",
  date: datetime(year: 2021, month: 9, day: 1),
  enable-header: true,
  header: none,
  cnabstract: none,
  cnkeywords: none,
  enabstract: none,
  enkeywords: none,
  outlinedepth: 3,
  bilingual-bib: true,
  show-code-language: true,
  show-code-icon: true,
  doc,
) = {
  show: set-report.with(bilingual-bib: bilingual-bib)

  // 封面
  report-cover-conf(
    studentID: studentID,
    author: author,
    school: school,
    major: major,
    advisor: advisor,
    thesisname: thesisname,
    date: date,
  )

  // 摘要
  abstract-conf(
    cnabstract: cnabstract,
    cnkeywords: cnkeywords,
    enabstract: enabstract,
    enkeywords: enkeywords
  )

    
  // 目录
  outline-conf(outline-depth: outlinedepth)


  let icon(codepoint) = {
  box(
    inset: (x: 0.2em),
    height: 0.8em,
    baseline: 0.05em,
    image(codepoint)
  )
  h(0.1em)
  }
  
  // 正文
  if header == none {
    header = thesisname
  }
  let my-header = box()[#grid(
    columns: (1fr, 1fr),
    align: (left, right),
    grid(columns: 2, 
    align: horizon+center, 
      gutter: 1em,
      box(image("../assets/logos/fzu-text-zhcn-black.svg", height: 1.1em)),
      box(image("../assets/logos/fzu-text-enus-black.svg", height: 0.7em))
    ),
    box(inset: 2pt)[#header | #studentID #author],
  )]

  show: main-body-report-conf.with(enable-header: enable-header, header: my-header)
  show: setup-lovelace
  show: codly-init.with()
  codly(
    display-name: show-code-language,
    display-icon: show-code-icon,
    zebra-color: rgb("#f7f7f7a0"),
    languages: (
      python: (name: "Python", icon: icon("../assets/icons/python.svg"), color: rgb("#3776AB")),
      c: (name: "C", icon: icon("../assets/icons/c.svg"), color: rgb("#A8B9CC")),
      cpp: (name: "C++", icon: icon("../assets/icons/cplusplus.svg"), color: rgb("#00599C")),
      javascript: (name: "JavaScript", icon: icon("../assets/icons/javascript.svg"), color: rgb("#F7DF1E")),
      typescript: (name: "TypeScript", icon: icon("../assets/icons/typescript.svg"), color: rgb("#3178C6")),
      typst: (name: "Typst", icon: icon("../assets/icons/typst.svg"), color: rgb("#239DAD")),
      go: (name: "Go", icon: icon("../assets/icons/go.svg"), color: rgb("#00ADD8")),
      golang: (name: "Go", icon: icon("../assets/icons/go.svg"), color: rgb("#00ADD8")),
      rust: (name: "Rust", icon: icon("../assets/icons/rust.svg"), color: rgb("#000000")),
      )
  )

  

  doc
}

#show: report-conf.with(
  date: datetime(year: 2021, month: 9, day: 1),
  cnabstract: [你有这么高速运转的机械进入中国，记住我给出的原理，小的时候。就是研发人，就研发这个东西的一个原理是阴间证权管，你知道为什么会有生灵给他运转，先（仙）位。还有、还有专门饲养这个，为什么地下产这种东西，他管着、他是五世同堂旗下子孙。你以为我在给你闹着玩呢，你不、你不、你不警察吗，黄龙江一派全部带蓝牙，黄龙江、我告诉你，在阴间是、是那个化名、化名，我小舅，亲小舅，张学兰的那个、那个嫡子、嫡孙。咋的你跟王守义玩呢，她是我儿子，她都管我叫太祖奶奶。爱因斯节叶赫那拉，我是施瓦辛格。我告诉你，他不听命于杜康。我跟你说句根儿上的事，你不刑警队的吗？他不听命于杜康。为什么，他是韩国人，他属于合、合作方，合伙人，自己有自己的政权，但是你进入亚洲了，这、这块牡丹江号称小联合国，你触犯了军权就可以抓他！但是你们为了什么，你是为了碎银几两啊，还是限制你的数字啊，还是你兵搁不了，你没有主权。你这兵不硬啊，你理论不强，你都说不明白。你人情世故，你为了几个数字导致你的方向啊。因为什么这块有交警队的人，才说这话的，你天天交警队、交警队的，你、你、你干什么工作了你？你这军情我分析的，我控股人。到时候你张口了管我要军费的时候挺牛逼的。没有定向资金你们，你们的资金全是佣金，就是你那水平，你这活你给我干完了，有这个有这笔钱，不干完没有。这就是连我都是的，我的账号运转是完成阴间的事，生灵，你们的生灵怎么的，嫁接我，养的野门子，改变生理，那你上监狱，那问我这话我也不能告诉你啊。
],
  cnkeywords: ("高速运转", "机械"),
  enabstract: [#lorem(100)],
  enkeywords: ("Keywords1", "Keywords2"),
  outlinedepth: 3,
)


```python
from rich import print
print("Hello, World!")
```

```c
#include <stdio.h>
int main() {
    printf("Hello, World!");
    return 0;
}
```

```cpp
#include <iostream>
int main() {
    std::cout << "Hello, World!";
    return 0;
}

```

```rust
fn main() {
    println!("Hello, World!");
}
```

```go
package main
import "fmt"
func main() {
    fmt.Println("Hello, World!")
}

```

```javascript
console.log("Hello, World!");
console.log("Hello, World!");
```

```typescript
console.log("Hello, World!");
console.log("Hello, World!");
```

```typst
print("Hello, World!")
print("Hello, World!")
```

#code(
```python
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
print("Hello, World!")
```
)
