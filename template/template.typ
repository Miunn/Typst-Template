#let cover(
  title: [Title],
  subTitle: [Subtitle],
  authors: (),
  imagePath: "no-image.png",
  professor: none,
  semester: none,
) = {
  let curr_month = datetime.today().month()
  let curr_year = datetime.today().year()
  set page(
    header: align(
      end,
      grid(
        columns: (auto, auto),
        align: horizon,
        image("insa.png", height: 40pt),
        image("uphf.png", height: 40pt),
      )
    ),
    footer: [
      #if professor != none [
        Enseignant : #professor
      ]
      #linebreak()
      Informatique et Cybersécurité
      #h(1fr)
      #if semester != none [
        Semestre #semester
      ]
      #linebreak()
      #if curr_month > 8 [
        Année universitaire #curr_year / #(curr_year + 1)
      ] else [
        Année universitaire #(curr_year - 1) / #curr_year
      ]
      #h(1fr)
      INSA Hauts-de-France
    ]
  )

  { linebreak() * 4 }
  
  text(20pt, [*#title*])

  linebreak()

  text(15pt, subTitle)
  
  linebreak()

  text(
    13pt,
    (
      ..authors.map(author => author.name)
    ).join(", ")
  )

  line()

  image(imagePath)
}

#let conf(
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
) = {
  set document(
    title: title,
    author: authors.map(author => author.name),
    keywords: keywords,
    date: date,
  )


  set text(lang: "fr")
  set heading(
    numbering: "I.1.a.",
    depth: 3,
  )

  set figure(
    kind: figure,
    supplement: "Figure",
  )

  show link: underline
  
  show ref: it => {
    let el = it.element
    if el != none and el.func() == heading {
      [#counter(heading).display() #el.body]
    } else {
      it
    }
  }

  show outline.entry: it => {
    if it.at("label", default: none) == <custom-entry> {
      it
    } else {
      [
        #outline.entry(
          it.level,
          it.element,
          it.body,
          it.fill,
          [#it.element.location().page()],
        ) <custom-entry>
      ]
    }
  }
  
  set page(
    background: place(left, rect(
      fill: rgb("#008db0"),
      height: 100%,
      width: 0.3cm,
    ))
  )

  cover(
    title: title,
    subTitle: subTitle,
    authors: authors,
    imagePath: imagePath,
    professor: professor,
    semester: semester,
  )

  pagebreak(weak: true)

  set page(
    paper: "a4",
    header: [
      #pageTitle
      #h(1fr)
      #datetime.today().display("[day] [month repr:short] [year]")
      #line(length: 100%)
    ],
  )

  outline(
    title: outlineTitle,
    depth: 2,
    indent: true
  )

  pagebreak(weak: true)

  set page(
    numbering: "— 1 —",
  )

  doc

  pagebreak(weak: true)

  bibliography("../bib.yaml", title: bibliographyTitle, style: "the-institution-of-engineering-and-technology")
}