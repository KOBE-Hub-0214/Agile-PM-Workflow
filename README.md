# 敏捷产品经理工作流 (Agile PM Workflow)

这是一个专为产品经理（尤其是新手或希望系统化产出的人）打造的 **AI 辅助需求产出工作流**。

我们打破了传统的"先想清楚再写长篇文档"模式，采用 **"启发式对话引导 -> 详细的初版 PRD -> 原型视觉化验证 -> 逻辑与细节补全"** 的敏捷迭代方式。借助 AI 强大的理解和生成能力，它能帮助你快速理清思路，并最终产出极具专业度的高保真原型和结构化 PRD。

---

## ✨ 核心亮点

- 💬 **告别填表，对话式采集**：采用灵活的对话式需求采集，AI 主动评估维度并温和追问，极大地降低了认知门槛。
- 🎨 **原型先行验证**：在编写复杂的业务逻辑前，先让 AI 产出高保真 HTML 原型。通过"看图说话"，直观发现逻辑漏洞。
- 🎯 **集成 Impeccable 专业前端设计工具链**：原型生成阶段强制调用 [Impeccable Skills](https://impeccable.style/) 的 21 个设计指令（`/arrange` 布局、`/typeset` 排版、`/colorize` 配色、`/delight` 微交互、`/polish` 打磨、`/critique` 自查等），确保产出专业级 UI 质量，告别"AI 味"设计。
- 🔗 **PRD 与原型双向联动**：文档与原型不再割裂。在工作流中，PRD 逻辑和原型视觉同步进行迭代优化，保证所想即所见。
- 🧩 **沙盒切片，所见即所得的 PRD**：最终产出的 HTML 版 PRD 中，直接以 `iframe` 沙盒切片的形式嵌入可交互的原型。左边是规则描述，右边是真实界面。
- 📄 **双格式 PRD 产出（HTML + Word）**：同时生成 HTML 交互版和 Word 文档版（`.docx`）。Word 版使用 `python-docx` 生成，可直接导入**飞书知识库**，原型以截图+链接方式呈现，流程图以 PNG 静态图片插入。
- 📸 **原型截图自动采集**：原型定稿后自动截图存档，供 Word 版 PRD 内嵌引用，确保离线文档也有完整的视觉参考。
- 📊 **Mermaid 流程图 + PNG 导出**：使用 Mermaid 语法绘制流程图，同时导出 PNG 图片供 Word 版使用（飞书导入 Word 后无法渲染 Mermaid 代码）。
- 📂 **自动化项目初始化**：内置"步骤零"，一键生成标准的产品项目文件夹结构（PRD、原型、流程图、截图、附件等），告别文件存放混乱。
- 📈 **结构化版本迭代管理**：规范化历史版本控制。通过物理隔离（如从 `v1.0` 复制出 `v1.1` 进行迭代）与 PRD 右上角的"版本切换器"，轻松管理项目的生命周期。HTML 版和 Word 版同步迭代，变更日志双向联动。

---

## 📁 仓库目录结构

本仓库包含两个核心部分：

- `pm_workflow_template/`：包含工作流的核心指令定义（`pm_workflow_definition.md`）、标准 PRD 模板（`prd_template.md`）和详细的使用指南。
- `agile-pm-workflow_skill/`：已经封装好的 Trae/Cursor 专属 AI 技能（Skill），支持一键安装调用。

---

## 🔄 工作流七步概览

| 步骤 | 名称 | 产出物 |
|------|------|--------|
| 1 | 对话式需求采集与确认 | 结构化需求理解（至少 3 轮深度追问） |
| 2 | 项目初始化与目录搭建 | `prd/` `prototype/` `flowcharts/` `screenshots/` `annex/` `templates/` |
| 3 | 输出详细的第一版 PRD | `prd_v1.0.html` + `prd_v1.0.docx`（双格式） |
| 4 | 产出高保真 HTML 原型 | 单文件 HTML 原型（Tailwind CSS + Focus Mode + Impeccable Skills 设计优化）+ 截图采集 |
| 5 | 输出流程图 | Mermaid 代码 + PNG 图片导出 |
| 6 | 产出最终版 PRD | HTML 版（iframe 沙盒切片）+ Word 版（截图+链接，飞书可导入） |
| 7 | 版本迭代与管理 | 物理隔离 + 版本切换器 + 双格式同步联动 |

---

## 🚀 工作流如何使用？

如果你**不使用**带 Skill 系统的 IDE，也可以直接在任何 AI 助手（如 ChatGPT, Claude 等）中手动使用这套工作流：

1. 打开 `pm_workflow_template/pm_workflow_definition.md`，将里面的全部内容发送给你的 AI 助手。
2. 附上你最原始、甚至有些模糊的想法（例如："我想做一个给装修工人用的打卡小程序，能拍照就行"）。
3. 跟随 AI 的引导，像聊天一样依次完成：**需求采集与确认 -> 建立目录架构 -> 产出详细的第一版 PRD（HTML + Word）-> HTML 原型生成 -> 流程图绘制 -> 最终版双格式 PRD**。

*(详细的模板说明与使用指南，请查看 `pm_workflow_template/README.md`)*

---

## 🛠️ AI IDE Skill 插件如何安装与使用？

如果你使用的是支持 Skill 扩展的现代 AI IDE（例如 **Trae, Cursor, Claude Code, Kiro, Codex CLI 等**），我们已经为你封装好了专属的 Skill 插件。安装后只需输入 `/agile-pm-workflow` 即可一键开启！

### 安装步骤：

1. 下载或 `git clone` 本仓库到你的本地电脑。
2. 找到本仓库中的 `agile-pm-workflow_skill` 文件夹。
3. 将该文件夹复制并重命名，放到你所使用的 AI 助手的全局技能目录中：
   - **Trae / Cursor / 绝大多数 AI IDE**:
     - Windows: `C:\Users\你的用户名\.trae\skills\agile-pm-workflow` (或 `.cursor\skills\`)
     - Mac/Linux: `~/.trae/skills/agile-pm-workflow` (或 `~/.cursor/skills/`)
   - **Claude Code / Kiro**: 放在 `~/.claude/skills/`
   - **Gemini CLI**: 放在 `~/.gemini/skills/`
   *(注意：如果没有 `skills` 文件夹，请手动新建一个)*
4. 重新启动你的 AI IDE。

### 使用方法：

在 AI 的对话框中直接输入 `/agile-pm-workflow` 并发送，然后告诉它你的新项目想法。AI 就会自动帮你建好标准的文件夹结构，并开始一步步引导你产出专业的需求文档了！

---

## 🎨 Impeccable Skills 前端设计工具链

本工作流已深度集成 [Impeccable Skills](https://impeccable.style/)（21 个专业前端设计指令），在步骤四生成 HTML 原型时**强制调用**以确保专业级 UI 质量。

### 安装 Impeccable Skills

```bash
npx skills add pbakaus/impeccable
```

### 原型生成阶段必须调用的指令

| 阶段 | 指令 | 作用 |
|------|------|------|
| 布局 | `/arrange` | 优化元素间距、对齐和视觉层级 |
| 排版 | `/typeset` | 优化字体大小、行高、字重层级 |
| 配色 | `/colorize` | 优化颜色对比度、品牌一致性和可访问性 |
| 交互 | `/delight` | 添加微交互和过渡动效 |
| 打磨 | `/polish` | 整体视觉打磨 |
| 自查 | `/critique` | 设计质量评估和反馈 |

### 可选进阶指令

`/adapt`（响应式）、`/animate`（动画）、`/clarify`（可读性）、`/shape`（图形）、`/bolder`（冲击力）、`/quieter`（降噪）、`/normalize`（一致性）、`/impeccable`（全流程）、`/overdrive`（极致效果）

---

## 📋 Word 版 PRD 与飞书集成说明

本工作流新增了 Word 版 PRD 的自动生成能力，专为**飞书知识库导入**场景优化：

- 使用 `python-docx` 库生成 `.docx` 文件，标题层级使用 Word 原生样式，飞书导入后自动生成目录。
- 原型展示采用**截图 + 链接**方式：截图内嵌在文档中，旁边附上原型 HTML 的路径或在线链接，方便读者在浏览器中体验完整交互。
- 流程图采用**PNG 静态图片**插入，因为飞书导入 Word 后无法渲染 Mermaid 代码。
- 项目目录中新增 `screenshots/` 文件夹，用于存放原型页面截图，供 Word 版引用。

---

## 📂 工作流产出的项目目录结构

```
项目名称/
├── prd/                    # PRD 文档（HTML + Word 双格式）
│   ├── prd_v1.0.html       # HTML 交互版（含 iframe 原型切片）
│   └── prd_v1.0.docx       # Word 版（飞书可导入，截图+链接）
├── prototype/              # 高保真 HTML 原型
│   └── prototype_v1.0.html
├── flowcharts/             # Mermaid 流程图 + PNG 导出
│   ├── main_flow.mmd
│   └── main_flow.png
├── screenshots/            # 原型页面截图（供 Word 版引用）
│   ├── login_default.png
│   └── dashboard.png
├── annex/                  # 附件（数据字典、参考资料等）
└── templates/              # 工作流模板
```

---

> 💡 **设计质量保障**：本工作流已内置 [Impeccable Skills](https://impeccable.style/) 前端设计工具链，原型生成阶段会自动调用专业设计指令，无需额外配置。首次使用请先运行 `npx skills add pbakaus/impeccable` 完成安装。
