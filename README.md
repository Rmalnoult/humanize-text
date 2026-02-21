# humanize-text

A Claude Code plugin that makes AI-generated text sound human. Kills em dashes, corporate filler, triple patterns, sycophancy, and the robotic rhythm that screams "AI wrote this."

**Zero token cost when you're not writing text.** The rules only load when Claude writes user-facing content or when you run `/humanize`.

## Install

```bash
/plugin marketplace add Rmalnoult/humanize-text
/plugin install humanize-text
```

## How it works

The plugin adds a `humanize` skill that Claude auto-invokes when writing user-facing text (blog posts, landing pages, marketing copy, UI strings, docs, emails). The rules only load into context when needed, so there's no token overhead during normal coding sessions.

You can also run it manually on any file:

```
/humanize app/pages/index.vue
```

## What the rules cover

- **90+ banned phrases**: "delve", "leverage", "robust", "seamless", "it's important to note", "in today's fast-paced world", "great question", "landscape", "tapestry", and the rest of the AI vocabulary.
- **Banned patterns**: "This is not just X, it's Y", "From startups to enterprises", "Whether you're X or Y", and other structural crutches AI leans on.
- **Zero em dashes**: replaced with commas, periods, or colons. Real people don't type them because keyboards don't have the key.
- **Contractions always**: "don't" not "do not", "you'll" not "you will". Uncontracted text reads like a robot.
- **Sentence case headings**: "How to create listing videos" not "How To Create Listing Videos".
- **Structural tells**: breaks the triple pattern, mirror structure, qualifying openers, enumeration addiction, and balanced-take bias that AI defaults to.
- **Predictability**: unexpected comparisons, register mixing, domain-specific vocabulary, and specific details over generic claims. Targets the perplexity and burstiness signals that detectors actually measure.
- **Anti-sycophancy**: no "great question", no "you're absolutely right", no flattery-as-transition.
- **Voice anchor**: pick one voice before writing and stick with it. Inconsistent tone is a top AI tell.
- **Rhythm**: varied sentence and paragraph length. Fragments allowed. No metronomic SVO patterns where every sentence is 18 words long.
- **Tone**: address "you" directly, have opinions, use specific numbers, active voice, acknowledge trade-offs.
- **SEO**: keyword placement, FAQ sections, experience signals over generic filler.
- **Before/after examples**: three concrete examples showing what AI text looks like and what the human rewrite should be.

## Why this exists

AI text has tells. GPTZero found that "play a significant role in shaping" appears 182x more in AI text than human text. Em dashes show up 8x more in ChatGPT output than in human writing. Title Case Everything is a dead giveaway.

But word bans aren't enough. AI detectors measure **perplexity** (how predictable the next word is) and **burstiness** (how much sentence length varies). They also catch structural patterns: the triple pattern ("faster, smarter, more efficient"), mirror constructions, and transition-word density. Research also shows that telling an LLM "never use X" can [backfire](https://medium.com/@scott_waddell/how-i-got-claude-and-chatgpt-to-stop-being-sycophantic-cheerleaders-7ab0b06f3111), so this plugin includes positive examples of good writing, not just a ban list.

These rules are based on research from [GPTZero](https://gptzero.me/news/detecting-ai-humanized-text-how-gptzero-stays-ahead/), Grammarly, Plagiarism Today, conversion copywriting best practices (PAS, AIDA), and [sycophancy research](https://www.theregister.com/2025/08/13/claude_codes_copious_coddling_confounds/) from Anthropic and Stanford.

## Repo structure

```
.claude-plugin/
  marketplace.json          # makes this repo a plugin marketplace
plugins/
  humanize-text/
    .claude-plugin/
      plugin.json           # plugin metadata
    skills/
      humanize/
        SKILL.md            # the rules + /humanize command
```

## Customize

Fork the repo and edit `plugins/humanize-text/skills/humanize/SKILL.md`. Add your brand voice, terminology preferences, or formatting conventions. Then point your install at your fork.
