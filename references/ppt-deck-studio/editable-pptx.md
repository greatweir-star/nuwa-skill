# Editable PPTX Route

Use this route for `.pptx`, PowerPoint, Keynote-importable, client-ready, board, sales, teaching, or report decks where editability matters.

## Production Principles

- Build with editable text boxes, shapes, tables, charts, icons, and placed images.
- Rasterize only photos, screenshots, generated artwork, or intentional image-card slides.
- Use a consistent theme: fonts, colors, section title pattern, chart palette, table style, footer/source treatment.
- Keep slide masters/templates lightweight unless the user supplied a template; avoid over-engineering masters for one-off decks.
- Put citations, methodological detail, and longer scripts into speaker notes or appendix.
- If narration is requested, write a voiceover script and timing plan first; embed audio only when the user asks and provides/approves assets.

## Workflow

1. Create a slide inventory with `section`, `title`, `takeaway`, `visual`, `body`, `notes`, and `source`.
2. Define reusable layouts: cover, section divider, thesis, comparison, chart, process, quote, case study, image hero, appendix.
3. Build the deck using the local presentation tooling. If the bundled Presentations skill is available, read it before generating or editing `.pptx`.
4. Render the finished deck to PNG/PDF for visual QA.
5. Inspect cover, one section divider, the densest slide, every chart/table slide, and final call-to-action.
6. Fix text overflow, misalignment, unreadable labels, missing sources, broken images, and non-editable text.

## Layout Standards

- Default to 16:9 unless the user requests another aspect ratio.
- Use a 12-column or 8-column grid. Align all titles, body blocks, charts, and images to that grid.
- Keep a stable title area across slides; vary content zones below it.
- Use large section numbers or compact breadcrumbs only when they help live navigation.
- Keep margins generous enough for projection: at least 4-6% of slide width on all sides.
- For dense reports, prefer smaller type with stronger hierarchy over squeezing everything into one large headline block.

## Chart And Data Standards

- Generate charts from source data rather than manually typing values into screenshots.
- Include units, date windows, denominators, and source notes.
- Use annotations for the single most important pattern.
- Avoid 3D charts, decorative gradients, and unlabeled axes.
- For executive decks, place the implication in the title and the metric definition in notes.

## Speaker Notes And Narration

- Add speaker notes for every slide in live-talk decks.
- Keep notes conversational: 90-140 spoken words per minute of planned talk time.
- For timed talks, include elapsed-time targets by section.
- For voiceover, write a separate narration script and mark where visuals change.
- Voice cloning requires explicit consent and authorized reference audio; otherwise provide a neutral script.

## Final Checks

- Open the PPTX after generation and render it.
- Confirm titles and main body text are editable.
- Confirm all external images are embedded or packaged.
- Confirm fonts are available or safely substituted.
- Confirm no text overflows the slide boundary after rendering.
- Confirm the deck still makes sense in slide sorter view.
