# 敏捷产品经理工作流 (Agile PM Workflow)

> 一个面向产品经理（尤其新手）的 AI 需求产出 Skill：用**对话**代替填表，用**可点击原型**代替空想，最终交付**PRD 与原型双向联动**的专业文档。

把传统的"先想清楚再写长文档"，换成敏捷迭代：**启发式对话 → 详细初版 PRD → 高保真原型验证 → 逻辑补全 → 最终 PRD**。一句模糊的想法进，一套结构化、可交付的需求文档出。

---

## 为什么用它

- 💬 **对话式采集，告别填表**：AI 主动评估 7 个需求维度（背景、目标、用户、旅程、现状、规则、竞品），温和追问，降低新手认知门槛。
- ⚡ **智能模式切换**：自动评估复杂度，推荐快速 / 标准 / 深度三档（2 / 3 / 5 轮追问 + 对应流程），简单需求不啰嗦，复杂需求不遗漏。
- 🎨 **原型先行，看图找漏洞**：先产出单文件高保真 HTML 原型（Tailwind + Hash 路由），让你在具体画面上发现缺失的返回按钮、空状态、异常分支。
- ✨ **内置专业设计打磨**：随仓库附带 **Impeccable Skills**，画原型时自动调用 `/arrange` `/typeset` `/colorize` `/delight` `/polish` `/critique`，让原型摆脱"一眼 AI 味"。
- 🔗 **PRD↔原型双向联动**：详细方案通过 Markdown 链接 + Hash 锚点（如 `prototype.html#login`）一键直达原型对应页面；改原型必同步改 PRD，文档与画面永不脱节。
- 🤖 **AI 自动生成流程图**：从原型交互逻辑推断 Mermaid 流程图初稿，你只需确认 / 微调。
- 🛡️ **真实性护栏（防 AI 编造）**：所有量化指标、业务规则、数据字段必须来自用户确认，否则强制标注 `（AI推断·待确认）`；质量检查为"举证式"，每项打勾须引出 PRD 原文。
- 🔍 **PRD 质量自检**：生成后自动跑完整性检查（文档结构、用户旅程、目标指标、异常覆盖、流程图、技术可行性），并给修复建议。
- 📄 **极速 Markdown 单格式**：生成快、便于 `git diff`，可直接导入飞书 / Notion / 语雀 / GitHub，原生渲染表格与 Mermaid。
- 📂 **自动化项目初始化 + 版本管理**：一键建标准目录；迭代时物理隔离历史版本（`v1.0` → `v1.1`），原型链接路径同步联动。

---

## 七步工作流

| 步骤 | 名称 | 产出物 |
|------|------|--------|
| 1 | 对话式需求采集与确认 | 结构化需求理解（按模式 2–5 轮追问） |
| 2 | 项目初始化 | `prd/` `prototype/` `flowcharts/` `annex/` `templates/` |
| 3 | 详细第一版 PRD | `prd_v1.0.md`（含事实边界规则，禁止编造） |
| 4 | 高保真 HTML 原型 | 单文件原型（Tailwind + Hash 路由 + Impeccable 打磨） |
| 5 | 流程图 | Mermaid 代码块（直接嵌入 PRD） |
| 6 | 最终版 PRD | `prd_v1.0.md`（含流程图 + 原型链接 + 21 项质量检查） |
| 7 | 版本迭代管理 | 物理隔离 + 原型链接同步 |

每个带 `【等待用户确认】` 的步骤都会停下来等你回应，绝不一次性吐完所有内容。

---

## 安装与使用

### 方式一：AI IDE Skill（推荐）

支持 Skill 的 IDE（**Claude Code / Kiro / Trae / Cursor / Codex CLI / Gemini CLI** 等）：

1. `git clone` 本仓库。
2. 把 `agile-pm-workflow_skill/` 复制到技能目录，并把 `impeccable_skill/` 下的 **7 个子目录**（`impeccable`/`arrange`/`typeset`/`colorize`/`delight`/`polish`/`critique`）一并复制进去：
   - **Claude Code / Kiro**：`~/.claude/skills/`
   - **Trae / Cursor**：`~/.trae/skills/` 或 `~/.cursor/skills/`
   - **Gemini CLI**：`~/.gemini/skills/`
   *(无 `skills` 文件夹则手动新建)*
3. 重启 IDE，输入 `/agile-pm-workflow`，描述你的想法即可。

### 方式二：手动粘贴

不带 Skill 系统的助手（ChatGPT / Claude 网页版等）：把 `agile-pm-workflow_skill/SKILL.md` 全文发给 AI，再附上你的想法，它会引导你走完全流程。

---

## 设计能力：两阶段（一个内置，一个可选）

**第二阶段（内置 · 画原型时必做）— Impeccable Skills**
随仓库附带于 `impeccable_skill/`，无需另装。画完 / 改完原型后自动依次调用 7 个指令打磨布局、排版、配色、微交互与质量自查。

**第一阶段（可选 · 外部）— UI/UX Pro Max**
从 67 种 UI 风格、161 个色板、57 组字体配对中智能推荐设计系统。它是**独立项目**，不随本仓库附带，需自行安装：[nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)。未安装时 AI 自动跳过该阶段，不影响主流程。

> **降级保障**：任一设计 Skill 缺失时，AI 不会报错卡死或伪造输出，而是自动降级到基础设计规范（Tailwind 默认色板 + 8px 栅格 + 系统字体）继续产出。

---

## 产出目录结构

```
项目名称/
├── prd/                  # PRD 文档（Markdown，含流程图 + 原型链接）
│   └── prd_v1.0.md
├── prototype/            # 高保真 HTML 原型
│   └── prototype_v1.0.html
├── flowcharts/           # Mermaid 源文件（按需独立维护）
├── annex/                # 附件（数据字典、参考资料等）
└── templates/            # 工作流模板
```

---

## 仓库结构

- `agile-pm-workflow_skill/SKILL.md` — 工作流核心定义（Skill 主体）
- `impeccable_skill/` — 内置的 Impeccable 设计打磨 Skill（Apache 2.0，见其 `NOTICE.md`）
- `pm_workflow_template/` — PRD 模板与使用说明

---

## 致谢与许可

- **Impeccable Skills** 由 [Paul Bakaus](https://github.com/pbakaus/impeccable) 创作（Apache 2.0，基于 Anthropic frontend-design skill），随本仓库附带并保留署名，详见 `impeccable_skill/NOTICE.md` 与 `LICENSE`。
- **UI/UX Pro Max** 为 [nextlevelbuilder](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) 的独立项目（MIT），需自行安装。
