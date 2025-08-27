
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,type:"P",chap:[Aspects énergétiques des phénomènes mécaniques],nbr:5)

#h(1em) Nous avons vu qu'une force est capable modifier la trajectoire d'un objet en mouvement en changeant son vecteur vitesse. Dans ce chapitre nous verrons qu'une force est aussi capable d'agir sur l'énergie d'un système.

== Travail et énergie cinétique.
=== Énergie cinétique.

Un objet en mouvement possède une énergie due à ce mouvement : c’est l’énergie #strong[cinétique]

#definition("Energie cinétique")[Pour un système modélisé par un point matériel de masse m et de vitesse v, l’énergie cinétique est~:

#eq[$ E_c = 1 / 2 m times v^2 $]
m est en kg, v en m.s#super[\-1] et E#sub[c] en J]

=== Travail d’une force constante.

#definition("Travail d'une force")[Lorsqu’une force constante $arrow(F)$ se déplace d’une position initiale A vers une position finale B, son travail est~:

#eq[$ W_(A B) (arrow(F)) = arrow(F) . arrow(A B) = F times A B times c o s (theta)  $]

W#sub[AB] en J, F en N et AB en m et $theta$ est l'angle entre AB et F]

#img("./media/image1.png")

#rqs
#set enum(numbering: "a)", start: 1)
+ On dit qu’un travail est #strong[moteur] si W#sub[AB] \>0, et #strong[résistant] si W#sub[AB];\<0

+ Lorsque travail reste le même quelque soit le #strong[chemin suivi] pour aller de A à B, la force est #strong[conservative];.


#ex Le poids est une force conservative car $W_(A B) (arrow(P)) = m times g times (z_A - z_B)$ où z est l’axe vertical vers le haut.

#note(none)[Cette année seules les forces gravitationnelles (poids) et électriques sont conservatives.]

=== Théorème de l’énergie cinétique

#definition("Théorème de l'énergie cinétique")[La variation d’énergie cinétique d’un système entre deux points A et B est égale à la somme des travaux de toutes les forces.

#eq[$ upright("Δ") E_c = E_c (B) - E_c (A) = sum_()^() W_(A B) (arrow(F)) $]]

== Énergie mécanique.

=== Énergie potentielle de pesanteur.

#definition("Energie potentielle de pesanteur")[Un objet en altitude possède d’avantage d’énergie qu’au niveau du sol. Cet excès d’énergie est appelé énergie potentielle de pesanteur E#sub[pp]

#eq[$ E_"pp" = m times g times z $]

où E#sub[pp] est en J, m en kg , g est l’intensité de la pesanteur et z l’altitude en m
]
*Attention: * La valeur de l'énergie potentielle de pesanteur dépend de la position de l'origine du repère !

#strong[Remarque];~: Il existe d’autres formes d’énergies potentielles~:

- L’énergie potentielle électrique pour une charge dans un champ électrique

- L’énergie potentielle élastique pour un ressort étiré

=== L’énergie mécanique et sa conservation.

#definition("Energie mécanique")[L’énergie #strong[mécanique] d’un système est la somme de son énergie cinétique et potentielle.

#eq[$ E_m = E_C + E_"pp" $]]

#highlight[Deux situations importantes :]

a) #strong[Les forces qui travaillent sont conservatives];, alors l’énergie mécanique ne change pas au cours du temps.

#ex Lors d’une chute libre, la seule force en présence est le poids qui est une force conservative, donc l’énergie mécanique se conserve.
#img("./media/image2.png",width:75%)

b) #strong[Il y a une force non conservative qui travaille];, alors l’énergie mécanique diminue au cours du temps

#ex Lors d’une chute dans un fluide, la force de frottement effectue un travail c’est une force #strong[non] #strong[conservative];, donc l’énergie mécanique diminue au cours du temps.
#img("./media/image3.png",width:75%)

#definition("Théorème de l'énergie mécanique")[
S’il n'y a #strong[qu'une seule force] non conservative $arrow(f)$ (frottement par exemple) #strong[qui travaille];, et que toutes les autres forces sont conservatives, ou ne travaillent pas alors~:
#eq[$ upright("Δ") E_m = E_m (B) - E_m (A) = W_(A B) (arrow(f)) $]
]

#displayProg(viewProg)[
- Utiliser l’expression de l’énergie cinétique d’un système modélisé par un point matériel.
- Utiliser l’expression du travail dans le cas de forces constantes.
- Énoncer et exploiter le théorème de l’énergie cinétique.
- Établir et utiliser l'expression de l'énergie potentielle de pesanteur pour un système au voisinage de la surface de la Terre.
- Calculer le travail d’une force de frottement d’intensité constante dans le cas d’une trajectoire rectiligne.
- Identifier des situations de conservation et de non conservation de l’énergie mécanique.
- Exploiter la conservation de l’énergie mécanique dans des cas simples : chute libre en l’absence de frottement, oscillations d’un pendule en l’absence de frottement, etc.
- Utiliser la variation de l’énergie mécanique pour déterminer le travail des forces non conservatives.
]