// #import "modele.typ": *
#import "@local/activite:0.1.0": *
#import "@preview/alchemist:0.1.6" : *
#show: (doc) => config(doc,nbr:6) //à compléter

+ Le bromure de potassium $K B r(s)$ est un sédatif et un anticonvulsivant. C'est un solide ionique formé d'ions $K^+$ et #ce("Br^-"). Faire un schéma en deux dimensions de ce *solide* en représentant les ions par des disques.
+ Comment expliquez vous la cohésion de ce solide ?
+ Écrire l'équation de dissolution du bromure de potassium.
+ Représenter quelques ions bromure #ce("Br^-(aq)") et potassium #ce("K^+") *en solution*. #lf
+ On dissout 1,5 g de bromure de potassium dans 50 mL d'eau. Calculer la concentration c en soluté. Données : M(KBr) = 119 #gm
+ Calculer la concentration des ions bromures et potassium dans la solution. On se servira d'un tableau d'avancement.
+ La solubilité du bromure de potassium est de 650 g/L dans l'eau mais il est insoluble dans l'hexane de formule : #box(skeletize({
  fragment("CH_3")
  single()
  fragment("CH_2")
  single()
  fragment("CH_2")
  single()
  fragment("CH_2")
  single()
  fragment("CH_2")
  single()
  fragment("CH_3")
})) \ Interprétez ce résultat.

#exo("Cohésion des solides.")[

#figure(
  align(center)[#table(
    columns: 5,
    align: center+horizon,
    table.header([], table.cell(align: center, colspan: 2)[*Ionique*], table.cell(align: center, colspan: 2)[*Moléculaire*],),
    table.hline(),
    [*Solides*], table.cell(align: center)[NaCl(s)], table.cell(align: center)[ZnS(s)], table.cell(align: center)[CO#sub[2];(s)], table.cell(align: center)[H#sub[2];O(s)],
    [*Température de fusion*], table.cell(align: center)[801 °C], table.cell(align: center)[1185 °C], table.cell(align: center)[-57 °C], table.cell(align: center)[0°C],
  )]
  , kind: table
  )

+ Quelles sont les interactions responsables de la cohésion d’un solide ionique et moléculaire~?
+ Justifier que la cohésion d'un solide ionique est bien plus grande que celle d'un solide moléculaire.
+ Comment expliquez-vous que la température de fusion de l’eau est bien plus importante que celle du CO#sub[2~];?
]


#exo("Dissolution du phosphate de sodium.")[

On dissout n = 2,5.10#super[\-2] mol de phosphate de sodium Na#sub[3];PO#sub[4];(s) dans de l\'eau jusqu\'à obtenir V=100 mL de solution.

+ Écrire l\'équation de dissolution du phosphate de sodium sachant que la formule de l\'ion sodium est Na#super[\+]
+ Calculer la concentration molaire c en soluté apporté.
+ Calculer la concentration molaire effective des deux ions.
]

#exo("Dissolution sulfate de sodium.")[

On dispose de V=1,0 L de solution de sulfate de sodium 2Na#super[\+];(aq)+SO#sub[4];#super[2-];(aq) obtenue en dissolvant n mol de solide. La solution obtenue contient 2,0.10#super[\-2] mol d\'ions sodium Na#super[\+];(aq)

+ Écrire l\'équation de la réaction de dissolution
+ À l\'aide d\'un tableau d\'avancement en déduire la valeur de n
+ Calculer les concentrations effectives des ions en solution
+ Calculer la concentration en soluté apporté.
]

#exo("Solution de chlorure de fer III.")[

On dispose de chlorure de fer III FeCl#sub[3];(s) avec lequel on souhaite préparer une solution aqueuse dont la concentration effective des ions chlorure est \[Cl#super[\-];\] = 1,0.10#super[\-2] mol.L#super[\-1]

#strong[Donnée~:] M(FeCl#sub[3];) = 162 g.mol#super[\-1] les ions chlorure ont pour formule Cl#super[\-]

+ Écrire l\'équation de dissolution du chlorure de fer.

+ Calculer la masse de chlorure de fer nécessaire pour préparer 100 mL de solution.

+ Donner le protocole de préparation de cette solution.

+ Exprimer puis calculer la concentration des ions Fer III dans la solution.
]

#exo("Extraction d’une espèce chimique")[

L\'eucalyptus est un arbre dont les feuilles contiennent une espèce chimique odorante appelée eucalyptol.

On hache quelques feuilles d\'eucalyptus on les place dans de l\'eau froide, puis on fait bouillir le tout. On obtient alors un mélange d\'eau et d\'eucalyptol.

+ Quel est le nom de cette méthode ?

+ On filtre le mélange, puis on réalise une extraction liquide-liquide.

+ Pour quelle raison faut-il réaliser une filtration ?

+ Quel solvant choisir pour l\'extraction ? (Bien justifier)

+ À l\'aide des données du tableau, prévoir la position des deux liquides après décantation.

+ Par quel moyen est-il possible de séparer les deux liquides ?
]

#humour("./media/polarBear.jpg",width:40%),