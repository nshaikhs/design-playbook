# Design Style

Your personal aesthetic ruleset. Claude reads this every session and follows it.
Edit this to match YOUR taste, then save it at ~/.claude/memory/design-style.md

---

## Aesthetic
- Premium dark mode (pure black #0A0A0A, not dark gray)
- Warm accents (gold, amber) over cool blues
- Massive negative space — 60%+ whitespace
- Large bold headlines + thin body text for hierarchy
- 1px borders at 10% white opacity
- Glass effects: rgba(255,255,255,0.1), backdrop-filter blur(12px)

## Typography
- **UI:** Inter
- **Headlines:** Instrument Serif (elegant), Bricolage Grotesque (bold SaaS), Space Grotesk (technical)
- **Code:** JetBrains Mono
- **Scale:** Major Third (1.25) — 12/14/16/20/25/31/39/49/61px
- **Headings:** line-height 1.1-1.2, letter-spacing -0.02em

## Animation Rules
- All animations <300ms
- Springs for gestures, ease-out for entrances
- Fade up: opacity 0->1, y 30->0, 600ms ease-out
- Stagger: 80-100ms between elements
- Hover: scale(1.03) translateY(-2px) 180ms
- ONLY animate transform + opacity (GPU-accelerated)

## Color Palettes to Try
- Dark + Gold: #0A0A0A / #D4AF37 / #F5F5F5
- Dark + Coral: #0A0A0A / #FF6B6B / #FAFAFA
- Navy + White: #1A1A2E / #E94560 / #FFFFFF
- Cream + Black: #FAF9F6 / #1A1A1A / #C9A96E

## Inspiration Sources
- 222.place — dark minimalist social discovery
- floguo.com — founding design engineer at Paradigm
- interfacecraft.dev — visual consistency, typography hierarchy
- linear.app — clean product UI
- stripe.com — documentation design
- Framer design system — gold standard

## Default Tech Stack
- Next.js + Tailwind + shadcn/ui
- Framer Motion or CSS animations
- reactbits.dev for animated React components
- Google Fonts: Inter, Instrument Serif, JetBrains Mono

## SaaS Page Structure
1. Hero (bold headline, single CTA, product visual)
2. Social Proof Bar (logos)
3. Features Grid (bento or alternating)
4. Product Demo
5. How It Works (3 steps)
6. Testimonials
7. Pricing (2-3 tiers)
8. FAQ
9. Final CTA
10. Footer
