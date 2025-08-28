
#import "@local/cours:0.1.0" : *
#show: (doc) => config(doc,chap:"Bilan de matière",nbr:1,type:"C")

#h(2em) La notion de quantité de matière est fondamentale en chimie et sera utilisée tout au long de l'année. Dans ce chapitre on va voir comment les calculer dans toutes les situations.

== Quantité de matière.
#definition("la mole")[Une quantité de matière $n$ (mol) peut se calculer à partir d’un nombre d’entités $N$ (atomes, ions, molécules)

#eq(nbr:0)[$ n = N / N_A $] Où $N_A$= 6,023×10#super[23] mol#super[\-1] est le nombre d’Avogadro]

=== Calculer une quantité de matière à partir d’une #underline[masse.]

- La masse molaire *atomique* d’une espèce est la masse d’une mole d’atomes de cette espèce. Elle est notée M et s’exprime en g.mol#super[-1]
- On trouve les masses molaires atomiques dans le tableau périodique des éléments.

 #{
[Masses molaires en $g.m o l^(-1)$]
set text(weight:"bold")
table(
  columns:(1fr,)*8,
  align: center+horizon,
  stroke: (x,y) => if y==0 and (x < 7 and x > 0) {(top:{0pt})} else {(thickness:0.25pt,paint:black)},
  [H\ 1,0],table.cell(colspan: 6)[],[He\ 4,0],
  [Li\ 7,0],[Be\ 9,0],[B\ 10,8],[C\ 12,0],[N\ 14,0],[O\ 16,0],[F\ 19,0],[Ne\ 20,2],
  [Na\ 23,0],[Mg\ 24,3],[Al\ 27,0],[Si\ 28,1],[P\ 31,0],[S\ 32,1],[Cl\ 35,5],[Ar\ 40,0],
)}
- La masse molaire d’une *molécule* (ou d’un ion) est la somme des masses molaires des atomes qui la composent.

#definition("Quantité de matière")[Une quantité de matière $n$ (mol) peut se calculer à partir d’une masse $m$ (g)
#eq(nbr:1)[$ n = m / M med $]
où $M$ (g.mol#super[\-1];) la masse molaire.]

#strong[Rappel] Pour un liquide (ou gaz) on donne généralement le volume V (et non la masse) il faut alors utiliser la masse volumique $rho$ $ rho = m / V $ ce qui permet de calculer $ n = frac(rho V, M) $

=== Calculer une quantité de matière #underline[d’un gaz.]

- Pour une température (et une pression) donnée, le volume d’un gaz ne dépend pas de la nature des entités qu’il contient.

- Le volume d’une mole de gaz est appelé *volume molaire*.

#definition("Quantité de matière d'un gaz")[Une quantité de matière n (mol) #underline[d’un gaz] peut se calculer à partir de son volume $V$.

#eq(nbr:2)[$ n = V / V_m $ ]

où $V_m$  est appelé *volume molaire* \ sa valeur à 20°C est de 24 L.mol#super[\-1].]

== Concentration en quantité de matière.

La concentration *en masse* c#sub[m] d’un soluté dans une solution a été vue en 2de

$ c_m = m_(s o l u t é) / V_(s o l u t i o n) $

Cette année (et les suivantes), on utilisera de préférence la concentration *en quantité de matière* notée c.

#definition("La concentration en quantité de matière")[
#eq(nbr:3)[$ c = n_(s o l u t é) / V_(s o l u t i o n) $]

où n#sub[soluté] est la quantité de matière du soluté (mol) , V#sub[solution];(L) et c (mol.L#super[\-1];)]

#rqs
- On peut convertir une concentration en masse en une concentration en quantité de matière à l’aide de la masse molaire du soluté.

- *Rappel:* On prépare des solutions soit par:
 - *dilution* d’une solution mère.
 - *dissolution* d'un soluté

== Absorbance d’une espèce en solution.

=== Spectre d’absorption

- Une espèce chimique est #strong[colorée] lorsqu’elle absorbe une partie de la lumière visible. 

#img("./media/image1.png",text:"cercle chromatique")

- La couleur perçue est la couleur #strong[complémentaire] de celle qui est absorbée. (couleur opposée sur le cercle chromatique)

- #strong[L’absorbance] #strong[A] est une grandeur sans unité qui mesure l’absorption de la lumière par une solution. Elle est mesurée avec un spectrophotomètre.

- Le #strong[spectre] d’absorption d’une espèce est une représentation graphique de l’absorbance de cette espèce en fonction de la longueur d’onde.
#img("./media/image2.png",width:75%,text:"spectre d'un colorant")

=== Loi de Beer-Lambert.

L’expérience montre que pour une longueur d’onde donnée, l’absorbance A#sub[λ] d’une espèce en solution est *proportionnelle* à~:

- La *concentration* $c$ du soluté.
- *L’épaisseur* $l$ de solution traversée par la lumière

#definition("L’absorbance")[L'absobance A#sub[λ] d’une espèce en solution pour une longueur d’onde donnée est~:

#eq[$ A_lambda = epsilon.alt_lambda times l times c $]

où ε#sub[λ] est appelé coefficient d’absorption (L.mol#super[\-1];.cm#super[\-1];) l est l’épaisseur de solution (cm) et c est la concentration en quantité de matière (mol.L#super[\-1];)]

#rqs 
- La loi de Beer-Lambert n’est valable que pour des solutions peu concentrées
- on suppose cette année qu'il n'y a q'un seul soluté.

== Dosage par étalonnage.
#strong[Méthode~:]
#set enum(numbering: "1)")

#note(none)[+ On prépare des solutions de différentes concentrations connues pour obtenir une échelle de teintes.

+ On mesure l’absorbance de chacune d’entre elles.

+ On trace la courbe représentative de l’absorbance en fonction de la concentration ou courbe #strong[d’étalonnage];.

+ On mesure l’absorbance de la solution inconnue.

+ On détermine sa concentration en utilisant la courbe d’étalonnage.
]

#img("./media/image3.png")

#displayProg(viewProg)[
- Déterminer la masse molaire d’une espèce à partir des masses molaires atomiques des éléments qui la composent.
- Déterminer la quantité de matière contenue dans un échantillon de corps pur à partir de sa masse et du tableau périodique.
- Utiliser le volume molaire d’un gaz pour déterminer une quantité de matière.
- Déterminer la quantité de matière de chaque espèce dans un mélange (liquide ou solide) à partir de sa composition.
- Déterminer la quantité de matière d’un soluté à partir de sa concentration en masse ou en quantité de matière et du volume de solution.
- Expliquer ou prévoir la couleur d’une espèce en solution à partir de son spectre UV-visible.
- Déterminer la concentration d’un soluté à partir de données expérimentales relatives à l’absorbance de solutions de concentrations connues.]


#strong[#underline[Résumé à mémoriser];]
#img("./media/image4.png",width:100%)

