# HTML Stage Deck Route

Use this route for browser-native presentations, visually ambitious talks, Swiss/editorial decks, demos, keyboard-driven sharing, or decks that need timer/transcript/presenter utilities.

## Production Principles

- Build the actual presentation as the first screen, not a landing page.
- Prefer a single self-contained HTML file for small decks; use a frontend app only when state, charts, media, or component complexity requires it.
- Keep each slide as semantic markup with a stable 16:9 stage.
- Use CSS variables for color, typography, spacing, and motion so the visual system stays coherent.
- Include print styles or an export path when the user may need PDF.
- Keep speaker notes/transcript data separate from visible slide text.

## Essential Features

- Keyboard navigation: ArrowLeft, ArrowRight, Space, Home, End.
- Visible progress indicator that does not compete with content.
- Optional presenter panel with current slide notes, next slide title, elapsed time, and total duration.
- Optional transcript mode for rehearsal or accessibility.
- Optional overview/grid mode for quick navigation.
- URL hash or query state so a shared link can open a specific slide.

## Starter Template

For simple decks, copy `assets/ppt-deck-studio/html-stage-template.html` from this repository and replace:

- `slides`: title, kicker, body, notes, and optional theme class.
- CSS variables in `:root`.
- Section-specific layout classes.
- Presenter notes and timing.

## Visual Direction

- For Swiss style, use strong grid alignment, generous whitespace, tight color discipline, numeric markers, and typographic contrast.
- For editorial style, use larger image crops, asymmetry, confident titles, and deliberate rhythm shifts.
- For technical talks, keep code/data panels dense but ordered; do not bury the claim.
- For product demos, make screenshots large and real; avoid abstract decoration when the audience needs to inspect the product.

## Accessibility And Delivery

- Keep slide text selectable.
- Ensure contrast is sufficient on projectors.
- Avoid animations that hide critical content until the speaker clicks unless requested.
- Provide notes/transcript for long talks.
- Test at desktop and projector-like aspect ratios; confirm there is no overlap or off-screen content.

## Final Checks

- Run the deck locally and click through every slide.
- Test keyboard shortcuts.
- Test presenter/notes/timer mode if included.
- Capture screenshots of the cover, densest slide, and final slide.
- Check exported PDF/print if the user asked for a handout.
