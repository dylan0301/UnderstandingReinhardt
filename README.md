# Understanding Reinhardt

This repository organizes expository material on the Reinhardt conjecture and the Hales--Vajjha proof of Mahler's First conjecture.

## Lecture-note project

The editable LaTeX project is in:

- [`lecture-notes/packings-of-smoothed-polygons/`](lecture-notes/packings-of-smoothed-polygons/)

The project contains a top-level book driver, source split into front matter, seven parts, twenty-two chapters, six appendices, build and verification scripts, and the compiled PDF in `release/`.

Build locally with XeLaTeX:

```bash
cd lecture-notes/packings-of-smoothed-polygons
make verify
```

The notes explain Mahler's First conjecture--that a minimizer is a finite-sided smoothed polygon--without claiming the still-open identification of the minimizer as the smoothed octagon.
