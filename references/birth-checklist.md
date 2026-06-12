# 出生证清单(Born-Ready Checklist)

> 一个新 Skill 生灵公开发布前必须带齐的件。女娲给新活儿"开料"时按这张单备料，
> 给存量仓库做塑造时，这张单就是量骨的"结构尺"底线。
> 目的：**每个生灵只塑造一遍**——出生即合规，不要先降生再回炉补课。

## 必备件（缺一项不发布）

- [ ] **SKILL.md frontmatter 齐全**：`name` + 富 `description`（做什么/何时触发/触发词清单/负触发——"不要用于…"）
- [ ] **显灵书按女娲模板**：引语钩子、人感开场、产物前置、锚点导航（见 `house-style.md`）
- [ ] **一行接引实测可引**：`npx skills add owner/repo` 真跑一遍，贴输出
- [ ] **引接完第一句话**：显灵书给出接引完可直接复制的 prompt
- [ ] **demo GIF + 可复现录制脚本**：vhs tape / 数据脚本与产物一起入库，内容是真实运行回放、不是摆拍
- [ ] **`.claude-plugin/marketplace.json`**：plugin marketplace 双通道
- [ ] **skills.sh 徽章**：`https://skills.sh/b/owner/repo`（接引计数自动累积）
- [ ] **LICENSE**：默认 MIT
- [ ] **真实示例**：`examples/` 放真实运行产物或案例，每个数字挂链接
- [ ] **安全边界节**：不会做什么、何时停手问用户
- [ ] **致谢节**：方法论来源链接放显灵书，不进 SKILL.md 正文
- [ ] **零API底线**：做不到零Key就在首屏写清成本与前置条件

## 发布动作（每项都要祈使句授权）

- [ ] 新仓库创建到目标 org / 仓库改名
- [ ] merge 到默认分支
- [ ] 打 tag + release notes（讲"为什么改"，不只是"改了什么"）
- [ ] 注册表发布（ClawHub 等）——每个渠道单独授权

## 发布后 24 小时内

- [ ] `npx skills add` 从公网再验一遍
- [ ] 真实渲染检查：GitHub 渲染下看一遍显灵书（本地预览会撒谎，徽章/视频/相对链接最容易翻车）
- [ ] 留轮回清单：对标观察点 + 下一轮入口

## 用法

```bash
# 新建 skill 仓库骨架（自动带齐必备件的占位）
bash tools/scaffold-skill.sh <skill-name> "<一句话定位>" [target-dir]
```

存量仓库体检：对照本清单逐项打勾，缺的就是 P0 差距。
