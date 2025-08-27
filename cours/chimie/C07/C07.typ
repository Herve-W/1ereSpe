
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[Structure des entités organiques.],nbr:7,type:"C")

== Formules d’une molécule organique.

#definition("Molécules organiques")[Les molécules étudiées en chimie organique contiennent principalement des atomes de carbone et d’hydrogène.]

Une formule~:

- #strong[#underline[développée];] indique toutes les liaisons d’une molécule.

- #strong[#underline[semi-développée];] indique les liaisons entre tous les atomes sauf celles avec les atomes d’hydrogène.

== Groupes caractéristiques et noms des espèces organiques.

=== Les alcanes

#definition("Alcanes")[- Les alcanes sont une famille de molécules ne contenant que des atomes de carbone et de l’hydrogène.
- Leur squelette est #strong[saturé] c’est à dire que toutes les liaisons sont simples.]

Noms des alcanes linéaires en fonction du nombre d’atomes de carbone
#table(
columns: (1fr,1fr,1fr,1fr,1fr),
align: center,
stroke: (x:none, y:black),
fill: (_,y) => if y==0 or y== 2{luma(200)},
[], ..{for i in range(1,5) {([#i C],)}},
[Nom:],[méthane],[éthane],[propane],[butane],

[], ..{for i in range(5,9) {([#i C],)}},
[Nom:],[pentane],[hexane],[heptane],[octane]
)

=== Les groupes caractéristiques.

#definition("Groupe caractéristique")[Un #strong[groupe caractéristique] est un ensemble d’atomes d’une molécule qui permet d’identifier la famille chimie à laquelle elle appartient.]

#figure({set text(size:0.9em)
table(
  align: center+horizon,
  stroke: 0.5pt,
  columns:(auto,1fr,1fr,1fr,1fr),
  [*groupes \ caractéristiques*],[#image("./media/image1.png")],table.cell(colspan:2,[#img("./media/image2.png")]),[#image("./media/image3.png")],
  [*Nom:*],[Hydroxyle],table.cell(colspan:2,[carbonyle]),[carboxyle],
  [*fonction \ chimique :*],[#inBlue[*alcool*]],[#inBlue[*cétone*] \ si liaison \ C-H],[#inBlue[*aldéhyde*] \ si liaisons \ C-C],[#inBlue[*acide carboxylique*]],
  [*Exemples:*],[#image("./media/image4.png")],[#image("./media/image5.png")],[#image("./media/image6.png")],[#image("./media/image7.png")],
)
})

=== Nom d’une espèce chimique organique.

#note(none)[Le nom d’une molécule est généralement composé de 3 parties (préfixe) – radical – suffixe
]
1) le #strong[radical] indique le nombre d’atomes de carbone de la chaîne linéaire la plus longue

2) le #strong[suffixe] indique la nature et la position du groupe caractéristique

#table(
  columns:5,
  stroke: (x,y) => (top: if y > 0 {black}, right: if x < 4 {black}),
  align: center,
  [*Groupe :*],[alco#inRed[ol]],[#inRed[al]déhyde],[cét#inRed[one]],[#inRed[acide] carboxyl#inRed[ique]],
  [*Suffixe:*],[-- ol],[--al],[--one],[acide ... oïque]

)


*Important:* On numérote la chaîne la plus longue de façon à ce que le groupe caractéristique ait le numéro le plus petit possible.

3) Si la molécule possède une chaîne carbonée avec une branche latérale (appelée ramification), on ajoute un #strong[préfixe.]
Celui-ci indique le nombre d’atomes de carbone et la position de la ramification

#strong[Remarque~];: On place toujours un tiret entre un chiffre et une lettre.

#grid(
  columns:2,
  align: left+horizon,
  gutter:2em,
  [*Exemple: le butan-2-one:* 
  - la chaîne la plus longue a #text(red)[4 carbones].
  - le groupe caractéristique se trouve sur le carbone n°2],
  // rect[#image("./media/image8.png")])
  rect[
  #import "@preview/alchemist:0.1.6" : *
  #skeletize(
    config: (atom-sep:2.75em,),{
      fragment("H_3C",colors:(black,red))
      single(stroke: red)
      fragment("H_2C",colors:(black,red))
      single(stroke: red)
      fragment("C",colors:(red))
      branch({double(angle:2)
      fragment("O")})
      single(stroke: red)
      fragment("CH_3",colors:(red,black))})
  ])

== Spectres infrarouges.

=== Principe.

- Une molécule peut absorber l’énergie d’une onde infrarouge (IR) et la convertir en vibrations.
#grid(columns:2, img("./media/image10.png"),img("./media/image9.png"))

- Les fréquences d’absorptions dépendent de la nature des liaisons de la molécule.

- En déterminant les valeurs de ces fréquences, on peut trouver la nature des liaisons présentes dans une molécules et en déduire quels groupes caractéristiques elle possède.

=== Lecture d’un spectre IR.

#definition("Spectre infra-rouge")[Un spectre IR est un graphique sur lequel on trouve~:

+ la #strong[transmittance] (entre 0 et 100%) en ordonnée.
+ le nombre d’onde (en cm#super[\-1];) en abscisse.]

#strong[Attention] l’axe des abscisses est généralement inversé~!

#img("./media/image11.png",text:"exemple de spectre IR",width:100%)

#strong[Remarques~:]

- Un spectre IR présente des raies d’absorptions tournée vers le bas~!
- Le nombre d’onde est l’inverse de la longueur d’onde.

#strong[Méthode d’analyse~:]

On lit les valeurs des nombres d’onde où la transmittance est petite, puis recherche ces valeurs dans un tableau de référence
#{
set text(size:0.9em)
table(
  columns: 4,
  align: center,
  [Liaisons~:],[O–H alcool],[O–H acide],[C–H tétraédrique],
  [Nombre d’onde (cm#super[\-1];)], [3200 – 3650],[2500 -3200],[2800 – 3100],
  )

table(
  columns: 4,
  align: center,
  [Liaisons~:],[C=O alcool],[C–H tétraédrique],[C–O],
  [Nombre d’onde (cm#super[\-1];)], [1650 - 1730],[1415 - 1470],[1050 - 1450],
  )
}

#displayProg(viewProg)[- Identifier, à partir d’une formule semi-développée, les groupes caractéristiques associés aux familles de composés : alcool, aldéhyde, cétone et acide carboxylique
- Justifier le nom associé à la formule semi-développée de molécules simples possédant un seul groupe caractéristique et inversement.
- Exploiter, à partir de valeurs de référence, un spectre d\'absorption infrarouge.]
