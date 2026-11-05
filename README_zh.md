# 1Panel 应用商店

[English](README.md) | 简体中文

本仓库是 [1Panel](https://github.com/1Panel-dev/1Panel) 应用商店的官方仓库，包含可通过 [1Panel](https://github.com/1Panel-dev/1Panel) 应用商店安装的应用。

### 1Panel 应用商店上架标准：

 - 知名且活跃的开源项目
 - 具有一定的安装基础
 - 提供官方 Docker 镜像
 - 其他审核通过的项目

## 问题反馈

如果在使用过程中遇到问题，或有其他反馈建议，请在 [1Panel 主仓库](https://github.com/1Panel-dev/1Panel/issues) 提交 GitHub Issue。

## Renovate 自动合并

Renovate 会为每个应用更新创建 PR。由于应用版本号是目录名的一部分，Renovate 分支上还会有一个后续提交把 `apps/<应用>/<旧版本>` 重命名为 `apps/<应用>/<新版本>`。因此合并操作没有交给 Renovate 自己完成（`renovate.json` 中已关闭 `automerge`）：当该后续提交推送完成、且 PR 的所有检查通过后，`.github/workflows/renovate-app-version.yml` 中的 `Auto-merge Renovate PR` 任务会以 squash 方式合并该 PR 并删除分支。检查失败，或检查在 20 分钟内仍未结束的 PR 会被保留下来等待人工评审。

## 创建本地应用

[如何提交自己想要的应用](https://github.com/1Panel-dev/appstore/wiki/%E5%A6%82%E4%BD%95%E6%8F%90%E4%BA%A4%E8%87%AA%E5%B7%B1%E6%83%B3%E8%A6%81%E7%9A%84%E5%BA%94%E7%94%A8)

也可以使用 [1Panel App Store Skills](https://github.com/1Panel-dev/1Panel-appstore-skills)，通过 AI 编码工具创建应用包。该 skills 提供了打包规范、模板和校验步骤，用于构建兼容 1Panel 的本地应用包。

该 skills 也已发布到 [ClawHub](https://clawhub.ai/1panel/1panel-appstore)。
