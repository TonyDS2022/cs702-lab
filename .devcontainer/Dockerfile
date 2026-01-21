FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm

# Install TeX Live (full for comprehensive LaTeX support)
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
        texlive-full \
        latexmk \
        pandoc \
        curl \
        wget \
        gdebi-core \
        git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Quarto (detect architecture)
ARG QUARTO_VERSION="1.6.40"
RUN ARCH=$(dpkg --print-architecture) && \
    if [ "$ARCH" = "arm64" ]; then \
        QUARTO_ARCH="linux-arm64"; \
    else \
        QUARTO_ARCH="linux-amd64"; \
    fi && \
    curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-${QUARTO_ARCH}.deb && \
    gdebi --non-interactive quarto-${QUARTO_VERSION}-${QUARTO_ARCH}.deb && \
    rm quarto-${QUARTO_VERSION}-${QUARTO_ARCH}.deb

# Install uv for Python package management
RUN curl -LsSf https://astral.sh/uv/install.sh | sh \
    && mv /root/.local/bin/uv /usr/local/bin/ \
    && mv /root/.local/bin/uvx /usr/local/bin/

# Verify installations
RUN quarto check && python --version && uv --version
