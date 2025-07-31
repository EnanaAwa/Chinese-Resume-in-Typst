#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-scholar = icon("icons/fa-scholar.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "profile.jpg",
  photograph-width: 10em,
  gutter-width: 2em,
)[
  = 区子锐

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 133-3333-3333",
    ),
    (
      icon: fa-building-columns,
      content: "北京大学计算机学院",
    ),
    (
      icon: fa-graduation-cap,
      content: "计算机系统结构",
    ),
    (
      icon: fa-envelope,
      content: "zirui.ou@pku.edu.cn",
      link: "mailto:zirui.ou@pku.edu.cn",
    ),
    (
      icon: fa-github,
      content: "github.com/EnanaAwa",
      link: "https://github.com/EnanaAwa",
    ),
  )
][
  #h(2em)

  作为北京大学计算机学院的博士研究生，我关注网络与机器学习之间的相互影响。更具体地来说，我关注下面的两个方面：（1）Network for AI: 通过算法-系统的协同设计，提升分布式机器学习系统的可靠性与通讯效率；（2）AI for Network：利用先进的机器学习算法提升网络系统的可靠性与资源利用率。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 18%)[
  #align(center)[
    *北京大学*

    (研究生)
  ]
][
  计算机学院·计算机系统结构·博士研究生#h(2fr)#date[2022.09-至今]

  --导师：黄群助理教授

  --研究方向：计算机网络与分布式系统
]

#sidebar(with-line: true, side-width: 18%)[
  #align(center)[
    *北京大学*

    (本科)
  ]
][
  信息科学技术学院·计算机科学与技术·理学学士#h(2fr)#date[2018.09-2022.06]
  
  -- GPA: 3.68/4

  -- 荣誉奖励：北京大学学习优秀奖
]

== #fa-scholar 科研成果
- *Zirui Ou*, Shujie Han, Qihuan Zeng, Qun Huang (2024, October). FedSSA: Reducing Overhead of Additive Cryptographic Methods in Federated Learning With Sketch. In 2024 IEEE 32nd International Conference on Network Protocols (ICNP) (pp. 1-12). IEEE.

  *第一作者，CCF-B，网络方向会议*

#v(1em)
- Shujie Han, *Zirui Ou*, Qun Huang, Patrick P. C. Lee (2024, December). Scaling Disk Failure Prediction via Multi-Source Stream Mining. In 2024 IEEE International Conference on Data Mining (ICDM) (pp. 131-140). IEEE.

  *第二作者，CCF-B，数据挖掘方向会议*

#v(1em)
- *Zirui Ou*, Qun Huang. An Empirical Study of How Network Measurement Affects Predictive Traffic Engineering. 【在投】

  *第一作者，目标会议: CCF-A，网络方向顶会*




== #fa-award 获奖情况

#item(
  [ *全国大学生编译系统设计大赛* ],
  [ *决赛三等奖* ],
  date[ 2021 年 8 月 ],
)


== #fa-code 项目经历

#item(
  link(
    "https://ieeexplore.ieee.org/abstract/document/10858511",
    [ *隐私保护联邦学习加速* ],
  ),
  [ *实验室项目* ],
  date[ 2022.06 - 2023.09 ],
)

#tech[ Privacy-preserving Federated Learning, Secure Aggregation, Homomorphic Encryption, Sketch]

针对联邦学习中常见的支持可加性隐私保护方法，我设计并实现了一种基于数据草图Sketch的梯度压缩方法，这种方法可以显著减小常见可加性隐私保护方法的通讯开销以及计算开销，从而提高联邦学习训练效率。

- 设计并实现了基于Sketch的原型系统FedSSA
- 针对可加性隐私保护方法的可加性以及要求明文为整数的特性，设计了一种既支持可加性同时支持将压缩后的梯度量化为整数的压缩算法，即QSRHT Sketch
- 针对QSRHT Sketch的总体误差进行了理论分析，得出最佳的参数配置
- 为了保持QSRHT Sketch在训练过程中的无偏性，设计周期性哈希更新策略Periodic Rehashing

#item(
  link(
    "https://github.com/shujiehan/ScaleDFP",
    [ *基于流式处理的磁盘故障预测* ],
  ),
  [ *实验室项目* ],
  date[ 2022.04 - 2024.02 ],
)

#tech[ Java, Streaming Processing]
磁盘故障预测系统基于磁盘的S.M.A.R.T的滑动窗口特征进行故障预测，而现有的流式处理的磁盘故障预测系统在进行训练时，会由于大量负样本传输至训练集群而造成较高的通讯开销。针对上述问题，我们设计了ScaleDFP，ScaleDFP主要通过降采样模块来缓解通讯开销，从而提升系统效率。

- 优化ScaleDFP系统中java部分的性能
- 优化随机降采样模块的性能，在不影响机器学习模块的精度的情况下减小负样本数量，从而减小通讯开销
