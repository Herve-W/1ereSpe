//--------------START--------------------------------

#import "@preview/typsium:0.2.0" : ce
#import "@preview/wrap-it:0.1.1" : *
#import "@preview/zero:0.4.0":num,set-num

//------constantes---------

#let lvl1Col = red //heading1
#let lvl2Col = orange //heading2
#let bgColor = rgb(245,245,245) //background
#let def = "Définition" 
#let prop = "Proriété"
#let viewProg = true // affichage du programme si existant
#let bookMode = false

#let makeTitle(body,nbr:none,type:"C") = {
  set align(center)
  set par(justify: false)
  rect(width:100%)[#if bookMode == true {[= #body]} else {
    text(font: "Calibri", weight: "bold",size:1.7em,hyphenate: false)[#type#nbr : #body]
    }]

}

// si nbr donné -> utilisé sinon mode livre
#let config = (doc,chap:"test",flipped:false,columns:1,type:"C",nbr:none,viewProg:viewProg) => {
  set page(
    // paper: "a6",
    width:350pt,
    height: auto,
    flipped: flipped,
    margin: (left:3em,right:3em,top:2em),
    
    footer: context [
    #table(
      columns:(1fr,1fr),
      align:(left,right),
      stroke:(top:black,bottom:none,left:none,right:none),
      [Lycée Kleber (HW #datetime.today().display("[year]"))  ],
    )],
    columns:columns,
  )
  
  set text(
    lang: "fr",
    // font: "Calibri",
    // font: "Palatino Linotype",
    font: "Century Gothic",
    // spacing: 300%,
    size:13pt,
  )
  
  set par(justify: true,
  )
  
  set heading(numbering: "1",outlined: true)

  show heading.where(level: 2): body => {
    text(lvl1Col,/*size:1.2em*/)[#underline(body)]
  }
  show heading.where(level: 3): body => {
    text(lvl2Col,/*size:1.2em*/)[#underline(body)]
  }

  set heading(numbering: (..nums) => {
  nums = nums.pos()
  if nums.len() == 1 {
    [#type#numbering("1:", ..nums)]
  } else if nums.len() == 2 {
    numbering("1",nums.last())
  } else {
    numbering("A.", nums.last())
  }
})
//new
show math.equation: set text(font:"Noto Sans Math")
set-num(decimal-separator: ",")
// show math.equation: it => math.upright(it)

makeTitle(type:type,nbr:nbr)[#chap]
doc
}

//------Functions-------
//équation encadrée

#let eq = (body,nbr:none) => [
  #let eqnbr
  #if nbr !=none {
    eqnbr = [(#nbr)]
  }
$ #rect(radius: 8pt,fill: luma(230), stroke:black)[#body] eqnbr $
]

// notes dans un cadre
#let note = (style, object) => [
    // style possible def et prop
    #let selectedStroke
    #let icon
    #let bullet

    //style définition
    #if style == def{ 
      selectedStroke = stroke(paint:blue, thickness: 0.25em)
      icon = emoji.clipboard
      bullet = emoji.checkmark.box
    //style propriété
    } else if style == prop {
      bullet = "-"
    }
    
    #set list(marker: [#bullet])
    #rect(
      fill: if style != def {bgColor},
      width:100%,   
      stroke: (left:selectedStroke),
    )[#text(
      weight: "bold",
      )[#icon #style]
      #if style != none [: ]
      #object
      ]
]

//version alternative
#let definitionOld(titre,body) = {
  show table.cell: it => {
  if it.x == 0 and it.y == 0 {
    set text(white)
    it }
  else if it.x ==1 {set text(blue)
   it}
  else {it}
}
block(breakable: false,{
table(
  columns:(auto,1fr),
  stroke: none,
  table.vline(stroke: (paint:blue, thickness: 0.25em)),
  table.cell(fill:black.lighten(25%))[#emoji.clipboard *Définition*],[*#titre*],
  table.hline(),
  table.cell(colspan: 2)[#body])
  })
}

//enocre
#let definition = (name,body) =>{block(
  fill: luma(250),
  stroke: (left:(paint:blue, thickness: 0.5em)),
  inset: 8pt,
  radius: 4pt,
  width: 100%,
  breakable: false,
  [
  #let u = box(fill:black.lighten(25%),outset: (x:0.25em,y: 0.5em),text(white)[#emoji.clipboard *Définition*]);
  #context {

    layout(size => {

    let n = measure(name).width //taille du titre
    let s = measure(u).width //taille du symbole 
    let m = size.width // taille de la page (nécessite d'être dans layout )
    
    if n+s > m {s = -0.5em}
    u; h(0.5em); [*#name*]
    place( 
      dx: s +0.5em,
      dy: - 0.75em,
      line(length:100% - s -0.5em, stroke: (paint:blue, thickness: 0.2em)))
      //  [n =#n s = #s n+s =#(n+s)] //begug
      body
    })   
    }
  ]
)}


// exemple simple
#let ex = text(weight:"bold")[Exemple :]
#let exs = text(weight:"bold")[Exemples :]

//insertion image
// hack avec ..imgTitle
// voir https://forum.typst.app/t/why-are-paths-always-relative-to-the-current-file/306/4
#let img = (..imgTitle,text: none, width:50%) => {
    align(center,
    figure(
    image(..imgTitle,width:width),
    caption: text,
    numbering: none
  ))
}

// programme
#let displayProg = (viewProg,body) => {
  if viewProg {
      rect(stroke:0.1em)[
      #text(fill: blue, size:1.25em)[
      #align(center)[
      #underline[Ce qu'il faut savoir faire #emoji.arrow.b.filled ]
      ]
    ]
    #set list(marker:[#emoji.checkmark.heavy])
    #body
  ]
  }
}

#let inRed(body)={
  text(red,body)
}

#let inBlue(body)={
  text(blue,body)
}

#let rq = [*Remarque :*]
#let rqs = [*Remarques :*]

#let lf = line(stroke:(thickness:0.5pt),length:100%)
#let M = $" "m o l.L^(-1)$
#let gm =$" "g.m o l^(-1)$
#let gL =$" "g.L^(-1)$

//---------------END------------------------------

