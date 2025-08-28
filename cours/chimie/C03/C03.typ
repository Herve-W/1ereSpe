
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[Évolution des quantités de matière lors d’une transformation],nbr:3,type:"C")

#h(2em) Dans ce chapitre nous allons apprendre à utiliser un outil important appelé *tableau d'avancement* qui permet de prévoir la composition chimique d'un mélange après une transformation totale.

== Avancement d’une transformation chimiques.

Lors d’une transformation chimique, les quantités des matière des espèces chimiques varient

- celles des réactifs #strong[augmentent]

- celles des produits #strong[diminuent]

#definition("Avancement d'une réaction")[L’avancement, noté x, est une quantité #strong[de matière] permettant de #strong[suivre] l’évolution d’une transformation chimique. \ À un instant donné, sa valeur est égale à la quantité de matière formée par un produit dont le coefficient stœchiométrique est égal à 1.]

#strong[Exemple~];: Dans la transformation \
$ C H_4 + 2 O_2 arrow.r C O_2 + 2 H_2 O $ 
s’il se forme x moles de CO#sub[2] alors~en même temps :

- il se forme aussi 2x moles de H#sub[2];O

- x moles de CH#sub[4] a été consommé ainsi que 2x moles de O#sub[2]

== Le tableau d’avancement.

Le tableau d’avancement est un outil permettant de décrire l’évolution d’un système chimique.

=== Construction.

Le tableau présente généralement #underline[4 lignes];~:

- 1ère ligne~: l’équation de la réaction
- 2ème ligne~: les #strong[quantités de matière] en début de transformation (ou état initial).
- 3ème ligne~: les quantités de matière #strong[en] cours de réaction pour un avancement x.
- 4ème ligne~: les quantités de matière à l’état maximal


#strong[Exemple~:] On fait brûler 3,7 mol de CH#sub[4] avec 9,3 mol de O#sub[2];. \
Compléter les 4 lignes du tableau suivant~:

//style pour tableau
#let myStroke(col) = (x,y) => (
  y: if y > 0 {col},
  right: if x > 0 and x < 5 {col},
  left: if x == 2 {col} else {0pt}
)
#let myfill(col) = (x,y) => {
  if y == 0 and x >1 {col}
}

#set table(stroke: myStroke(luma(20)),fill: myfill(luma(220)))

#table(
  columns:6,
  align: center,
  [],[],[$C H_4 $],[$+2 O_2 arrow$],[$C O_2$],[$+2 H_2 O$],
  [Etat initial],[$x=0$],[3,7],[9,3],[0],[0],
  [En cours],[$x>0$],[3,7-x],[9,7-2x],[x],[2x],
  [état maximal],[$x_"max"$],[3,7-$x_"max"$],[9,7- 2$x_"max"$],[$x_"max"$],[2$x_"max"$],
)



=== Avancement maximum x#sub[max];.

- La valeur de l’avancement x augmente au cours du temps, jusqu’à ce que la quantité de matière de l’un des réactifs (au moins) arrive à 0. Celui-ci est appelé #strong[réactif limitant];.

- À ce moment, la réaction est terminée et l’avancement a atteint sa valeur maximale x#sub[max]

#strong[#underline[Comment trouver la valeur de x#sub[max~];?];]

- La quantité de matière de CH#sub[4] ne peut pas être négative donc 3,7 – x ≥ 0 donc x#sub[max] ≤ 3,7 mol

- La quantité de matière de O#sub[2] ne peut pas être négative donc 9,3 – 2x ≥ 0 donc x#sub[max] ≤ 4,7 mol

- Comme les deux conditions doivent être valables en même temps on a \
  x#sub[max] = 3,7 mol et le réactif limitant est CH#sub[4]

#definition("Avencement maximal")[Pour une transformation chimique, d’équation

$ a A + b B arrow.r c C + d D $

Où A et B sont les espèces chimiques de quantités de matière initiales n#sub[i];(A) et n#sub[i];(B), et a et b sont les coefficients stœchiométriques~: \
l’avancement maximum x#sub[max] est la plus petite des valeurs entre:

#eq[$ frac(n_i (A), a) "et"  frac(n_i (B), b) $]]

== Application et utilisation du tableau d’avancement.

=== Transformation totale ou non.

Une réaction qui s’arrête avant que l’avancement n’arrive à sa valeur maximale est appelée #strong[réaction] limitée (ou non totale).

Si la réaction est limitée, il n’y a plus de réactif limitant et on a donc l’avancement final est inférieur à l’avancement maximal.

=== Mélanges stœchiométriques.

#definition("Mélange stœchiométrique")[Un mélange est dit stœchiométrique si les réactifs sont mis en présence dans les proportions des coefficients stœchiométriques.]

- Pour une transformation d’équation~: $a A + b B arrow.r c C + d D$ \
  le mélange est stœchiométrique si~: $ frac(n_i (A), a) med = med frac(n_i (B), b) $

- Pour une réaction totale, tous les réactifs sont épuisés lorsque x = x#sub[max]

=== Courbes d’évolutions.

#note(none)[On représente *graphiquement* les quantités de matières des différentes espèces (réactifs,produits) en fonction de l’avancement x.]

Ce sont des fonctions:
- affines pour les réactifs
- linéaire pour les produits
#img("./media/image1.png",width:100%,text:"Courbe d'évolution de la transformation \n"+$C H_4 + 2 O_2 arrow.r C O_2 + 2 H_2 O$ )

#displayProg(viewProg)[
- Décrire qualitativement l’évolution des quantités de matière des espèces chimiques lors d’une transformation.
- Établir le tableau d’avancement d’une transformation chimique à partir de l’équation de la réaction et des quantités de matière initiales des espèces chimiques.
- Déterminer la composition du système dans l’état final en fonction de sa composition initiale pour une transformation considérée comme totale.
- Déterminer l’avancement final d’une réaction à partir de la description de l’état final et comparer à l’avancement maximal.]
