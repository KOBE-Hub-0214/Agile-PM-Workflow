# NOTICE — Impeccable Skills（第三方组件，附带于本仓库）

本目录（`impeccable_skill/`）下的设计打磨 Skill **并非 Agile-PM-Workflow 原创**，而是为方便用户开箱即用，按 Apache License 2.0 的署名要求一并附带（vendored）。

## 来源与版权

- **项目**：Impeccable — The design language that makes your AI harness better at design
- **作者**：Paul Bakaus
- **上游仓库**：https://github.com/pbakaus/impeccable
- **许可证**：Apache License 2.0（见同目录 `LICENSE`）
- **再上游**：基于 Anthropic 的 frontend-design skill
  （https://github.com/anthropics/skills/tree/main/skills/frontend-design）

```
Copyright 2025 Paul Bakaus

Licensed under the Apache License, Version 2.0 (the "License");
you may not use these files except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0
```

## 本仓库附带的内容

上游以「单一 `impeccable` skill + 23 个命令」的形式分发。本仓库仅附带 Agile-PM-Workflow 步骤四会用到的 7 个 Skill：

| Skill | 作用 |
|-------|------|
| `impeccable` | 设计原则、反模式与上下文采集协议（其余 Skill 的依赖中枢） |
| `arrange` | 布局、间距与视觉节奏 |
| `typeset` | 字体层级与可读性 |
| `colorize` | 配色与对比度 |
| `delight` | 微交互与细节惊喜 |
| `polish` | 出货前整体打磨 |
| `critique` | UX 质量评分与自查 |

## 改动声明

本仓库**未修改**上述 Skill 的内容，仅原样复制。如需完整的 23 个命令或获取上游更新，请前往原仓库安装。
