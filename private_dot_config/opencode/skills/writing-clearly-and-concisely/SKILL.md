---
name: writing-clearly-and-concisely
description: "Use ONLY when the user explicitly requests the 'writing-clearly-and-concisely' skill or asks to write or edit prose, documentation, specs, READMEs, PRs, or commit messages clearly and concisely."
---

# Writing Clearly and Concisely

## Overview

Apply classic principles of clear communication (*The Elements of Style*) to produce punchy, professional, and fluff-free technical writing. Every sentence must earn its place.

**Announce at start:** "I'm using the writing-clearly-and-concisely skill to craft clean, direct prose."

---

## Core Rules

### 1. BLUF (Bottom Line Up Front)
- Lead with the decision, conclusion, or action item.
- Put context, rationale, and background details *after* the core takeaway.

### 2. Omit Needless Words
- Cut conversational filler, corporate jargon, and generic AI transitions (e.g., *"Furthermore"*, *"It is important to note that"*, *"In order to"*, *"Let's dive in"*).
- If a sentence can be cut without losing meaning, delete it.
- If a phrase can be replaced by a single word, replace it (e.g., *"make a decision"* $\to$ *"decide"*, *"at the present time"* $\to$ *"now"*).

### 3. Use Active Voice and Concrete Verbs
- Make the actor do the action: *"The service rejects invalid tokens"* (active), not *"Invalid tokens are rejected by the service"* (passive).
- Prefer strong, descriptive verbs over weak verb-noun combinations.

### 4. Be Specific and Concrete
- Avoid vague qualifiers (*"very fast"*, *"extremely reliable"*, *"several options"*).
- Use exact names, specific numbers, and concrete interfaces (*"under 50ms"*, *"3 fallback options: X, Y, Z"*).

### 5. Structure for Fast Scanning
- Use bullet points, bold key terms, and markdown tables instead of dense blocks of text.
- Keep paragraphs short (2–4 sentences max) with one topic per paragraph.

---

## Self-Review Checklist

Before finalizing any text, run this quick filter:
1. **First 5 seconds:** Is the core conclusion or requirement instantly visible?
2. **Word diet:** Can 20% of the words be removed without losing technical meaning?
3. **Fluff check:** Did any generic AI phrases or empty buzzwords slip in?
