# claude-writing-rules

Global writing rules for [Claude Code](https://claude.ai/claude-code) that kill the AI voice. No more em dashes everywhere, no Title Case Everything, no "delve into the ever-evolving landscape." Just text that sounds like a person wrote it.

## What it does

Installs two things into your global `~/.claude/` config:

1. **`CLAUDE.md`**: writing rules loaded into every Claude Code session. They kick in automatically whenever Claude writes user-facing text (landing pages, blog posts, emails, docs, UI copy).

2. **`/humanize`**: a slash command you run on any file to scan and fix existing text.

## What the rules cover

- **60+ banned phrases**: "delve", "leverage", "robust", "seamless", "it's important to note", "in today's fast-paced world", and the rest of the AI vocabulary.
- **Zero em dashes**: replaced with commas, periods, or colons. Real people don't type em dashes because keyboards don't have the key.
- **Contractions always**: "don't" not "do not", "you'll" not "you will". Uncontracted text reads like a robot.
- **Sentence case headings**: "How to create listing videos" not "How To Create Listing Videos".
- **Rhythm**: varied sentence and paragraph length. Fragments allowed. No metronomic SVO patterns where every sentence is 18 words long.
- **Tone**: address "you" directly, have opinions, use specific numbers, active voice.
- **SEO**: keyword placement, FAQ sections, experience signals over generic filler.

## Install

```bash
git clone https://github.com/Rmalnoult/claude-writing-rules.git
cd claude-writing-rules
./install.sh
```

The script copies `CLAUDE.md` to `~/.claude/CLAUDE.md` and the `/humanize` command to `~/.claude/commands/humanize.md`.

If you already have a `~/.claude/CLAUDE.md`, it'll ask whether to append or replace.

## Usage

**Automatic**: the rules apply in every Claude Code session. When Claude writes text, it follows the rules without you asking.

**Manual**: run `/humanize` on any file to scan and fix violations:

```
/humanize app/pages/index.vue
```

## Why this exists

AI text has tells. GPTZero found that "play a significant role in shaping" appears 182x more in AI text than human text. Em dashes show up 8x more in ChatGPT output than in human writing. Title Case Everything is a dead giveaway.

These rules are based on research from GPTZero, Grammarly, Plagiarism Today, and conversion copywriting best practices (PAS, AIDA frameworks). The goal isn't to hide that you use AI. It's to make the output genuinely good.

## Customize

Edit `CLAUDE.md` to add your own voice. Common additions:

- Brand voice guidelines (tone, personality, vocabulary)
- Industry-specific terminology preferences
- Formatting conventions for your team
