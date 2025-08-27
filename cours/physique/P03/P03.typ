
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,type:"P",chap:[Mouvement d’un système.],nbr:3)

== Le vecteur vitesse.

=== Définition vue en 2de

Un point M se déplace à intervalle de temps régulier $Delta t med$et passe par différentes positions notées $M_i$ (où i est un entier donc M#sub[0] M#sub[1] M#sub[2] …) \
#definition("Vecteur vitesse")[La vitesse pour la position $M_i$ est:

#eq[$ arrow(upright("v"))_(upright("i")) upright("=") arrow("M"_"i" "M"_("i+1")) / (Delta t) $]
]

=== Construction d’un vecteur #emph[vitesse]

Par exemple comment #strong[tracer] le #emph[vecteur] $arrow(v)_3$~?

#wrap-content(align: right,
img("./media/image1.png",width:100%),
[
#set enum(numbering: "1)")
+ on mesure la distance d entre les points #strong[3] et #strong[4]
+ on calcule la norme de la vitesse $v_3 = frac(d, Delta t)$
+ à l’aide de l’échelle des vitesses on calcule la taille du vecteur à tracer
+ on dessine un vecteur qui part du point 3 dont la direction est celle de $M_3 M_4$ dont la taille est celle calculé.])

*Attention* 
- Les documents sur lesquels on travaille ne sont pas forcément à taille rélle, il faut alors *tenir compte de l'échelle*
- Il y a donc une échelle des distances ET une échelle des vitesses.

== Le vecteur #emph[variation] de la vitesse.

=== Définition

#definition("Vecteur variation de la vitesse")[Le vecteur variation de la vitesse au point $M \_ i$

#eq[$  Delta arrow(v)_i = arrow(v)_i - arrow(v)_(i - 1) $]
]
#strong[Interprétation] : Ce vecteur nous indique de \"comment la vitesse a changé\" depuis le point précédent.

=== Construction d’un vecteur #emph[variation] de la vitesse

Par exemple comment #strong[tracer] le vecteur $Delta arrow(v)_3$~?

#block[
#set enum(numbering: "1)")
+ on translate (glisse) le vecteur $- arrow(v)_2$ à la suite de $arrow(v)_3$(avec la règle et une équerre)
  #img("./media/image2.png")
+ on trace la somme des deux vecteurs précédents. $arrow(v)_3 + (- arrow(v)_2)$
  #img("./media/image3.png")
+ si on souhaite trouver sa valeur de la variation de la vitesse: on mesure la taille du vecteur puis on utilise l'échelle des vitesses.
]

*Attention~:* Généralement les vecteurs vitesses ne sont pas de même direction donc Δv#sub[i] ≠ v#sub[i] – v#sub[i-1] 

== Relation avec la somme des forces.

Cette partie tente de donner une réponse à la question~: «~pourquoi et comment le vecteur vitesse change-t-il~?~»

#definition("Relation approchée:")[On admet qu’entre deux instants #emph[proches] de durée Δt (s) , la variation du vecteur vitesse est égale à la somme des #strong[forces] exercées sur le système de masse m (kg)

#eq[$ m times Delta arrow(v) = Sigma arrow(F) times Delta t $]]

#strong[Remarque~:] La relation exacte sera vue en terminale.

#ex La chute libre.
#image("./media/image4.png")

#strong[Remarque importante~:]

Cette année, on calcule la vitesse d’un point en utilisant la distance qui le sépare du point suivant, puis on calcule sa variation en utilisant la vitesse du point précédent. Cela permet de réaliser des constructions plus simples.

→En terminale, on utilisera les points qui «~entourent~» le point étudié, c’est-à-dire~: $arrow(upright("v"))_(upright("i")) upright("=") arrow(upright("M")_(upright("i-1")) upright("M")_(upright("i+1"))) / upright("2Δt")$ et $Delta arrow(v)_i = arrow(v)_(i + 1) - arrow(v)_(i - 1)$

#displayProg(true)[- Utiliser la relation approchée entre la variation du vecteur vitesse d’un système modélisé par un point matériel entre deux instants voisins et la somme des forces appliquées sur celui-ci :
- pour en déduire une estimation de la variation de vitesse entre deux instants voisins, les forces appliquées au système étant connues ;
- pour en déduire une estimation des forces appliquées au système, le comportement cinématique étant connu
]