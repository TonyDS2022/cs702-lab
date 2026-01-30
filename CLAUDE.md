# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

CS702 lab project - a Python 3.12 project managed with `uv`.

The intent of this repository is to work on the Lab Assignments of the CS702 Computational Interaction course as part of the MSc Computing curriculum at Singapore Managmeent University, taught by Prof Kotaro HARA.

The original lab questions can be found at Prof HARA's course [notion site](https://smuhci.notion.site/cs702-ci). As a start, we should pull Lab Questions from Week 2 to 12 from their notion pages and transcode into Quarto projects as `.qmd` files. We will then work on these `.qmd` files.

## Commands

```bash
# Render the Quarto website
quarto render

# Preview with live reload
quarto preview

# Render a single file
quarto render <file.qmd>

# Render to PDF (requires TeX Live)
quarto render <file.qmd> --to pdf

# Add a Python dependency
uv add <package-name>

# Sync dependencies
uv sync

# Run Python in the virtual environment
uv run python <script.py>
```

## Dev Container

Open in VS Code and select "Reopen in Container" to get a complete environment with:
- Quarto CLI
- Python 3.12 + uv
- Full TeX Live installation
- Jupyter support

## Commit Style

Use conventional commits with a leading emoji. Do not include co-author attribution.

| Emoji | Type | Description |
|-------|------|-------------|
| 🎉 | `init` | Initial commit |
| ✨ | `feat` | New feature |
| 🐛 | `fix` | Bug fix |
| 📝 | `docs` | Documentation |
| 🔧 | `chore` | Configuration/maintenance |
| ♻️ | `refactor` | Code refactoring |
| 🧪 | `test` | Tests |
| 🎨 | `style` | Formatting/style |
| ⚡ | `perf` | Performance |
| 🔥 | `remove` | Remove code/files |

Example:
```
✨ feat: add Week 3 Bayesian inference lab

- Convert Notion content to Quarto format
- Add Python exercises for prior/posterior calculations
```