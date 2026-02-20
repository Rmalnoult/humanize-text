# claude-writing-rules

A Claude Code plugin that makes AI-generated text sound human. Kills em dashes, title case headings, corporate filler, and the robotic rhythm that screams "AI wrote this."

**Zero token cost when you're not writing text.** The rules only load when Claude writes user-facing content or when you run `/humanize`.

## Install

```bash
/plugin marketplace add Rmalnoult/claude-writing-rules
/plugin install writing-rules
```

That's it. No shell scripts, no copying files around.

## How it works

The plugin adds a `humanize` skill that Claude auto-invokes when writing user-facing text (blog posts, landing pages, marketing copy, UI strings, docs, emails). The rules only load into context when needed, so there's no token overhead during normal coding sessions.

You can also run it manually on any file:

```
/humanize app/pages/index.vue
```

## What the rules cover

- **60+ banned phrases**: "delve", "leverage", "robust", "seamless", "it's important to note", "in today's fast-paced world", and the rest of the AI vocabulary.
- **Zero em dashes**: replaced with commas, periods, or colons. Real people don't type them because keyboards don't have the key.
- **Contractions always**: "don't" not "do not", "you'll" not "you will". Uncontracted text reads like a robot.
- **Sentence case headings**: "How to create listing videos" not "How To Create Listing Videos".
- **Rhythm**: varied sentence and paragraph length. Fragments allowed. No metronomic SVO patterns where every sentence is 18 words long.
- **Tone**: address "you" directly, have opinions, use specific numbers, active voice.
- **SEO**: keyword placement, FAQ sections, experience signals over generic filler.

## Why this exists

AI text has tells. GPTZero found that "play a significant role in shaping" appears 182x more in AI text than human text. Em dashes show up 8x more in ChatGPT output than in human writing. Title Case Everything is a dead giveaway.

These rules are based on research from GPTZero, Grammarly, Plagiarism Today, and conversion copywriting best practices (PAS, AIDA frameworks). The goal isn't to hide that you use AI. It's to make the output genuinely good.

## Repo structure

```
.claude-plugin/
  marketplace.json          # makes this repo a plugin marketplace
plugins/
  writing-rules/
    .claude-plugin/
      plugin.json           # plugin metadata
    skills/
      humanize/
        SKILL.md            # the rules + /humanize command
```

## Customize

Fork the repo and edit `plugins/writing-rules/skills/humanize/SKILL.md`. Add your brand voice, terminology preferences, or formatting conventions. Then point your install at your fork.
