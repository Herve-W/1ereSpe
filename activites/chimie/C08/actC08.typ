// #import "modele.typ": *
#import "@local/activite:0.1.0": *
#import "@preview/alchemist:0.1.6" : *
#show: (doc) => config(doc,nbr:8) //à compléter

#exo("Synthèse d'un savon")[


*Protocole de la synthèse :*
#[#set enum(numbering: "a)")
+ On chauffe pendant trente minutes un mélange de :
 -	#num("2,0e–2") mol d’huile de soja (essentiellement constituée d’oléine),
 -	#num("5,0e-2") mol d’hydroxyde de sodium (soude),
 - 2,0 mL d’éthanol
+ On laisse refroidir le mélange quelques minutes puis on le transvase dans un bécher contenant une solution aqueuse concentrée de sel.
+ Le précipité obtenu est filtré, rincé à l’eau salée, séché puis pesé. La masse expérimentale obtenue est mexp = 10,5 g.
]

*Équation de réaction:*

$"oléine" + "soude" -> "oléate de sodium (savon)" + "glycérol"$

#let ol = {
  single(angle:4)
  fragment("O")
  single(angle:4)
  fragment("CO")

  single(angle:4)
  fragment("C_17H_33")
}

#scale(75%)[
  #set align(center)
  #skeletize(
  config:(atom-sep:2em),{
  fragment("HC")
  branch({
    single(from:1,to:1,angle:2)
    fragment("H_2C")
    ol
  })
    branch({
    single(from:1,to:1,angle:-2)
    fragment("H_2C")
    ol
  })
  ol
  operator("+")
  fragment("3NaOH")
  operator($->$)
  fragment("3C_17H_33COONa")
  operator("+")
  fragment("HC")
  branch({
    single(from:1,to:1,angle:2)
    fragment("H_2C")
    single(angle:4)
    fragment("OH")
  })
    branch({
    single(from:1,to:1,angle:-2)
    fragment("H_2C")
    single(angle:4)
    fragment("OH")
  })
  single(angle:4)
  fragment("OH")
})]

Données:

#[
#set text(0.75em)
#table(
  columns:4*(1fr,),
  align: center+horizon,
  [],[Oléine],[Soude],[Savon],
  [Solubilité \ dans *l'eau*],[insoluble],[soluble],[soluble],
  [Solubilité \ dans *l'eau salée*],[insoluble],[soluble],[peu soluble],
  [Solubilité \ dans *l'éthanol*],[soluble],[soluble],table.cell(fill:gray,)[],
  [masse molaire \ $g.m o l^(-1)$],[884]
,[40],[304]  
)
]
+ Quel montage choisir lors de l’étape 1 et 3 de de protocole ?
+ Pourquoi utilise-t-on de l’éthanol dans cette synthèse (ce n’est pas un réactif) dans l’étape 1 ?
+ Pourquoi utilise-t-on de l’eau salée dans l’étape 2 ?
+ Établir le tableau d’avancement complet de la réaction pour une transformation totale.
+ En déduire le rendement de la synthèse.
]

#exo("Synthèse du paracétamol")[

*Protocole de la synthèse*

#[
  #set enum(numbering:"a)")
  + Dans un ballon, introduire 10,0 g de para-aminophénol puis 30 mL d'eau et 12,0 mL d'anhydride éthanoïque. Chauffer à reflux pendant environ 20 minutes.
  + Refroidir le mélange et le transvaser dans un bécher. Refroidir alors dans un bain de glace : le paracétamol précipite.
  + Filtrer sous vide et laver à l'eau glacée. Essorer et sécher sur papier filtre.
  + Placer le produit brut humide obtenu à l'étuve à 80 °C : on obtient alors une masse de produit brut sec m = 10,8 g .
]

*Équation de réaction:*

para-aminophénol + anhydride éthanoïque $->$ paracétamol + acide éthanoïque

#ce("C6H7NO	+	C4H6O3	->	C8H9NO2	+	C2H4O2")

Données :

#[
#set text(0.75em)
#table(
  columns:4,
  align:center,
  [],[aminophénol],[paracétamol],[anhydride éthanoïque],
  [Masse molaire #gm],[109],[151],[102],
  [Température de fusion °C],[187],[170],[-73],
  [Solubilité dans l'eau],
  [0,8 g dans 100 g à 20 °C \
  8,5 g dans 100 g à 100 °C],[1 g dans 100 g à 20 °C \
  25 g dans 100 g à 100 °C],[],
  [Masse volumique],[],[],[1,082 $g.m L^(-1)$]
)]

+ Pourquoi faut-il chauffer à reflux ? Faire un schéma légendé de ce montage.
+ Justifier que l’anhydride éthanoïque est liquide à la température du laboratoire.
+ Pourquoi y a-t-il apparition d’un précipité lors de l’étape 2 ?
+ Calculer les quantités de matière à l’état initial.
+ En déduire les quantités de matière à l’état final pour une réaction totale.
+ En déduire le rendement de cette synthèse.

 Sur une plaque à chromatographie on effectue les dépôts suivants :
  - paraminophénol (E) en solution 
  - paracétamol brut (P )en solution
  - paracétamol issu d'un comprimé pharmaceutique ( P’ ) en solution  
 Après révélation, on obtient le chromatogramme suivant:
 
+ Interpréter ce chromatogramme. Le produit obtenu est-il pur ?
 Comment faut-il procéder pour purifier le paracétamol ?
 #align(center)[#image("media/chromato.png")]
]