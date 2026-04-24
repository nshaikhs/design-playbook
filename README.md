# Claude Code Design Playbook

Turn Claude Code into a design department. 15 skills, 69 real-world design systems, and a personal style engine — all installed in one command.

## What This Gives You

### 15 Design Skills

| Skill | What It Does |
|-------|-------------|
| `/frontend-design` | Build production-grade UIs that don't look like generic AI output |
| `/ui-ux-pro-max` | 50+ design styles, 161 color palettes, 57 font pairings, 99 UX guidelines |
| `/ui-styling` | shadcn/ui + Tailwind — themes, dark mode, accessibility, responsive |
| `/design-system` | Token architecture (primitive > semantic > component), CSS variables |
| `/design` | Full brand identity — logos, banners, slides, icons, social graphics |
| `/banner-design` | 22 banner styles for social media, ads, web heroes, and print |
| `/canvas-design` | Static visual art — posters, prints, certificates as PNG/PDF |
| `/theme-factory` | 10 pre-set themes you can apply to any artifact |
| `/brand-guidelines` | Enforce brand colors and typography across everything |
| `/web-artifacts-builder` | Multi-component HTML artifacts with interactivity |
| `/slides` | Strategic HTML presentations with Chart.js and data viz |
| `/frontend-slides` | Animation-rich HTML presentations |
| `/excalidraw-diagrams` | Architecture diagrams, flowcharts, decision trees |
| `/algorithmic-art` | Generative art using p5.js with seeded randomness |

### 69 Real-World Design Systems

Drop any of these into your project and tell Claude "build a page that looks like this":

> Apple, Stripe, Linear, Spotify, Airbnb, Figma, Notion, Vercel, Supabase, Coinbase, Uber, Pinterest, Cursor, Framer, Ferrari, Tesla, SpaceX, BMW, Lamborghini, Revolut, Wise, and 48 more.

Each one is a `DESIGN.md` file — a plain-text design system that Claude reads to generate consistent, on-brand UI. Based on the [DESIGN.md standard](https://stitch.withgoogle.com/docs/design-md/overview/) introduced by Google Stitch.

### Personal Style Engine

The included `design-style-template.md` teaches Claude your aesthetic preferences — colors, fonts, animation rules, spacing, inspiration sources. Claude reads it at the start of every session so your output stays consistent.

## Install (Zero Effort)

Open Claude Code, paste this, hit enter. Claude does the rest:

```
I just got access to a design playbook for Claude Code. Please set it up for me. Here's what to do:

1. Clone the repo: `git clone https://github.com/nshaikhs/design-playbook.git ~/design-playbook`
2. Run the installer: `bash ~/design-playbook/install.sh`
3. Copy the design style template into my Claude memory so you read it every session: `mkdir -p ~/.claude/memory && cp ~/design-playbook/design-style-template.md ~/.claude/memory/design-style.md`
4. After install, verify the skills are there by listing what's in `~/.claude/skills/` and confirming the design skills show up
5. Then give me a quick tour of what I now have — what each skill does, when to use it, and show me 5 example prompts I can try right now to test the design skills
```

That's it. Claude will clone the repo, install 15 design skills, set up your style config, and walk you through everything.

### Manual Install (if you prefer)

```bash
git clone https://github.com/nshaikhs/design-playbook.git ~/design-playbook
cd ~/design-playbook
bash install.sh
mkdir -p ~/.claude/memory
cp design-style-template.md ~/.claude/memory/design-style.md
```

### Set Up Your Personal Style

1. Edit `~/.claude/memory/design-style.md` with your own color, font, and animation preferences
2. Claude reads it automatically at the start of every session
3. Your output will stay consistent across projects without repeating yourself

## How to Use

Open Claude Code and try:

**Build a landing page:**
> "Build me a landing page for a fitness app. Dark mode, premium feel."

**Match a specific brand:**
> "Read the Stripe DESIGN.md and build me a pricing page in that style."

**Design a logo:**
> "/design logo for a coffee subscription service called 'First Pour'"

**Create a presentation:**
> "/slides — quarterly business review, 12 slides, clean and minimal"

**Make a banner:**
> "/banner-design — LinkedIn cover image for a fintech startup"

**Review your UI:**
> "Review this page for design quality — spacing, typography, color, accessibility"

## What's the Design Style Template?

It's the highest-leverage file in this package. Instead of describing your aesthetic every time, you define it once:

- Your color palette and preferred mode (dark/light)
- Typography choices and scale
- Animation rules and timing
- Layout principles and spacing
- Inspiration sources Claude should reference

Claude follows these rules across every project, every session. Your output looks like *you* designed it, not like AI slop.

## Recommended Stack

These skills work best with:

- **Next.js** + **Tailwind CSS** + **shadcn/ui** — the component and styling layer
- **Framer Motion** — for animation
- **reactbits.dev** — 135+ animated React components
- **Google Fonts** — Inter (UI), Instrument Serif (headlines), JetBrains Mono (code)

## Credits

This playbook bundles open-source skills from:

- [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) — 69 design system files
- [Anthropic](https://github.com/anthropics) — frontend-design, canvas-design, ui-styling, theme-factory, brand-guidelines, design-system, slides, web-artifacts-builder
- [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) — UI/UX design intelligence
- [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — design, banner-design

All skills retain their original licenses. See individual skill directories for license details.

## Requirements

- [Claude Code](https://claude.ai/download) installed (`npm install -g @anthropic-ai/claude-code`)
- A Claude Pro, Team, or Enterprise subscription

## License

MIT — Use it, share it, remix it.
