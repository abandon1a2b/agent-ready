# 应用接入模板

这是一套供项目填写和适配的模板，不是可直接部署的服务。Manifest 使用 JSON，说明使用 Markdown；字段可按应用实际能力调整，入口职责遵循项目接入规范。

AI 实施者应先阅读 [协作约定](../AGENTS.md)，与开发者确认采用的方案，交付后说明实际能力和验证效果。复制模板到其他项目时，应一并保留这些协作要求，可合入目标项目的 AI 指令文件。

复制后替换 `<...>` 占位符，删除不适用的选项，并由应用将文件内容映射到对应 HTTP 入口。文件名不规定服务端的存储方式。

| 文件 | 对应入口 | 内容 |
| --- | --- | --- |
| [manifest.json](agent/manifest.json) | `/agent/manifest` | 顶层目录 |
| [skill.md](agent/skill.md) | `/agent/skill` | 操作流程 |
| [docs.md](agent/docs.md) | `/agent/docs` | 接口说明 |
| [download.md](agent/download.md) | `/agent/download` | 工具获取目录 |
| [auth.md](agent/auth.md) | 项目选择，通过 Manifest 引用 | 授权说明 |
| [cli.sh](agent/cli.sh) | 可选 `/agent/cli.sh` | 即时执行的脚本 CLI 骨架 |
| [implementation.md](implementation.md) | 不发布为接入接口 | 项目内部实现与验证记录 |

## 填写顺序

1. 在实现记录中确定业务范围、部署方式和授权模型。
2. 填写 Docs 中的真实接口，再编写 Skill 的任务流程。
3. 填写授权说明和工具目录；没有工具时明确说明暂无工具。
4. 更新 Manifest，仅引用实际可用的资源。
5. 验证链接、权限、示例与发布产物一致后再提供接入入口。

地址按应用的可信基地址解析，并保留部署前缀。模板使用相对地址，发布时应在 Manifest 中说明其解析方式。

脚本 CLI 是可选工具，不是安装器。默认骨架只提供帮助，业务命令需项目自行实现；未实现时移除 Manifest 和 Download 中对应声明。
