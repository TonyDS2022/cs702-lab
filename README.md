# CS702 Computational Interaction Lab

Lab assignments for CS702 Computational Interaction, MSc Computing at Singapore Management University.

## Quick Start (Dev Container)

The easiest way to get started is using the included dev container.

### Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop/)
- [VS Code](https://code.visualstudio.com/) with [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/cs702-lab.git
   cd cs702-lab
   ```

2. Build the dev container image:
   ```bash
   docker build -t cs702-quarto:latest .devcontainer/
   ```

3. Open in VS Code and select **"Reopen in Container"** when prompted (or run `Dev Containers: Reopen in Container` from the command palette).

4. Dependencies install automatically via `uv sync`.

### What's Included

The dev container provides:
- Python 3.12 with uv package manager
- Quarto CLI 1.6.40
- Full TeX Live installation (for PDF output)
- Jupyter support
- VS Code extensions for Quarto, Python, and LaTeX

## Manual Setup (Without Dev Container)

### Prerequisites

- Python 3.12+
- [uv](https://docs.astral.sh/uv/) package manager
- [Quarto CLI](https://quarto.org/docs/get-started/)
- TeX distribution (for PDF output): [TinyTeX](https://yihui.org/tinytex/) or [TeX Live](https://www.tug.org/texlive/)

### Install Dependencies

```bash
# Install uv if not already installed
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install Python dependencies
uv sync
```

## Usage

### Preview with Live Reload

```bash
uv run quarto preview
```

Opens a local server at `http://localhost:6592/` with hot reload.

### Render the Site

```bash
# Render HTML + PDF
uv run quarto render

# Render a single file
uv run quarto render labs/week-02.qmd

# Render only PDF
uv run quarto render labs/week-02.qmd --to pdf
```

Output goes to `_site/`.

### Add Python Dependencies

```bash
uv add <package-name>
```

## Project Structure

```
cs702-lab/
├── .devcontainer/       # Dev container configuration
├── .github/workflows/   # GitHub Actions for deployment
├── labs/                # Lab assignment .qmd files
├── _quarto.yml          # Quarto project configuration
├── pyproject.toml       # Python dependencies
└── index.qmd            # Site homepage
```

## Deployment

The site automatically deploys to GitHub Pages on push to `main`. PDFs are generated alongside HTML pages.
