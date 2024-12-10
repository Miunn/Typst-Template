# Typst-Template

Template for [Typst](https://typst.app/) papers with exemple document as `main.typ`.

Configuration function has the following definition :

```
conf(
  title: [],
  subTitle: [],
  authors: (),
  keywords: (),
  date: auto,
  imagePath: "no-image.png",
  imageSpacing: 0.5cm,
  professor: none,
  semester: none,
  pageTitle: [],
  displayOutline: true,
  outlineTitle: [Table des matières],
  displayBibliography: true,
  bibliographyTitle: [Bibliographie],
  fullBibliography: false,
  doc,
)
```

- `title` (content): Bold text displayed on cover page and used in document's metadata (default: [])
- `subTitle` (content): Subtitle displayed under title on cover page (default: [])
- `authors` (array): List of authors with name string argument (see the exemple file)
- `keywords` (array): List of keywords strings used in document's metadata (default: ())
- `date` (date): Date used in document's metadata (default: auto (compilation date))
- `imagePath` (string): Path to cover image (default: "no-image.png")
- `imageSpacing` (measurement): Spacing to set in cover page between title and cover image (default: 0.5cm)
- `professor` (string): Optionnal, Professor name displayed in cover footer (default: none)
- `semester` (number): Semester number displayed in cover footer (default: none)
- `pageTitle` (content): Title displayed in page's header (default: [])
- `displayOutline` (boolean): Boolean to show or hide outline (default: true)
- `outlineTitle` (content): Title used for outline (default: Table des matières)
- `displayBibliography` (boolean): Boolean to show or hide bibliography (default: true)
- `bibliographyTitle` (content): Title used for bibliography (default: Bibliographie)
- `fullBibliography` (boolean): Include not referenced bibliography entries (default: false)

## Features

- Heading numbering is `I.1.a.`
- Links are displayed underline
- Figures are by default using `kind: figure` and `supplement: [Figure]`
- References to titles are displayed with numbering and name (i.e. "I. Title") instead of supplement and numbering (i.e. "Chapitre I")
- Pages are numbered "— 1 —" starting after the outline
- Outline page count are "1" and not "— 1 / 1 —"
- Bibliography is referenced with `bib.yaml` containing a defalt entry