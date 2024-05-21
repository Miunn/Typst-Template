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
  professor: none,
  semester: none,
  pageTitle: [],
  outlineTitle: [Table des matières],
  bibliographyTitle: [Bibliographie],
  doc,
)
```

- `title` (content): Bold text displayed on cover page and used in document's metadata
- `subTitle` (content): Subtitle displayed under title on cover page
- `authors` (array): List of authors with name string argument (see the exemple file)
- `keywords`: List of keywords strings used in document's metadata
- `date`: Date used in document's metadata. Default to auto (compilation date)
- `imagePath`: Path to cover image
- `professor`: Optionnal, Professor name displayed in cover footer
- `semester`: Semester number displayed in cover footer
- `pageTitle`: Title displayed in page's header
- `outlineTitle`: Title used for outline
- `bibliographyTitle`: Title used for bibliography

## Features

- Heading numbering is `I.1.a.`
- Links are displayed underline
- Figures are by default using `kind: figure` and `supplement: [Figure]`
- References to titles are displayed with numbering and name (i.e. "I. Title") instead of supplement and numbering (i.e. "Chapitre I")
- Pages are numbered "— 1 —" starting after the outline
- Outline page count are "1" and not "— 1 —"
- Bibliography is referenced with `bib.yaml` containing a defalt entry