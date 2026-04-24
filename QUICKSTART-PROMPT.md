# Quickstart Prompt

Copy everything below the line and paste it into Claude Code. That's it.

---

I just got access to a design playbook for Claude Code. Please set it up for me. Here's what to do:

1. Clone the repo: `git clone https://github.com/nshaikhs/design-playbook.git ~/design-playbook`
2. Run the installer: `bash ~/design-playbook/install.sh`
3. Copy the CLAUDE.md instructions into my global Claude config so you always know how to use the design skills: `cp ~/design-playbook/CLAUDE.md ~/.claude/CLAUDE.md` — if a CLAUDE.md already exists there, append the contents instead of overwriting
4. Copy the design style template into my Claude memory so you read it every session: `mkdir -p ~/.claude/memory && cp ~/design-playbook/design-style-template.md ~/.claude/memory/design-style.md`
5. After install, verify everything by:
   - Listing what's in `~/.claude/skills/` and confirming 15 design skills are there
   - Confirming CLAUDE.md is in place at `~/.claude/CLAUDE.md`
   - Confirming the style template is at `~/.claude/memory/design-style.md`
6. Then read the CLAUDE.md you just installed and give me a tour of what I now have. I especially want to understand:
   - What ui-ux-pro-max does (the main skill) and how it's different from the others
   - How to use the 59 design systems (like saying "make it look like Stripe")
   - Show me 5 example prompts I can try right now, starting with the most impressive one
   - What I should customize in the design-style-template to make it mine

This package is from my friend Najib. It includes 15 design skills, 59 real-world design systems from companies like Apple/Stripe/Linear/Spotify, and a CLAUDE.md that teaches you how to use all of it properly. The star of the show is ui-ux-pro-max — a design intelligence system with 300+ rules, 161 color palettes, and 57 font pairings that you can search.
