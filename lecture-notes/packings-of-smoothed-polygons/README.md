# Packings of Smoothed Polygons - structured lecture notes

This directory contains a chapter-organized LaTeX reconstruction and its compiled PDF for the lecture notes **Packings of Smoothed Polygons: A Self-Contained Guide to the Proof of Mahler's First Conjecture**.

## Source organization

- `main.tex`: top-level book driver.
- `source/preamble.tex`: typography and environments.
- `source/frontmatter/`: title, reading guide, and proof roadmap.
- `source/parts/`: seven logical parts.
- `source/chapters/`: Chapters 1--22.
- `source/appendices/`: five background appendices and bibliography.
- `release/`: compiled PDF produced by the source.
- `scripts/verify.sh`: page-count, text, and metadata checks.

## Provenance and fidelity

The original semantic `.tex` files from the first PDF generation were not retained. The source here was reconstructed from the compiled 172-page PDF and reorganized into ordinary editable LaTeX. Prose and logical structure are preserved closely. Some vertically typeset formulas and matrices were necessarily linearized during text extraction, and the figure captions are retained as figure notes rather than recreating every original drawing. The archived PDF supplied in the original ChatGPT conversation remains the visual reference.

This is therefore a **genuine editable reconstruction**, not a claim that the lost original source was recovered byte-for-byte.

## Build

Requires XeLaTeX, `latexmk`, and standard TeX Live packages.

```bash
make
make verify
```

The output is `release/Packings_of_Smoothed_Polygons_Lecture_Notes.pdf`.

## Mathematical scope

The notes explain the proof that a global minimizer is a finite-sided smoothed polygon. They do not claim a proof that the minimizer is specifically the smoothed octagon; that is the remaining Reinhardt conjecture.
