# Design Playbook — Claude Instructions

You have 15 design skills installed. Use them. Don't guess at design decisions when you have a searchable database of 300+ rules, 161 palettes, 57 font pairings, and 59 real-world design systems available.

---

## Your Primary Design Skill: ui-ux-pro-max

This is your most powerful design tool. It's a complete design intelligence system with:
- **50+ UI styles** (glassmorphism, minimalism, brutalism, neumorphism, bento grid, dark mode, etc.)
- **161 color palettes** organized by industry and product type
- **57 font pairings** with personality matching
- **99 UX guidelines** with priority levels (CRITICAL > HIGH > MEDIUM > LOW)
- **25 chart types** with accessibility rules
- **10 tech stacks** (React, Next.js, Vue, Svelte, SwiftUI, React Native, Flutter, Tailwind, shadcn/ui, HTML/CSS)
- **A searchable CLI tool** that generates complete design systems

### When to Use ui-ux-pro-max

Use it EVERY TIME you:
- Start building any UI (page, component, layout)
- Need to pick colors, fonts, or a design style
- Review existing UI for quality issues
- Get asked to make something "look better" or "more professional"
- Build a landing page, dashboard, admin panel, or any web/mobile app

### How to Use It

**Generate a complete design system (do this first for any new project):**
```bash
python3 ~/.claude/skills/ui-ux-pro-max/scripts/search.py "fintech dashboard modern minimal" --design-system -p "ProjectName"
```

**Search specific design domains:**
```bash
# Color palettes
python3 ~/.claude/skills/ui-ux-pro-max/scripts/search.py "luxury elegant" --domain color

# Font pairings
python3 ~/.claude/skills/ui-ux-pro-max/scripts/search.py "bold modern" --domain typography

# UX best practices
python3 ~/.claude/skills/ui-ux-pro-max/scripts/search.py "animation accessibility" --domain ux

# Style options
python3 ~/.claude/skills/ui-ux-pro-max/scripts/search.py "glassmorphism dark" --domain style
```

**Available search domains:** product, style, color, typography, chart, ux, google-fonts, landing, react, web, prompt

---

## Skill Routing — Which Skill for What

| Task | Primary Skill | Supporting Skills |
|------|--------------|-------------------|
| **Starting a new project/page** | `/ui-ux-pro-max` (generate design system first) | `/frontend-design` (build it) |
| **Building UI components** | `/frontend-design` | `/ui-styling` for shadcn/Tailwind specifics |
| **Matching a specific brand** | Look in `~/.claude/skills/design-systems/` for their DESIGN.md | `/frontend-design` to implement |
| **Reviewing UI quality** | `/ui-ux-pro-max` (run the checklist) | Check rules by priority 1-10 |
| **Creating a logo** | `/design` | |
| **Making banners/social graphics** | `/banner-design` | `/design` for social photos |
| **Building presentations** | `/slides` or `/frontend-slides` | `/theme-factory` for pre-set themes |
| **Creating posters/visual art** | `/canvas-design` | `/algorithmic-art` for generative |
| **Architecture diagrams** | `/excalidraw-diagrams` | |
| **Setting up a design system** | `/design-system` (token architecture) | `/ui-ux-pro-max` for rules |
| **Enforcing brand consistency** | `/brand-guidelines` | `/theme-factory` |

---

## 59 Real-World Design Systems

You have DESIGN.md files from 59 companies in `~/.claude/skills/design-systems/`. These are plain-text design systems you can read and implement.

When a user says "make it look like Stripe" or "I want a Linear-style dashboard":
1. Read the company's DESIGN.md: `~/.claude/skills/design-systems/stripe/README.md`
2. Use those rules as your design foundation
3. Build with `/frontend-design`

Available: Apple, Stripe, Linear, Spotify, Airbnb, Figma, Notion, Vercel, Supabase, Coinbase, Uber, Pinterest, Cursor, Framer, Ferrari, Tesla, SpaceX, BMW, Lamborghini, Revolut, Wise, and 48 more.

---

## Personal Design Style

If `~/.claude/memory/design-style.md` exists, read it at session start. It contains the user's personal aesthetic preferences — colors, fonts, animation rules, spacing. Follow it as your default unless told otherwise.

---

## Design Quality Rules

Before delivering any UI work:

1. **Run ui-ux-pro-max checklist** — check Priority 1-3 rules minimum (Accessibility, Touch/Interaction, Performance)
2. **No emoji as icons** — use SVG icons (Lucide, Heroicons)
3. **Contrast ratios** — 4.5:1 minimum for text, test both light and dark
4. **Touch targets** — minimum 44x44px
5. **Animations** — 150-300ms, transform/opacity only, respect reduced-motion
6. **Typography** — minimum 16px body, 1.5 line-height, 65-75 chars per line
7. **Mobile first** — design for small screens, then scale up

---

## Default Tech Stack

When building UI, default to:
- **Next.js** + **Tailwind CSS** + **shadcn/ui**
- **Framer Motion** for animations
- **Google Fonts**: Inter (UI), Instrument Serif (headlines), JetBrains Mono (code)
- **reactbits.dev** for animated React components

Override this if the user specifies a different stack.
