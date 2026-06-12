<div align="center">

# 女娲 | Nuwa

> 把你的Skill拿到造物工坊，让造物主重新捏塑一遍。

[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-nuwa-blueviolet)](skills/女娲/SKILL.md)
[![skills.sh](https://img.shields.io/badge/skills.sh-待接引-lightgrey)](https://skills.sh)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**把一个"能用的Skill"，塑造成"能被理解、能被接引、能被传播、能被验证、能持续轮回"的公共生灵。**

[接引](#快速开始) · [七个动作](#七个动作) · [触发方式](#触发方式) · [它和同类有什么不同](#它和同类有什么不同) · [安全边界](#安全边界)

</div>

---

## 它解决什么问题

你写了一个Skill，自己用着挺好。然后呢？

- 发到GitHub，没人引——别人看不懂它是干嘛的；
- 显灵书像工程说明书，没有第一屏钩子，没有能截图的产物；
- 你说它"效果不错"，但拿不出一个能复现的证据；
- 想优化，又不知道该先动哪里——改触发词？重写工作流？补showcase？

普通的做法是"帮我润色一下"。女娲的做法是把它当**生灵**请进造物工坊：先判定这块泥值不值得捏，再看天地间同类凭什么立足，三把尺量出骨骼短板，一刀一刀细塑，每刀都要过灵关，最后降生立规矩。

## 它会交付什么

- **一份13节的《造物报告》**：择土结论、同族对标表（全部带URL）、命格判断、评分表、三个塑造方向、可直接替换的改写片段
- **一张可截图的"灵契"**：塑造前后分数、一句话新定位、绝活、下一步
- **沉淀进你仓库的验证资产**：一次性的对比脚本固化成工具，判断标准立成项目明文规矩

## 七个动作

| 动作 | 干什么 | 一句狠话 |
|---|---|---|
| **择土** | 先挑战这个Skill的前提是否成立 | 朽土不塑，不值得就直说 |
| **观世** | 联网找同族，看清天地位格 | 闭门捏土出不了好生灵 |
| **定命** | 纵向追来路去向，横向看行情，交叉定位格 | 不看天地，不知道自己该站哪 |
| **量骨** | 结构、实测、活体三把尺量分 | 绿灯会撒谎，要拉真实产物对账 |
| **细塑** | 冻结定坯，改动过灵关才保留 | 量不过就回泥，绝不为显得干了活而多塑 |
| **绘灵** | 显灵书与Showcase显化于世 | 先让人想要，再告诉怎么引 |
| **轮回** | 降生后留对标观察清单，下轮从反馈进 | 降生不是终点 |

## 快速开始

![nuwa demo](assets/demo.gif)

```bash
npx skills add alice/nuwa-skill -g
```

装完对Agent说：

```text
让女娲看看我这个skill：[你的Skill目录 / GitHub仓库链接 / SKILL.md内容]
```

女娲会先完成择土、观世、定命、量骨，给你三个塑造方向并推荐一个——**在你选方向之前，它不会动你一行字**。

## 触发方式

- "让女娲看看这个skill" / "造物工坊走一趟"
- "升级我的skill" / "塑造我的skill"
- "skill体检" / "skill审计"
- "为什么我的skill没人引"
- "这个skill怎么发布到GitHub/ClawHub"
- "对标一下同类skill"

## 它和同类有什么不同

| | 直接让Agent"帮我改好看点" | **女娲** |
|---|---|---|
| 起点 | 直接改文案 | 先挑战前提：这Skill值得存在吗？ |
| 依据 | 模型的审美 | 同族对标（带URL）+ 三把尺评分（带证据） |
| 改法 | 一次全改，无法归因 | 冻结定坯，单提交单面，过灵关才保留 |
| 验证 | "看起来更好了" | 真实数据回放，给出翻转数字 |
| 结束 | 改完就完 | 验证工具入库、立规矩、留轮回清单 |

## 安全边界

- **强制停手点**：建议重构命格、merge到默认分支、打tag发版、对真实用户可见的部署——每一步都等你明确授权；**你的疑问句（"都好了吧？"）不构成授权**。
- 不把API key、token、cookie、私人路径写进任何公开产物。
- 改动永远以可审计的提交呈现，不用 `git reset --hard` 之类的暴力回滚。

## 文件结构

```text
女娲/
├── skills/女娲/
│   ├── SKILL.md                    # 工作流本体：七个动作、九步流程、女娲戒律与降生验收单
│   └── examples/                   # 实战案例（待补充）
├── references/
│   ├── birth-checklist.md          # 出生证清单：发布前必备件核对
│   └── house-style.md              # 显灵书风格铁律与模板骨架
├── tools/
│   ├── scaffold-skill.sh           # 开料脚本：生成出生即合规的仓库骨架
│   └── check-skill-repo.sh         # 量骨脚本：一键体检仓库就绪度
├── assets/                         # demo GIF 与可复现的录制脚本（vhs tape）
├── .claude-plugin/                 # Claude Code plugin marketplace 清单
├── README.md
└── LICENSE
```

## 验证与测试

装完用这句验收：

```text
让女娲看看这个skill：https://github.com/anthropics/skills
```

合格的表现：它先输出择土挑战和带URL的同族对标，给三个方向并停手等你选——而不是直接开始改写。

## 方法论致谢

女娲的七个动作不是凭空造的，它站在这些工作的肩膀上：

- [KKKKhazix/khazix-skills · hv-analysis](https://github.com/KKKKhazix/khazix-skills/blob/main/hv-analysis/SKILL.md) — 横纵分析法：纵向追来路，横向看同期，交汇出判断（观世与定命的骨架）
- [alchaincyf/darwin-skill](https://github.com/alchaincyf/darwin-skill) — 评估 → 改进 → 实测 → 保留或回滚；独立评委视角；棘轮机制（量骨与细塑的灵魂）
- [microsoft/SkillOpt](https://github.com/microsoft/SkillOpt) — 冻结基线、有边界的候选编辑、validation-gated接受（灵关的出处）

## License

[MIT](LICENSE) — 随便用，随便改，随便让它帮你塑造。

---

<div align="center">

*择土 · 观世 · 定命 · 量骨 · 细塑 · 绘灵 · 轮回*

**学手艺，不偷皮。**

</div>
