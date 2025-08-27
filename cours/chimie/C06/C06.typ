
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[Cohésion, solubilité et miscibilité d’espèces chimiques.],nbr:6,type:"C")

== La cohésion d’un solide.

=== Cas du solide ionique.

- Un solide ionique est un #strong[empilement] régulier et organisé d’anions et de cations.

- La cohésion du solide ionique est assurée par l’interaction #strong[électrique] attractive entre les anions et les cations. On parle de liaison ionique.

#ex Le chlorure de sodium NaCl(s) est un empilement d’ions Na#super[\+] et Cl #super[–]
#img("./media/image1.png")

=== Cas du solide moléculaire.

- Les interactions responsables de la cohésion d’un solide moléculaire sont de nature #strong[électrique] on les appelle interactions de Van der Waals.

- Si les molécules sont #strong[polaires] les charges partielles d’une molécule sont attirées par celles (de signe opposées) d’une molécule #strong[voisine.]
#img("./media/image2.png")

- Si les molécules sont #strong[apolaires] les électrons d’une molécule sont attirés par le noyau d’une molécule voisine.

== Dissolution d’un solide ionique dans l’eau.

=== Équation de dissolution

La dissolution d'un solide ionique dans un solvant est un processus que l'on peut décomposer en 3 étapes :

#set enum(numbering: "1)")
+ #strong[Dissociation];~: Par leurs effets électriques, les molécules d’eau affaiblissent la #strong[cohésion] du solide.
+ #strong[Solvatation];~: les molécules d’eau #strong[entourent] les ions, on dit qu’ils sont hydratés 
+ #strong[Dispersion] les molécules d’eau #strong[dispersent] les ions dans toute dans la solution.

#grid(
columns:2,
align: center+horizon,
img("./media/image3.png",text:"étapes 1 et 2",width:75%),
img("./media/image4.png", text:"étape3",width:100%)
)

La dissolution est symbolisée par une équation de type~:

$ #ce("NaCl(s) -> Na^+(aq) + Cl^- (aq)") $

=== Les concentrations.

#definition("Concentration en soluté ou effective")[
- On note par la lettre #strong[c];, la concentration en quantité de matière du #strong[soluté] (C’est celle qui est écrite sur les flacons en TP)

- On note entre crochets \[ \] la concentration en quantité de matière des #strong[ions] présents dans la solution.]

Si la dissolution est totale on peut calculer la concentration des ions en solution à partir de celle du soluté.

#strong[Exemple~:] Dissolution totale du chlorure de magnésium

//style pour tableau
#let myStroke(col) = (x,y) => (
  y: if y > 0 {col},
  right: if x > 0 and x < 4 {col},
  left: if x == 2 {col} else {0pt}
)
#let myfill(col) = (x,y) => {
  if y == 0 and x >1 {col}
}

#set table(stroke: myStroke(luma(20)),fill: myfill(luma(220)))

#table(
  columns:5,
  align: center,
  [],[],[$M g C l_2 (s) arrow $],[$M g^(2+)(a q)$],[$+2 C l^-(a q)$],
  [Etat initial],[$x=0$],[$n$],[0],[0],
  [En cours],[$x>0$],[$n-x$],[$x$],[$2x$],
  [état maximal],[$x_"max"$],[$n-x_"max"= 0$],[$x_"max"$],[$2 x_"max"$],
)
 
- Par défintion $c = n / V$ est la concentration en soluté. Elle est calculée pour l'état initial.
- La concentration effective des ions est:
  - $[M g^(2+)] = x_"max" / V = n / V = c$
  - $[C l^(-)] = (2x_"max") / V = (2n) / V = 2c$

On voit donc que la concentration des ions chlorure est le double de la concentration en soluté apporté.

== Propriétés d’un solvant.

=== Solubilité et miscibilité d’un espèce dans un solvant

#definition("Solubilité")[La #strong[solubilité] d’une espèce dans un solvant, est la capacité de cette espèce à se dissoudre dans ce solvant. Elle se mesure en g.L#super[\-1] ou en mol.L#super[\-1]]

Si les interactions entre solvant et solutés sont plus fortes que celles qui assurent la cohésion du solide, celui-ci est #strong[très soluble.]

#definition("miscibilité")[La #strong[miscibilité] d’un liquide est sa capacité à se mélanger avec un autre liquide pour donner un mélange homogène.]

Deux liquides sont miscibles s’il y a davantage d’interactions entre les espèces lorsqu’elles forment un mélange homogène.

#align(center,strong[#underline[Résumé~: règle des «~semblables~»];])
#set table(stroke: (x,y) => (x: if x == 1 {luma(20)}, y: if y == 1 {luma(20)}),fill: none)

#figure(
  align(center)[#table(
    columns: 3,
    align: center,
    table.header([],[#strong[Solvant polaire];],[#strong[Solvant apolaire];],),
    [#strong[Espèce polaire];], [Soluble ou miscible], table.cell(fill:orange)[Insoluble ou non miscible],
    [#strong[Espèce apolaire];], table.cell(fill:orange)[Insoluble ou non miscible],[Soluble ou miscible],
  )]
  , kind: table
  )

=== Extraction par solvant. (ou extraction liquide/liquide)

#note(none)[Pour extraire une espèce présente dans un solvant, il faut choisir un autre solvant appelé *solvant extracteur.*

1. L’espèce doit être plus soluble dans le solvant extracteur que dans le solvant d’origine.

2. Le solvant extracteur ne doit pas être miscible avec le solvant d’origine.]

#strong[En pratique :]

1. On verse le solvant et le solvant extracteur dans une ampoule à #strong[décanter];.
#img("./media/image7.png")
2. On #strong[agite] le mélange et on le laisse décanter. La phase de densité la plus faible surnage.
#img("./media/image8.png",width:33%)
#img("./media/image6.png",width:33%)
3. On ouvre le robinet et on récupère le #strong[solvant] extracteur qui a dissout l’espèce recherchée.

== Savons et tensioactifs.

#definition("Hydophile et lipophile")[Une espèce *hydrophile* est soluble dans l’eau, alors qu’une espèce *lipophile* est soluble dans les graisses.]

Certaines espèces, comme les #strong[savons];, ont un côté hydrophile et un autre lipophile~: on dit qu’elles sont amphiphiles

#ex
#img("./media/image9.png")

La longue chaîne (carbonée) est lipophile alors que la tête est hydrophile.

Placées dans l’eau, ces molécules commencent à se disposer à la surface puis forment de petites structures appelées micelles qui ont la capacité à dissoudre des espèces non

#grid(
  columns:2,
  align: center+horizon,
  img("./media/image5.png"),
  img("./media/image10.png",width:100%),
)

- Expliquer la cohésion au sein de composés solides ioniques et moléculaires par l’analyse des interactions entre entités.

#displayProg(viewProg)[- Expliquer la capacité de l’eau à dissocier une espèce ionique et à solvater les ions.
- Modéliser, au niveau macroscopique, la dissolution d’un composé ionique dans l’eau par une équation de réaction, en utilisant les notations (s) et (aq).
- Calculer la concentration des ions dans la solution obtenue.
- Expliquer ou prévoir la solubilité d’une espèce chimique dans un solvant par l’analyse des interactions entre les entités.
- Interpréter un protocole d’extraction liquide-liquide à partir des valeurs de solubilités de l’espèce chimique dans les deux solvants.
- Expliquer le caractère amphiphile et les propriétés lavantes d’un savon à partir de la formule semi- développée de ses entités. Citer des applications usuelles de tensioactifs.]
