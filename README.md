# Claude Code Design Playbook

Turn Claude Code into a design department. One install gives you 15 design skills, 59 real-world design systems, and a personal style engine — and a CLAUDE.md that teaches Claude how to actually use all of it.

---

## How This Works (Read This First)

This package installs three things. All three matter:

| What gets installed | Why it matters | Without it |
|---|---|---|
| **CLAUDE.md** | Teaches Claude *how* to use the skills — which one to pick, when, and in what order | Claude has the skills but doesn't know when to use them. Like having a toolbox but no instructions |
| **15 design skills** | The actual design abilities — UI building, color picking, font pairing, logo creation, etc. | Claude has no design intelligence beyond its training data |
| **design-style.md** | Your personal aesthetic — colors, fonts, animation rules Claude follows every session | Claude picks random styles every time. No consistency across projects |

**The install script handles all three automatically.** But understanding what each piece does will help you get better results.

---

## Install (Paste Into Claude Code)

Open Claude Code, paste this entire block, hit enter. Claude does everything:

```
I just got access to a design playbook for Claude Code. Please set it up for me:

1. Clone the repo: `git clone https://github.com/nshaikhs/design-playbook.git ~/design-playbook`
2. Run the installer: `bash ~/design-playbook/install.sh`
3. Verify by listing `~/.claude/skills/` and confirming 15 design skills are there, CLAUDE.md is at `~/.claude/CLAUDE.md`, and design-style.md is at `~/.claude/memory/design-style.md`
4. Read the CLAUDE.md you just installed, then give me a tour of what I now have. I especially want to understand:
   - What ui-ux-pro-max does (the main skill) and how it's different from the others
   - How to use the 59 design systems (like saying "make it look like Stripe")
   - The 5 most impressive example prompts I can try right now
   - What I should customize in design-style.md to make it my own

This is a design playbook from my friend Najib. The star is ui-ux-pro-max — a design intelligence system with 300+ rules, 161 palettes, and 57 font pairings. The CLAUDE.md teaches you how to use everything.
```

That's it. Claude clones, installs, configures, and walks you through everything.

<details>
<summary>Manual install (if you prefer doing it yourself)</summary>

```bash
git clone https://github.com/nshaikhs/design-playbook.git ~/design-playbook
cd ~/design-playbook
bash install.sh
```

The install script handles the CLAUDE.md and design-style.md automatically. If you already have a CLAUDE.md, it appends instead of overwriting.

</details>

---

## The Star Skill: UI/UX Pro Max

This is the main skill and the reason this package exists. Everything else supports it.

**UI/UX Pro Max** is a complete design intelligence system. It gives Claude:

- **50+ UI styles** — glassmorphism, minimalism, brutalism, neumorphism, bento grid, dark mode, and more
- **161 color palettes** — organized by industry (fintech, healthcare, SaaS, luxury, etc.)
- **57 font pairings** — matched by personality (elegant, bold, playful, technical)
- **300+ design rules** — accessibility, touch targets, animation timing, layout, forms, navigation, charts
- **99 UX guidelines** — prioritized by severity (CRITICAL > HIGH > MEDIUM > LOW)
- **A searchable CLI** — generates complete design systems for any project
- **Pre-delivery checklists** — ensures nothing ships looking unprofessional

### Why this matters

Without this skill, Claude *guesses* at design. It picks colors that seem fine, uses spacing that looks okay, and produces output that looks like every other AI-generated page.

With this skill, Claude *searches a database* of real design standards. It picks a palette that matches your industry, applies accessibility rules, uses proper animation timing, and checks its own work against 300+ rules before delivering.

```
You: "Build me a landing page for a fitness app"

Claude WITHOUT Pro Max:  generic layout, random colors, AI slop
Claude WITH Pro Max:     searches 161 palettes for fitness/health, picks a matching 
                         style, applies 99 UX rules, checks accessibility contrast 
                         ratios, uses proper animation timing (150-300ms), validates 
                         touch targets (44px min), follows the pre-delivery checklist
```

---

## All 15 Skills

### How they work together

Think of it like a studio:
- **UI/UX Pro Max** = the creative director (decides what looks good and why)
- **Frontend Design** = the developer (builds the actual UI code)
- **Everything else** = specialists (one does logos, one does banners, one does slides, etc.)

Pro Max decides *what* to build. Frontend Design *builds* it. The CLAUDE.md file tells Claude this routing logic so it picks the right skill for each task.

### Full list

| Skill | Role | What It Does |
|-------|------|-------------|
| `/ui-ux-pro-max` | **Creative Director** | 300+ design rules, 161 palettes, 57 font combos, design system generator. The brain behind every design decision |
| `/frontend-design` | **Developer** | Builds production-grade UIs in code. Avoids generic AI look |
| `/ui-styling` | Styling | shadcn/ui + Tailwind — themes, dark mode, accessibility, responsive layouts |
| `/design-system` | Architecture | Token system (primitive > semantic > component), CSS variables, component specs |
| `/design` | Brand Identity | Full brand package — logos, banners, slides, icons, social graphics |
| `/banner-design` | Banners | 22 styles across social media, ads, web heroes, and print |
| `/canvas-design` | Visual Art | Static art — posters, prints, certificates as PNG/PDF |
| `/theme-factory` | Themes | 10 pre-set themes (Arctic Frost, Midnight Galaxy, Golden Hour, etc.) |
| `/brand-guidelines` | Brand Police | Enforces brand colors and typography consistency across everything |
| `/web-artifacts-builder` | HTML Artifacts | Multi-component interactive HTML artifacts |
| `/slides` | Presentations | Strategic HTML presentations with Chart.js data visualization |
| `/frontend-slides` | Animated Slides | Animation-rich HTML presentations |
| `/excalidraw-diagrams` | Diagrams | Architecture diagrams, flowcharts, decision trees |
| `/algorithmic-art` | Generative Art | Art using p5.js with seeded randomness and interactive parameters |

---

## 59 Real-World Design Systems

This is one of the most powerful features. You have the actual design language of 59 companies — their colors, typography, spacing, component patterns — as plain-text files Claude can read and implement.

**Tell Claude to match any company's aesthetic:**

```
"Read the Linear design system and build me a project dashboard in that style"

"I want my app to feel like Stripe — read their design system"

"Mix the Spotify dark mode vibe with Apple's typography"
```

### What's included

**Tech:** Linear, Notion, Figma, Vercel, Supabase, Stripe, Cursor, Raycast, Superhuman, Warp, and more

**AI:** Claude, Mistral, Cohere, Replicate, ElevenLabs, RunwayML, Ollama, Nvidia, and more

**Consumer:** Apple, Spotify, Airbnb, Uber, Pinterest, and more

**Luxury/Auto:** Ferrari, Tesla, BMW, Lamborghini, SpaceX, and more

See **[DESIGN-SYSTEMS.md](DESIGN-SYSTEMS.md)** for the full browsable list with vibes and use cases for each company.

---

## Your Personal Style: design-style.md

This is the highest-leverage file for day-to-day use. Instead of describing your aesthetic every time, you define it once and Claude follows it across every project, every session.

The template includes:
- Your color palette and preferred mode (dark/light)
- Typography choices (heading font, body font, code font)
- Animation rules and timing
- Layout principles and spacing
- Inspiration sources

**After install, edit `~/.claude/memory/design-style.md`** to match your personal taste. This is what makes Claude's output look like *you* designed it instead of generic AI.

---

## The CLAUDE.md (Why This Package Actually Works)

Most people install Claude Code skills and get mediocre results because Claude doesn't know *when* to use each skill. The CLAUDE.md solves this.

It teaches Claude:
- **UI/UX Pro Max comes first** — always generate a design system before building
- **Skill routing** — which skill for which task (logo? use `/design`. Landing page? start with `/ui-ux-pro-max` then build with `/frontend-design`)
- **The 59 design systems exist** — and how to read and implement them
- **Quality rules** — contrast ratios, touch targets, animation timing, mobile-first
- **Your style preferences** — to read design-style.md at session start

Without the CLAUDE.md, the skills are like tools in a drawer nobody opens. With it, Claude reaches for the right tool every time.

---

## Example Prompts to Try

After installing, open a new Claude Code session and try these:

**Build a landing page (uses Pro Max + Frontend Design):**
> "Build me a landing page for a meditation app. Dark mode, premium, minimal."

**Match a real brand (uses Design Systems + Frontend Design):**
> "Read the Stripe design system and build me a pricing page in that style."

**Generate a full design system (uses Pro Max CLI):**
> "Generate a complete design system for a fintech dashboard — colors, fonts, spacing, component rules."

**Design a logo (uses /design):**
> "/design logo for a coffee subscription service called 'First Pour'"

**Create a presentation (uses /slides):**
> "/slides — quarterly business review, 12 slides, clean and minimal"

**Make a banner (uses /banner-design):**
> "/banner-design — LinkedIn cover image for a fintech startup"

**Review existing UI (uses Pro Max checklist):**
> "Review this page for design quality — spacing, typography, color, accessibility."

---

## Recommended Stack

These skills work best with:

- **Next.js** + **Tailwind CSS** + **shadcn/ui** — the component and styling layer
- **Framer Motion** — for animation
- **reactbits.dev** — 135+ animated React components
- **Google Fonts** — Inter (UI), Instrument Serif (headlines), JetBrains Mono (code)

---

## What's in this repo

```
design-playbook/
  README.md                  ← You're reading this
  CLAUDE.md                  ← Instructions that teach Claude how to use the skills
  QUICKSTART-PROMPT.md       ← The paste-into-Claude-Code prompt
  DESIGN-SYSTEMS.md          ← Browsable list of all 59 design systems with vibes
  design-style-template.md   ← Personal aesthetic template (colors, fonts, animation)
  install.sh                 ← One-command installer
  skills/                    ← All 15 design skills
    ui-ux-pro-max/           ← The star — 300+ rules, 161 palettes, searchable CLI
    frontend-design/         ← Production UI builder
    design-systems/          ← 59 company design systems (Apple, Stripe, etc.)
    ... and 12 more
```

---

## Credits

This playbook bundles open-source skills from:

- [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) — 59 design system files
- [Anthropic](https://github.com/anthropics) — frontend-design, canvas-design, ui-styling, theme-factory, brand-guidelines, design-system, slides, web-artifacts-builder
- [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) — UI/UX design intelligence
- [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — design, banner-design

All skills retain their original licenses. See individual skill directories for license details.

## Requirements

- [Claude Code](https://claude.ai/download) installed (`npm install -g @anthropic-ai/claude-code`)
- A Claude Pro, Team, or Enterprise subscription

## License

MIT — Use it, share it, remix it.
