
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,type:"P",chap:[Description d’un fluide au repos.],nbr:2)

#h(2em) Dans ce chapitre on étudie un fluide, c’est-à-dire un liquide ou un gaz. Comme il est impossible de connaître tous les paramètres microscopique du fluide on préfère l'étudier à l'aide de grandeur faciles à mesurer.

Ces grandeurs dépendent les unes des autres et suivent des lois physiques dont deux seront étudiées.

== Grandeurs macroscopiques.
=== Aspect microscopique.

#wrap-content(
align: right,
img("./media/image1.png",width: 100%, text:[Représentation de la trajectoire d’une molécule d’un fluide.]),
[#strong[Rappel~:] En physique l’échelle microscopique est celle des atomes et de molécules.

- À l’échelle microscopique, un fluide est constitué de particules (atomes ou d’atomes) qui se déplacent les unes par rapport aux autres à grande vitesse~: c’est l’agitation thermique

- Chaque particule est animée d’un mouvement imprévisible en raison des nombreux chocs qu’elle subit.)]
)

=== Aspect macroscopique.

#strong[Rappel~:] En physique l’échelle macroscopique est notre échelle.

À l’échelle macroscopique, on décrit un fluide à l’aide de grandeurs physiques faciles à mesurer, par exemple :

- la #strong[masse volumique] (ρ en kg.m#super[\-3];)

- la #strong[température] (T en kelvin)

- la #strong[pression] (P en Pa)

#note(none)[Les grandeurs macroscopiques ne sont pas indépendantes les unes des autres.
]

=== Pression.

#wrap-content(img("./media/image2.png",width:100%), [L\'ensemble des chocs des particules d’un fluide sur une paroi d’un récipient créent une force appelée force pressante notée $arrow(F)$. \

Cette force est toujours:
- perpendiculaire à la surface 
- dirigée vers l\'extérieur.])

#definition("Pression")[
  #wrap-content(align:right,
    figure(img("media/image4.jpg",width:75%),numbering:none, caption: "Blaise Pascal \n(1623-1662)"),
    [ La pression due à une force pressante F exercée sur une surface d’aire S est~:
      #eq[$ p = F / S $]
   ]
  )
   avec F en (N), p en pascal (Pa) et S en (m²)
]

#rqs
- L’air qui nous entoure exerce une pression appelée #strong[pression atmosphérique];. Sa valeur est de l’ordre de 1013 hPa et diminue avec l’altitude.

- Il existe d’autres unités de pression comme le bar. 1 bar = 1,0.10#super[5] Pa

== Loi de Mariotte

#definition("Loi de Mariotte")[

  #wrap-content(align:right,
  figure(img("media/Mariotte.jpg",width:75%),caption:"Edme Mariotte \n (1620-1684)",numbering: none),
  [
  Pour une quantité fixe de gaz à température constante, on a~:
  #eq[$ p times V = c o n s t a n t e $]
  ]
  )
]

- On dit que la pression est inversement proportionnelle au volume. 

- Toutes les combinaisons d\'unités sont possibles.

#block(stroke:0.5pt,inset:4pt,radius:4pt)[
  *Méthode:*

  Généralement la constante de la loi de Mariotte  n'est pas connue (car elle dépend de la température et de la quantité de gaz) La loi est alors utilisée sous la forme $ P_0 times V_0 = P_1 times V_1 $
]

== Loi fondamentale de la statique des fluides

#definition("Loi de la statique des fluides")[Dans un fluide #strong[incompressible] au repos, la pression augmente avec la profondeur.

#eq[$ p_B - p_A = rho times g times (z_A - z_B) $]
où
p est la pression (Pa) \
z l’altitude (m)\
ρ la masse volumique du fluide en kg.m#super[\-3]\
g = 9,81 N.kg#super[\-1]
#img("./media/image3.png")
]
#rqs
- Les liquides sont des fluides incompressibles, mais pas les gaz !
- Dans le cas de l’eau ρ = 1000 kg.m#super[\-3] on

#strong[Attention~];:
Un liquide en contact avec l\'air a une pression égale à la pression atmosphérique à sa surface.

#displayProg(true)[- Expliquer qualitativement le lien entre les grandeurs macroscopiques de description d\'un fluide et le comportement microscopique des entités qui le constituent
- Utiliser la loi de Mariotte
- Exploiter la relation F = P.S pour déterminer la force pressante exercée par un fluide sur une surface plane S soumise à la pression P
- Dans le cas d’un fluide incompressible au repos, utiliser la relation fournie exprimant la loi fondamentale de la statique des fluides : $P_2-P_1 = rho g(z_1-z_2)$.]