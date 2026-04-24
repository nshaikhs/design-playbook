#!/bin/bash
# Design Playbook Installer — Najib's Claude Code Design Setup
# Installs 15 design skills + design style config into Claude Code

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"

echo ""
echo "============================================"
echo "  Design Playbook — Claude Code Installer"
echo "============================================"
echo ""

# Check Claude Code exists
if ! command -v claude &> /dev/null; then
    echo "Claude Code not found. Install it first:"
    echo "  npm install -g @anthropic-ai/claude-code"
    echo ""
    exit 1
fi

# Create skills directory if needed
mkdir -p "$SKILLS_DIR"

echo "Installing 15 design skills..."
echo ""

# Copy each skill
SKILLS=(
    "design"
    "frontend-design"
    "ui-ux-pro-max"
    "ui-styling"
    "design-system"
    "banner-design"
    "canvas-design"
    "theme-factory"
    "brand-guidelines"
    "design-systems"
    "web-artifacts-builder"
    "algorithmic-art"
    "excalidraw-diagrams"
    "frontend-slides"
    "slides"
)

for skill in "${SKILLS[@]}"; do
    if [ -d "$SCRIPT_DIR/skills/$skill" ]; then
        cp -r "$SCRIPT_DIR/skills/$skill" "$SKILLS_DIR/"
        echo "  Installed: $skill"
    else
        echo "  Skipped (not found): $skill"
    fi
done

# Install CLAUDE.md (the instructions that make Claude actually use the skills)
echo ""
echo "Installing CLAUDE.md (design instructions for Claude)..."
CLAUDE_MD="$HOME/.claude/CLAUDE.md"
if [ -f "$CLAUDE_MD" ]; then
    echo ""
    echo "  Existing CLAUDE.md found — appending design instructions..."
    echo "" >> "$CLAUDE_MD"
    echo "---" >> "$CLAUDE_MD"
    echo "" >> "$CLAUDE_MD"
    cat "$SCRIPT_DIR/CLAUDE.md" >> "$CLAUDE_MD"
    echo "  Appended to existing CLAUDE.md"
else
    cp "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_MD"
    echo "  Installed CLAUDE.md"
fi

# Install design style template
echo ""
echo "Installing design style template..."
mkdir -p "$HOME/.claude/memory"
if [ ! -f "$HOME/.claude/memory/design-style.md" ]; then
    cp "$SCRIPT_DIR/design-style-template.md" "$HOME/.claude/memory/design-style.md"
    echo "  Installed design-style.md (edit it with your own preferences)"
else
    echo "  design-style.md already exists — skipping (your preferences are safe)"
fi

echo ""
echo "============================================"
echo "  Installation Complete"
echo "============================================"
echo ""
echo "  What was installed:"
echo ""
echo "  THE BRAIN"
echo "    /ui-ux-pro-max       — 300+ design rules, 161 palettes, 57 fonts"
echo "                           This is the main skill. It makes Claude think"
echo "                           like a designer instead of guessing."
echo ""
echo "  BUILD UIs"
echo "    /frontend-design     — Production-grade UIs, avoids generic AI look"
echo "    /ui-styling           — shadcn/ui + Tailwind, themes, dark mode"
echo "    /web-artifacts-builder — Multi-component HTML artifacts"
echo ""
echo "  PLAN & REVIEW"
echo "    /design-system        — Token architecture, component specs"
echo "    /brand-guidelines     — Enforce brand consistency"
echo "    /theme-factory        — 10 pre-set themes for any artifact"
echo ""
echo "  CREATE ASSETS"
echo "    /design               — Logos, banners, slides, icons, social graphics"
echo "    /banner-design         — 22 styles for social/ads/web/print"
echo "    /canvas-design         — Posters, visual art as PNG/PDF"
echo "    /slides                — Strategic HTML presentations with charts"
echo "    /frontend-slides       — Animation-rich HTML presentations"
echo "    /excalidraw-diagrams   — Architecture diagrams, flowcharts"
echo "    /algorithmic-art       — Generative art with p5.js"
echo ""
echo "  REFERENCE"
echo "    design-systems/        — 69 DESIGN.md files (Apple, Stripe, Linear,"
echo "                             Spotify, etc.) Say 'make it look like Stripe'"
echo ""
echo "  CONFIG"
echo "    CLAUDE.md              — Teaches Claude how to use all the skills"
echo "    design-style.md        — Your personal aesthetic preferences"
echo ""
echo "============================================"
echo ""
echo "  TRY IT NOW — open Claude Code and paste:"
echo ""
echo "    Build me a landing page for a meditation app."
echo "    Dark mode, premium, minimal. Use the Stripe"
echo "    design system as inspiration."
echo ""
echo "============================================"
echo ""
