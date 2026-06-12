<sub>🌐 <a href="README.md">中文</a> · <b>English</b></sub>

<div align="center">

# Nuwa | Skill Forge

> "Bring your Skill to the forge, and let the Creator reshape it."

[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-nuwa-blueviolet)](skills/女娲/SKILL.md)
[![skills.sh](https://img.shields.io/badge/skills.sh-pending-lightgrey)](https://skills.sh)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Turn a "working Skill" into a "public asset that can be understood, adopted, shared, verified, and evolved."**

[Install](#quick-start) · [Seven Actions](#seven-actions) · [Triggers](#triggers) · [What Makes It Different](#what-makes-it-different) · [Safety Boundaries](#safety-boundaries)

</div>

---

## What Problem It Solves

You built a Skill. It works for you. Then what?

- You publish it to GitHub, but no one installs it — because no one understands what it does;
- The README reads like an engineering manual, with no hook on the first screen and no screenshot-worthy output;
- You say "it works well," but you have no reproducible evidence;
- You want to improve it, but don't know where to start — rewrite triggers? refactor workflow? add showcases?

The ordinary approach is "help me polish it." Nuwa's approach is to treat it as a **living being** brought to the Forge: first judge if the clay is worth shaping, then see what stands in the ecosystem, measure the bones with three rulers, sculpt one face at a time with each pass through the Spirit Gate, and finally birth it with rules.

## What It Delivers

- **A 13-section Crafting Report**: soil judgment, peer comparison table (all with URLs), destiny positioning, scorecard, three shaping directions, directly replaceable rewrite fragments
- **A screenshot-ready "Spirit Contract"**: before/after scores, one-sentence new positioning, secret move, next step
- **Validation assets baked into your repo**: one-off comparison scripts solidified into tools, judgment standards written into project rules

## Seven Actions

| Action | What It Does | One-Liner |
|---|---|---|
| **Select Soil** | Challenge whether the Skill's premise holds | Rotten soil is not shaped; say it straight |
| **Observe the World** | Search for kin online, see where you stand | No good being is born behind closed doors |
| **Determine Destiny** | Trace origins vertically, scan the market horizontally | Without seeing the world, you don't know where to stand |
| **Measure Bones** | Structure + live test + real output, three rulers | Green CI lies; pull real outputs to verify |
| **Fine Sculpt** | Freeze the baseline, keep only what passes the Spirit Gate | If it doesn't measure up, return to clay |
| **Paint the Spirit** | README and Showcase made visible | Make them want it first, then tell them how to adopt |
| **Reincarnate** | After birth, keep a watch list; next round from real feedback | Birth is not the end |

## Quick Start

![nuwa demo](assets/demo.gif)

```bash
npx skills add alice/nuwa-skill -g
```

After installation, tell your Agent:

```text
Let Nuwa look at this skill: [your Skill directory / GitHub repo link / SKILL.md content]
```

Nuwa will complete Select Soil, Observe the World, Determine Destiny, and Measure Bones, then give you three shaping directions with a recommendation — **it will not touch a single line of your code before you choose a direction.**

## Triggers

- "Let Nuwa look at this skill" / "Take it to the Forge"
- "Upgrade my skill" / "Shape my skill"
- "Skill health check" / "Skill audit"
- "Why does no one install my skill"
- "How do I publish this skill to GitHub/ClawHub"
- "Benchmark against similar skills"

## What Makes It Different

| | Just asking Agent to "make it look better" | **Nuwa** |
|---|---|---|
| Starting point | Rewrite copy directly | Challenge the premise first: does this Skill deserve to exist? |
| Basis | Model's aesthetic | Peer comparison (with URLs) + three-ruler scorecard (with evidence) |
| Method | Rewrite everything at once, no attribution | Freeze baseline, one face per commit, keep only what passes the gate |
| Validation | "Looks better" | Real data replay, with flipped numbers |
| Ending | Done when rewritten | Validation tools baked in, rules established, reincarnation list left behind |

## Safety Boundaries

- **Mandatory Stop Points**: When suggesting a destiny repositioning, merging to default branch, tagging a release, or any deployment visible to real users — each step waits for your explicit authorization; **your confirmation questions ("all good?") do NOT constitute authorization.**
- No API keys, tokens, cookies, or private paths in any public artifact.
- Changes are always presented as auditable commits; no `git reset --hard` style rollbacks.

## File Structure

```text
女娲/
├── skills/女娲/
│   ├── SKILL.md                    # Workflow body: seven actions, nine steps, Nuwa commandments, birth checklist
│   └── examples/                   # Real-world cases (see 定式-造物报告.md)
├── references/
│   ├── birth-checklist.md          # Birth certificate checklist
│   └── house-style.md              # Spirit Book style rules and template skeleton
├── tools/
│   ├── scaffold-skill.sh           # Forge script: generate a born-compliant repo skeleton
│   └── check-skill-repo.sh         # Bone-measure script: one-click health check
├── assets/                         # demo GIF and reproducible recording scripts (vhs tape)
├── .claude-plugin/                 # Claude Code plugin marketplace manifest
├── README.md
├── README.en.md
└── LICENSE
```

## Verification & Testing

After installation, verify with:

```text
Let Nuwa look at this skill: https://github.com/anthropics/skills
```

Qualified behavior: it first outputs soil challenges and peer comparisons with URLs, gives three directions, and stops for your choice — instead of starting to rewrite immediately.

## License

[MIT](LICENSE) — Use freely, modify freely, let it shape freely.

---

<div align="center">

*Select Soil · Observe the World · Determine Destiny · Measure Bones · Fine Sculpt · Paint the Spirit · Reincarnate*

**Learn the craft, don't steal the skin.**

</div>
