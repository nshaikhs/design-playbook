# Claude Code Design Playbook

Turn Claude Code into a design department. 15 skills, 69 real-world design systems, and a personal style engine — all installed in one command.

## The Star: UI/UX Pro Max

This is the main skill and the reason this package exists. It's a complete design intelligence system that gives Claude:

- **50+ UI styles** — glassmorphism, minimalism, brutalism, neumorphism, bento grid, dark mode, and more
- **161 color palettes** — organized by industry (fintech, healthcare, SaaS, luxury, etc.)
- **57 font pairings** — matched by personality (elegant, bold, playful, technical)
- **99 UX guidelines** — prioritized by severity (CRITICAL, HIGH, MEDIUM, LOW)
- **300+ design rules** — accessibility, touch targets, animation timing, layout, forms, navigation, charts
- **A searchable CLI** — generate a complete design system for any project in one command
- **Pre-delivery checklists** — so nothing ships looking unprofessional

Without this skill, Claude guesses at design. With it, Claude searches a database of real design standards and makes informed decisions. It's the difference between "AI slop" and output that looks like a real designer made it.

### What it looks like in practice

```
> "Build me a landing page for a fitness app"

Claude (without this skill): generic layout, random colors, looks like every other AI page
Claude (with this skill): searches 161 palettes for fitness/health, picks a style that 
matches, applies 99 UX rules, checks accessibility, uses proper animation timing
```

## All 15 Skills

| Skill | What It Does |
|-------|-------------|
| `/ui-ux-pro-max` | **The brain** — 300+ design rules, 161 palettes, 57 font combos, design system generator |
| `/frontend-design` | **The builder** — production-grade UIs that don't look like generic AI output |
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

### How they work together

**ui-ux-pro-max** is the brain — it plans the design, picks colors/fonts/styles, and reviews quality. **frontend-design** is the builder — it writes the actual code. The other skills are specialists for specific outputs (logos, banners, slides, art). Think of it as: Pro Max decides *what* to build, frontend-design *builds* it.

## 69 Real-World Design Systems

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
3. Copy the CLAUDE.md instructions into my global Claude config so you always know how to use the design skills: `cp ~/design-playbook/CLAUDE.md ~/.claude/CLAUDE.md` — if a CLAUDE.md already exists there, append the contents instead of overwriting
4. Copy the design style template into my Claude memory so you read it every session: `mkdir -p ~/.claude/memory && cp ~/design-playbook/design-style-template.md ~/.claude/memory/design-style.md`
5. After install, verify everything by listing `~/.claude/skills/` and confirming the 15 design skills are there
6. Then read the CLAUDE.md you just installed and give me a tour of what I now have. I especially want to understand what ui-ux-pro-max does (the main skill), how to use the 69 design systems, and show me 5 example prompts I can try right now
```

The CLAUDE.md is the key — it teaches Claude *how* to use the skills, when to reach for each one, and makes ui-ux-pro-max the default starting point for any design work.

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
