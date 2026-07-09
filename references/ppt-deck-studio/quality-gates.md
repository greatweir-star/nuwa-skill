# Quality Gates

Run these checks before final delivery.

## Content

- Every slide has a clear takeaway title.
- The deck has a visible beginning, middle, and end.
- Evidence supports the claims; missing sources are marked.
- Technical terms are defined or removed for nontechnical audiences.
- Speaker notes or appendix carry details that would overload the slide.

## Visual

- No text overlaps, clips, or escapes its container.
- Margins and alignment are consistent.
- The densest slide is still readable at presentation size.
- Images are sharp enough and show the actual subject.
- Color contrast works on a projector or in a PDF.
- Charts have units, labels, and a stated takeaway.

## Artifact

- PPTX: main text is editable, images are embedded, charts/tables are not screenshots unless intentional.
- HTML: keyboard navigation works, current slide state is visible, notes/timer modes work if present.
- Image cards: exported images are the requested ratio and preserve text quality.
- Multi-file outputs: assets use relative paths or are bundled so the deck opens on another machine.

## Rendered QA

- Render or screenshot the final artifact whenever possible.
- Inspect at least the cover, every section divider, every chart/table slide, the densest slide, and the final slide.
- For HTML/interactive decks, test desktop and a narrower viewport; check keyboard controls.
- For PPTX, render to images or PDF and inspect the output instead of trusting generation alone.

## Final Response

Report:

- The finished file(s).
- The route used.
- What was visually checked.
- Any limitations, missing source material, or unverified features.
