# 1Panel App Store

English | [简体中文](README_zh.md)

The official repository for the [1Panel](https://github.com/1Panel-dev/1Panel) App Store, containing all applications available for installation via the [1Panel](https://github.com/1Panel-dev/1Panel) App Store.

### 1Panel App Store Listing Criteria:

 - Well-known and active open-source projects
 - Significant installation base
 - Official Docker images provided
 - Other approved projects

## Issue Reporting

If you encounter any problems during use or have additional feedback, please submit a GitHub Issue to the [main 1Panel repository](https://github.com/1Panel-dev/1Panel/issues).

## Renovate Auto-merge

Renovate opens a pull request for every app update. Since each app version is part of its directory name, a follow-up commit renames `apps/<app>/<old-version>` to `apps/<app>/<new-version>` on the Renovate branch. Merging is therefore not left to Renovate itself (`automerge` is disabled in `renovate.json`): once that follow-up commit is pushed and every pull request check has passed, the `Auto-merge Renovate PR` job in `.github/workflows/renovate-app-version.yml` squash-merges the pull request and deletes the branch. Pull requests with failing checks, or with checks still running after 20 minutes, are left open for review.

## Creating Local Applications

[How to submit your own application](https://github.com/1Panel-dev/appstore/wiki/How-to-submit-your-own-application)

You can also use [1Panel App Store Skills](https://github.com/1Panel-dev/1Panel-appstore-skills) to create application packages with AI coding tools. The skills provide packaging guidelines, templates, and validation steps for building 1Panel-compatible local application packages.

The skills are also available on [ClawHub](https://clawhub.ai/1panel/1panel-appstore).
