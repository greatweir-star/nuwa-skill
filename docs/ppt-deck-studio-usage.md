# PPT Deck Studio 使用说明

`ppt-deck-studio` 是一个专门写 PPT/演示文稿的 Agent Skill。它会先判断交付路线，再组织故事线、视觉系统和验收流程。

## 调用入口

让智能体读取：

```text
skills/ppt-deck-studio/SKILL.md
```

推荐提示词：

```text
Use $ppt-deck-studio at skills/ppt-deck-studio to turn my source material into a polished editable PPTX deck.
```

中文提示词：

```text
使用 $ppt-deck-studio，把这些资料整理成一份可编辑中文汇报 PPT，并附演讲备注。
```

## 三条路线

- **Editable PPTX**：适合客户汇报、课程、融资、策略报告，强调可编辑。
- **HTML Stage Deck**：适合线下演讲、网页式高审美、快捷键、计时器、逐字稿。
- **Image Card Deck**：适合小红书/社媒卡片、视觉摘要、可爱风、内容初稿。

## 给其他智能体的最小流程

1. 先读 `skills/ppt-deck-studio/SKILL.md`。
2. 按用户目标选择 PPTX、HTML 或图片卡片路线。
3. 只加载对应的 `references/ppt-deck-studio/*.md`。
4. 产出前按 `references/ppt-deck-studio/quality-gates.md` 做验收。

## 参考来源

研究来源包括 `ppt-master`、`frontend-slides`、`huashu-design`、`guizang-ppt-skill`、`html-ppt-skill`、`baoyu-slide-deck`、`qiaomu-anything-to-notebooklm`。详见 `references/ppt-deck-studio/source-projects.md`。
