Review and humanize the text in the specified file(s). Apply all writing rules from the global CLAUDE.md and fix every violation.

## What to check

Scan the entire file for:

1. **Banned words/phrases** — replace every instance (delve, utilize, leverage, robust, seamless, cutting-edge, innovative, transformative, furthermore, moreover, additionally, crucial, pivotal, comprehensive, "it's important to note", "in today's fast-paced world", etc.)
2. **Em dash overuse** — count them. If more than 1-2 per page, replace most with commas, periods, or colons.
3. **Missing contractions** — "do not" → "don't", "you will" → "you'll", "it is" → "it's", "we are" → "we're", etc.
4. **Title case headings** — convert all headings to sentence case (capitalize first word + proper nouns only).
5. **Monotonous rhythm** — find runs of 3+ sentences with similar length and restructure. Add fragments, vary length, break up SVO patterns.
6. **Uniform paragraph length** — if every paragraph is 3-4 sentences, merge some, split others, make a few one-liners.
7. **Hedging language** — "it's worth noting", "generally speaking", "in many cases" — either commit to the claim or delete the sentence.
8. **Passive voice** — flip to active. "Videos are created by our engine" → "Our engine creates videos."
9. **"Users" instead of "you"** — always address the reader directly.
10. **Announce-then-say pattern** — "In this section, we'll explore..." just cut it and say the thing.
11. **Summarize-what-you-just-said** — "To summarize...", "In conclusion..." — cut these closing paragraphs or rewrite as a forward-looking CTA.
12. **Overused transitions** — "furthermore", "moreover", "additionally" — delete or replace with natural connectors.
13. **Relentless positivity** — add honest trade-offs or specifics where everything reads like marketing fluff.

## How to apply

1. Read the file completely first.
2. List every violation found (grouped by category, with line numbers).
3. Then apply all fixes in a single pass using Edit.
4. After editing, re-read and verify the text sounds like a human copywriter, not an AI assistant.

## Tone target

The result should read like it was written by a sharp, experienced copywriter who:
- Talks to you directly, like a conversation
- Has opinions and isn't afraid to state them
- Uses short punchy sentences mixed with longer ones
- Doesn't waste words
- Sounds confident, not corporate

$ARGUMENTS
