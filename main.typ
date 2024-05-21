#import "template/template.typ": conf
//#import "@preview/cetz:0.2.2"                 // Drawing
//#import "@preview/unify:0.5.0"                // SI Units
//#import "@preview/codly:0.2.1"                // Override code blocks
//#import "@preview/curryst:0.3.0"              // Inference rules
//#import "@preview/commute:0.2.0"              // Commutative diagrams
//#import "@preview/finite:0.3.0": automaton    // Automatons
//#import "@preview/lovelace:0.2.0"             // Pseudo-code
//#import "@preview/showybox:2.0.1"             // Beautiful rectangles

#let fig(
  content,
  caption: none,
  placement: none,
  kind: figure,
  supplement: "Figure",
  numbering: "1",
  gap: 0.65em,
  outlined: true,
) = figure(
  rect(content),
  caption: caption,
  placement: placement,
  kind: kind,
  supplement: supplement,
  numbering: numbering,
  gap: gap,
  outlined: outlined,
)

#show: doc => conf(
  title: [
    Document title
  ],
  subTitle: [Document subtitle],
  authors: (
    (
      name: "Full Name 1",
    ),
    (
      name: "Full Name 2",
    ),
  ),
  professor: [Professor],
  pageTitle: smallcaps[Page Title],
  semester: [X],
  doc,
)

= Title <ref>

Content @bib-entry

Reference @ref

Footnote #footnote([Footnote])

#figure(
  rect(
    [Figure]
  ),
  caption: [Example]
)