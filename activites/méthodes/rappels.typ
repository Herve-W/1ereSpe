#import "@local/activite:0.1.0" :*
#show: (doc) => config(doc,chap:[Calculer avec des grandeurs physiques.],preambule: false,type:"Rappels ", nbr:1)
#set text(10pt)
#let dots = (nbr:20) => { 
  let s
  for i in range(nbr) {
    s = s+". "}
  [#s]}
#set text(10pt)

//----------------------------------

#exo("Conversions d'unités")[
  #set par(leading:1.5em)
  + 236 g = #dots() kg \
  + 342 µg = #dots() g \
  + 25 mL = #dots() L \
  + 0,025 L = #dots() cL \
  + 0,50 $m^3$ = #dots() L \
  + 100 L = #dots() $m^3$ \
  + 25 mg / 10 L = #dots() $g.L^(-1)$ \
  + 0,058 kg / 250 mL = #dots() $g.L^(-1)$ \
  + 78 mg / 36 mL = #dots() $g.L^(-1)$
]

#exo("Calcul littéral \"simple\"")[
  #set par(leading:1.5em)
 + Si $a = b times c$ alors b = #dots(nbr:10) et c = #dots(nbr:10)
 + si $a = b /c$ alors b = #dots(nbr:10) et c = #dots(nbr:10)
 +  si $a / b = c /d$ alors a = #dots(nbr:10) et b = #dots(nbr:10)
 + $1/a + 1/b =$ #dots()
 + $(a"/"b)/ "c/d" =$ #dots()
 + $a /b times c /d =$ #dots()
]

#block(stroke:(left:1pt,),inset:0.5em)[
  *Utilisation de la calculatrice :*
  Les calculettes affichent généralement la lettre E à la place des puissances de 10, par exemple 1,6×10#super[\-19] sera affiché 1.6E-19. Cette notation ne doit pas être écrite sur vos copies !

  #underline[Exemple~];: Pour entrer la valeur 9,11 ×10 #super[– 31]

  - Sur une calculatrice Ti:
    #{
      set image(width:11%,height:4%)
      // set align(center)
      stack(
      dir:ltr,
      image("./media/image1.png"),image("./media/image2.png"),image("./media/image3.png"),image("./media/image3.png"), image("./media/image4.png"),image("./media/image5.png"),image("./media/image6.png"),image("./media/image7.png"),image("./media/image3.png")
      )
    }

  - Sur une calculatrice Casio:
    #{
      set image(width:13%)
      set align(center)
      stack(
      dir:ltr,
      image("./media/image9.png"),image("./media/image10.png"),image("./media/image11.png"),image("./media/image11.png"),image("./media/image8.png"),image("media/image13.png"),image("./media/image12.png"),image("./media/image11.png")
      )
    }
]

#exo("Calculer à l'aide de la calculette")[
  #set par(leading:1.5em)
  + #num("5,12e-8") / 32,7 = #dots() 
  + #num("4,50e-12") / #num("1,40e-15") = #dots()
  + 695648 / 846 = #dots()
  + 0,0045687 / 853 = #dots()  
]

#block(stroke:(left:1pt,),inset:0.5em)[
  *Multiples et sous-multiples à mémoriser !*

    #show table.cell.where(y: 0): set text(weight: "bold",size:0.75em)
  #figure(
    table(
      columns:(auto,..(1fr,)*6),
      stroke:0.5pt,
      align: center,
      table.header([Préfixe], table.cell(align: center)[Nano (n)], table.cell(align: center)[Micro (µ)], table.cell(align: center)[milli \ (m)], table.cell(align: center)[kilo \ (k)], table.cell(align: center)[Méga (M)], table.cell(align: center)[Giga (G)],),
      table.hline(),
      [], table.cell(align: center)[10#super[\-9];], table.cell(align: center)[10#super[\-6];], table.cell(align: center)[10#super[\-3];], table.cell(align: center)[10#super[3];], table.cell(align: center)[10#super[6];], table.cell(align: center)[10#super[9];],
    )
    )
]

#exo("Utilisation des puissances de 10")[

  Compléter en utilisant #strong[#underline[la notation scientifique~:];] c’est-à-dire sous la forme #align(center+horizon)[#rect[a×10#super[b] où -1 $<=$ a $<=$ 1]]
  #set par(leading:1.5em)
 + 356 µs = #dots() s
 + 0,274 km = #dots() m
 + 48 nm = #dots() m
 + 0,681 µm = #dots() nm
]

#block(stroke:(left:1pt,),inset:0.5em)[
*Chiffres significatifs:*
Comment arrondir le résultat d’un calcul en physique ou en chimie~?

La valeur d’une grandeur physique n’est #underline[jamais exacte];, donc le nombre de chiffres avec lequel on l’écrit a de l’importance.

Par exemple, une mesure de distance de 1,300 m est plus précise qu’une mesure de 1,3 m car dans le 1#super[er] cas on a écrit 4 chiffres alors que dans le 2#super[ème] cas on en a que 2. \
#strong[Règle~:] #underline[Dans la valeur d’une grandeur physique tous les chiffres écrit sont significatifs sauf les 0 en 1#super[ère] position]

#strong[Principe~:] Le résultat d’un calcul ne peut pas être plus précis que les données avec lequel on l’effectue. #underline[Il faut donc l’arrondir avec le même nombre de chiffres significatifs que la donnée la moins précise.]
]

#exo("Calculer en respectant les chiffres significatifs")[
#set par(leading:1.5em)
+ $3,45678 times 5.2 =$ #dots() 
+ $4,875 " / " 2,5697 =$ #dots()
+ #num("2,458e-3") / 1,842 = #dots()

]