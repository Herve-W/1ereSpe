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

#let makeTitle(body,nbr:none,type:"C") = {
  set align(center)
  set par(justify: false)
  rect(width:100%)[#if nbr == none {[= #body]} else {
    text(font: "Calibri", weight: "bold",size:1.7em,hyphenate: false)[#type#nbr : #body]
    }]

}

// si nbr donné -> utilisé sinon mode livre
#let config = (doc,chap:"Activité et Exercices",flipped:false,columns:2,type:"C",nbr:none,viewProg:viewProg) => {
  set page(
    paper: "a4",
    flipped: flipped,
    margin: (left:1cm,right:1cm,top:1.5cm),
    
    
    footer: context [
    #table(
      columns:(1fr,1fr),
      align:(left,right),
      stroke:(top:black,bottom:none,left:none,right:none),
      [Lycée Kleber \(HW #datetime.today().display("[year]"))  ],[#counter(page).display("1 / 1", both: true)]
    )],
    
    columns:columns,
  )
  
  set text(
    lang: "fr",
    // font: "Calibri",
    // font: "Palatino Linotype",
    font: "Century Gothic",
    // spacing: 300%,
    size:9pt //10 ???
  )
  
  set par(justify: true)
  
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

set enum(numbering:n => [*Q#n. *])
show math.equation: set text(font:"Noto Sans Math")
show math.equation: it => {
  math.upright(it)
}
show "Données": set text(weight:"bold")
show "Donnée": set text(weight:"bold")
set-num(decimal-separator: ",")
makeTitle(type:type,nbr:nbr)[#chap]
block(
stroke:silver,
radius: 4pt,
inset: 0.5em,
width:100%,
/*
[Lire les éléments de cours, puis répondre aux questions et aux exercices sur *une feuille de travail* et pas sur ce document]
*/
[#emoji.warning *Méthode de travail à suivre :*

- *Lire* la partie cours et suivre les *explications* du professeur.
- *Rédiger* les réponses aux questions *Q1*.. sur une feuille de travail.  Ne pas attendre la correction pour commencer ! 
- *Réaliser* une carte mentale (ou un résumé) du cours
- *Faire les exercices* dans l'ordre (sur une feuille)]

)

//align(center)[#emoji.warning N'attendez pas la correction pour commencer rédiger ! ]
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
    let s = measure(u).width
    u; h(0.5em); [*#name*]
    place( 
      dx: s +0.5em,
      dy: - 0.75em,
      line(length:100% - s -0.5em, stroke: (paint:blue, thickness: 0.2em)))
    }
    #body
  ]
)}


// exemple simple
#let ex = text(weight:"bold")[Exemple :]
#let exs = text(weight:"bold")[Exemples :]

//insertion image
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

#let c = counter("exercice")
// #c.update(0)
#let exo = (titre,body) => {
  c.step()
  set par(justify: true)
  set enum(indent:0.25em,numbering:n => [*#n) *])
  block(
    fill:luma(245),
    stroke: ((paint:black,thickness: 0.25pt)),
    inset:0.5em,  
    radius:4pt,
    width:100%,
    [#place(dy:1.2em,line(length: 100%,stroke:(paint:blue,thickness: 1pt)))
    #text(blue)[*Exercice #context c.display(): *] #titre
     #body ]
  )
}
#let lf = line(stroke:(thickness:0.5pt),length:100%)

#let humour(..img,width:50%,text:none) = {
  lf
  figure(
    placement: bottom,
    image(..img,width:width),
    caption: figure.caption(position: top, [#text]),
    numbering:none
  )
}


#let M = $" "m o l.L^(-1)$
#let gm =$" "g.m o l^(-1)$
#let gL =$" "g.L^(-1)$

//---------------END------------------------------

