//IMPORTANT activer variable bookMode pour afficher correctement les numéros de chapitre
#{
  set page(
    footer: context[#align(right)[#text(size:0.15em)[D'après "Le retour de Lagaffe" (2023)]]]
  )
  set align(center+horizon)
  set text(size:5em,font:"Century Gothic")
  rect[Cours de 1#super[ère] \ - Chimie -]

  
figure(
  numbering:none,
  figure(image("media/gaston.png"),caption:none,numbering:none)
  )

}

#include "..\chimie\C01\C01.typ"
#include "..\chimie\C02\C02.typ"
#include "..\chimie\C03\C03.typ"
#include "..\chimie\C04\C04.typ"
#include "..\chimie\C05\C05.typ"
#include "..\chimie\C06\C06.typ"
#include "..\chimie\C07\C07.typ"
#include "..\chimie\C08\C08.typ"

#{
  set page(
    footer: context[#align(right)[#text(size:0.15em)[D'après "On a marché sur la Lune" (1950)]]]
  )
  set align(center+horizon)
  set text(size:5em,font:"Century Gothic")
  rect[Cours de 1#super[ère] \ - Physique -]

  
figure(
  // caption: text(size:8pt,[Image générée par IA]),
  numbering:none,
  figure(image("media/fusée.jpg"),caption:none,numbering:none)
  )

}

#counter(heading).update(0)

#include "..\physique\P01\P01.typ"
#include "..\physique\P02\P02.typ"
#include "..\physique\P03\P03.typ"
#include "..\physique\P04\P04.typ"
#include "..\physique\P05\P05.typ"
#include "..\physique\P06\P06.typ"
#include "..\physique\P07\P07.typ"

#show outline.entry: it => link(
  it.element.location(),
  it.indented(
  if (it.level == 1) {strong[#it.prefix()]}
  else  {it.prefix()}, 
  if (it.level == 1) {strong[#it.body()]}
  else  {it.inner()}),
)

#set text(font: "Century Gothic")

#outline(
  title: rect[Sommaire]
)
