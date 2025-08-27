
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,type:"P",chap:[Interactions fondamentales et notion de champ],nbr:1)

#h(2em) Dans ce chapitre on s'intéresse à deux interactions fondamentales : la *gravitation* et l’interaction *électrique*. On verra aussi qu’une force peut être interprétée soit comme l’effet direct d’un corps sur un autre, soit comme l'action d'un "champ".

== L’interaction électrostatique.
=== Charges et interactions électrostatique

- Un objet isolant peut acquérir des propriétés électrique, on dit qu’il porte des #strong[charges] #strong[électriques] (ou qu’il est électrisé)

#img("./media/image1.png")


- L’expérience montre qu’il existe deux types de charges électriques, notées + et -
#img("./media/image2.png")

- Les charges de même signe se repoussent et celle de signe contraire s’attirent.

- Un objet électrisé est capable de séparer les charges électriques d’un objet qui est proche de lui par influence.
#img("./media/image3.png")

=== Loi de Coulomb.

#definition("Loi de Coulomb:")[La force électrostatique exercée par une #strong[charge] q#sub[A] sur une charge q#sub[B] placée à une distance d est~: \
#eq[$ arrow(F)_(A \/ B) = frac(k times q_A times q_B, d^2) arrow(u)_(A \/ B) thin $]

#wrap-content(
  figure(image("media/coulomb.png",width:75%),caption:"Charles-Augustin de Coulomb (1736-1806)",numbering:none),[
  q#sub[A] et q#sub[B] sont les charges en coulomb (C)\
  d la distance en #underline[mètre] (m)\
  F la force en newton(N)\
  k = 8,99×10#super[9] N.m#super[2];C#super[\-2]\
  $arrow(u)_(A \/ B) $ est un vecteur unitaire dirigé de A vers B
  ]
)]
#strong[Important~:]


#figure(
  table(
  columns: (50%, 50%),
  align: center+horizon,
  fill: (x,y) => (if y == 0 {luma(220)}),
  [Si les charges sont de même signe~:], [Si les charges sont de signes opposés~:],
  [alors q#sub[A] × q#sub[B]> 0 \ donc $arrow(F)_(A upright("/") B)$ et $arrow(u)_(A upright("/") B)$ sont de même sens], [alors q#sub[A] × q#sub[B] \< 0 donc $arrow(F)_(A upright("/") B)$ et $arrow(u)_(A upright("/") B)$ sont de sens opposé~!],
  [la force de A/B est #strong[attractive] #image("./media/image4.png")],[la force de A/B est #strong[répulsive] #img("./media/image5.png",width:60%)],
))

#strong[Attention~:]

- #strong[Ne pas confondre] une force et sa norme~! Une force est un vecteur et la norme est sa valeur. $arrow(F) != F$~!

- La norme d’un vecteur est toujours *positive*. Il faut donc parfois utiliser une valeur absolue $F thin = lr(|k times q_A times q_B|) / d^2$ pour être sûre qu’elle ne soit pas négative.

- On rappelle que $arrow(F)_(B upright("/") A) = - arrow(F)_(A upright("/") B)$

== L’interaction gravitationnelle.

Tous les objets s’attirent les uns les autres en raison de leur masse.

#definition("Loi de Newton:")[La force gravitationnelle exercée par un point de masse m#sub[A] sur un point de masse m#sub[B] placé à une distance d est~:

#eq[$ arrow(F)_(A \/ B) = - frac(G times m_A times m_B, d^2)  arrow(u)_(A \/ B) $]

#wrap-content(
  figure(img("media/newton.jpg",width:75%),caption:"Isaac Newton \n (1643-1727)",numbering:none),
  [
  m#sub[A] et m#sub[B] les masses en kilogramme (kg)\
  d la distance en #underline[mètre] (m)\
  G = 6,67×10#super[\-11] N.m#super[2];.kg#super[−2] est la constante gravitationnelle.\
  $arrow(u)_(A \/ B) med$ le vecteur unitaire dirigé de A vers B])
]

#strong[Remarques~:]

- La loi de Newton est valable pour des corps sphériques (planètes) à condition d\'utiliser la distance en les centres.
- Comme les masses sont positives, la force gravitationnelle est toujours attractive
- Les lois de Newton de Coulomb ont la même forme mathématique, car elles sont inversement proportionnelles au carré de la distance.

== Notion de champ.

Lorsque deux points A et B sont en interaction à distance, 2 interprétations sont possibles :

- Dire que B subit la force directement #strong[exercée par A] à distance.

- Ou dire que A créé un champ autour de lui, et B subit une force #strong[exercée par le champ] au point où il se trouve.

=== Champ de gravitation

Lorsque deux points A et B sont en interaction gravitationnelle, on peut dire :

- B subit la #strong[force] exercée par A: $arrow(F)$ (à distance)

- B est soumis au champ. $arrow(zeta)$ (qui existe au B)

#definition("Champ gravitationnel")[ Une masse ponctuelle m placée en un point de l’espace où existe un #strong[champ gravitationnel], $arrow(zeta)$, subit une force gravitationnelle~: 
#eq[$ arrow(F) = m times arrow(zeta) $]
]

=== Champ électrostatique

Le principe est le même : la présence de charges électriques créé un champ électrostatique $arrow(E)$ dans l’espace

#definition("Champ électrostatique")[ Une charge ponctuelle q placée en un point de l’espace où il y a un #strong[champ] #strong[électrostatique];, $arrow(E)$ subit une force électrostatique 
#eq[$ arrow(F)_() = q times arrow(E) $]
]

#note(none)[#strong[Remarque importante~:]

- Si q \> 0, la force est de même sens que le champ $arrow(E)$

- Si q \< 0 la force est de sens opposée au champ.]

=== Lignes de champ

Les champs gravitationnel ou électrostatique sont vectoriels pour les représenter dans une zone de l’espace, on dessine soit~:

#figure(
  placement:bottom,
  scope: "parent",
table(
    columns: 2,
    stroke: 0.5pt,
    [Les vecteurs en *différents points*], [Des lignes qui sont #strong[tangentes] au champ, où «~#strong[lignes de champ~»];],
    table.cell(colspan: 2)[#strong[Exemple 1];~: Champ électrostatique d’une charge positive.],
    [#img("./media/image6.png")],[#img("./media/image7.png")],
    table.cell(colspan: 2)[#strong[Exemple 2~:] Champ électrostatique de deux charges de signes différents.],
    [#img("./media/image8.png")],[#img("./media/image9.png")],
  )
)


#displayProg(true)[- Interpréter des expériences mettant en jeu l’interaction électrostatique.
- Utiliser la loi de Coulomb.
- Citer les analogies entre la loi de Coulomb et la loi d’interaction gravitationnelle.
- Utiliser les expressions vectorielles :
  
  de la force de gravitation et du champ de gravitation ;
  de la force électrostatique et du champ électrostatique.
- Caractériser localement une ligne de champ électrostatique ou de champ de gravitation.]