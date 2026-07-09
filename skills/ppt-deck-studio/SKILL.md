---
name: ppt-deck-studio
description: Research-backed presentation deck creation workflow for PPT, PPTX, PowerPoint, HTML slides, browser presentations, speaker notes, narration scripts, presenter mode, image-card decks, and Chinese or English 幻灯片/演示文稿/PPT. Use when Codex must write, design, polish, convert, or verify a presentation deck from a topic, outline, source documents, screenshots, data, research notes, or existing slides, especially when the user needs editable PPTX, high-aesthetic HTML slides, Swiss/editorial style, timed talks, transcripts, or shareable visual cards.
---

# PPT Deck Studio

## Overview

Create presentation decks as finished artifacts, not only outlines. Combine narrative planning, visual direction, output routing, production, and rendered QA so the final deck is usable for a real talk, pitch, report, class, or social-card share.

This skill is inspired by seven public PPT/slide projects. Read `../../references/ppt-deck-studio/source-projects.md` when provenance or route selection matters.

## Route First

Choose one primary route before building:

- **Editable PPTX**: Use when the user asks for PowerPoint, PPTX, editable slides, corporate/report decks, charts, reusable templates, or speaker notes inside the deck. Read `../../references/ppt-deck-studio/editable-pptx.md`.
- **HTML stage deck**: Use when the user asks for high-aesthetic browser slides, web-like interaction, shortcuts, timer, transcript, presenter view, offline sharing, or a live talk deck. Read `../../references/ppt-deck-studio/html-stage-deck.md`.
- **Image-card deck**: Use when the user wants polished visual cards, cute/NPC style, social media images, NotebookLM-style summary cards, or a first-pass content visualization. Read `../../references/ppt-deck-studio/image-card-deck.md`.

If the user does not specify a route, default to editable PPTX for business/report use, HTML stage deck for talks and demos, and image-card deck for lightweight sharing. Ask only when the output format or audience risk is genuinely ambiguous.

## Core Workflow

1. **Lock the deck contract**: Define audience, occasion, language, duration, output format, slide count, aspect ratio, source constraints, brand constraints, and whether speaker notes/narration are needed.
2. **Extract the story**: Convert source material into an insight ledger: claim, evidence, visual candidate, source, and audience implication. Do not turn every paragraph into a slide.
3. **Storyboard before production**: Create slide titles as conclusions, not labels. Group slides into sections with clear tension, proof, and next action.
4. **Pick a visual system**: Read `../../references/ppt-deck-studio/style-systems.md` for style families. Set typography, color, density, grids, chart style, image treatment, and motion/interaction rules before making slides.
5. **Produce the artifact**: Use the selected route reference. Prefer real editable objects for PPTX, semantic HTML for browser slides, and intentional fixed-ratio composition for image cards.
6. **Render and inspect**: Always verify the artifact visually. Read `../../references/ppt-deck-studio/quality-gates.md` before final delivery.
7. **Deliver cleanly**: Provide the finished file(s), note the route used, list any important caveats, and include source/provenance notes when the deck depends on external material.

## Deck Contract

Before building, write or infer a compact contract:

- `purpose`: persuade, teach, report, pitch, review, launch, keynote, workshop, or social share
- `audience`: decision-makers, practitioners, investors, students, public audience, or internal team
- `route`: editable-pptx, html-stage-deck, or image-card-deck
- `duration`: talk length or reading depth
- `slide_count`: target range, not a hard number unless requested
- `tone`: executive, technical, editorial, Swiss, playful, cute, premium, academic, or practical
- `assets`: logos, brand guide, screenshots, data, photos, charts, source docs
- `notes`: speaker notes, transcript, voiceover script, citations, appendix

When the contract is incomplete, make a conservative assumption and continue. Ask the user only for missing brand assets, required source files, or decisions that would change the artifact substantially.

## Writing Rules

- Make each slide answer one question or advance one beat.
- Use action titles: "Retention is improving in enterprise" instead of "Retention".
- Put the strongest idea in the most visible position; remove decorative text that does not help the audience decide.
- Treat charts as arguments: title the takeaway, label the anomaly, and include units/denominators.
- Keep dense detail in speaker notes or appendix unless the deck is a leave-behind report.
- Use bilingual text only when the audience needs it; otherwise keep one language consistent.
- Respect copyright and source access. Use user-provided, licensed, or publicly accessible materials; do not bypass paywalls, anti-bot controls, or access restrictions.
- For voice cloning or narration in another person's voice, require explicit consent and legally provided reference audio. Otherwise write a neutral narration script.

## Visual Rules

- Choose a grid system before styling individual slides.
- Vary layouts by section role, not randomly.
- Use real photos, product screenshots, charts, or generated bitmap images when visuals carry meaning.
- Avoid one-note palettes, generic purple-blue gradients, decorative blobs, and hero-style marketing layouts for operational decks.
- Keep text inside stable bounds on desktop and mobile exports. Test the longest title and densest slide.
- For PPTX, avoid rasterized text unless the user explicitly chooses image-card output.
- For HTML, include keyboard controls, focus-safe interaction, and print/export styling when it is a live presentation.
- For image cards, design for legibility after social-platform compression.

## Production Hints

- For real `.pptx` work, also use the bundled Presentations skill if available, then render slides to images/PDF for QA.
- For data-heavy decks, use structured data tools and generate charts from source data rather than redrawing values by hand.
- For simple HTML talks, copy `../../assets/ppt-deck-studio/html-stage-template.html` and replace content, styles, and notes.
- For multi-format requests, build one source storyboard and then export route-specific artifacts from it.
- For an existing deck redesign, preserve the user's factual content first, then improve hierarchy, layout, and rhythm.

## Final QA

Before final response, read `../../references/ppt-deck-studio/quality-gates.md` and report what was verified. If something could not be rendered or checked, state that plainly.

## References

- `../../references/ppt-deck-studio/source-projects.md`: Study notes from the seven source projects and when to borrow each idea.
- `../../references/ppt-deck-studio/editable-pptx.md`: Editable PowerPoint route.
- `../../references/ppt-deck-studio/html-stage-deck.md`: Browser presentation route.
- `../../references/ppt-deck-studio/image-card-deck.md`: Image-card route.
- `../../references/ppt-deck-studio/style-systems.md`: Visual families and deck aesthetics.
- `../../references/ppt-deck-studio/quality-gates.md`: Final review checklist.
