
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[Images et couleurs.],type:"P",nbr:7)

== Image à travers une lentille convergente.
=== Les grandeurs algébriques.

#definition("Grandeur algébrique")[Une grandeur est algébrique si sa valeur peut être positive ou négative.

En optique, les distances sont algébriques
]
#ex La distance entre A et B est notée~: $overline(A B)$

=== Objets et images

- Un #strong[objet lumineux] est un ensemble de points dont les rayons lumineux partent.
- Une #strong[image] est un ensemble de points où les rayons se croisent après avoir traversé la lentille.

=== Relation de conjugaison.

#strong[Notations~:] 
- AB est un objet lumineux dont A est situé sur l’axe optique d’une lentille convergent de centre optique O et de distance focale f’.

- On note A’B’ l’image de AB par cette lentille convergente.
#img("./media/image1.png",width:75%)

#definition("Relation de conjugaison")[Les positions de O, A et A’ sont liées par #underline[la relation~de conjugaison];~:
#eq[$ 1 / overline(O A^(')) - 1 / overline(O A) = 1 / f^(') $]]

#strong[Vocabulaire~:]

- Si l’image à $A^(') B^(')$ peut être observée sur un écran, on dit qu’elle est réelle.

- Si l’image A’B’ ne peut être vue qu’en regardant directement dans la lentille, on dit qu’elle est virtuelle.

=== Relation du grandissement.

#definition("Relation du grandissement")[Si A’B’ est l’image d’un objet AB à travers une lentille convergente, le grandissement est~: 
#eq[$ gamma = overline(A^(') B^(')) / overline(A B) = overline(O A^(')) / overline(O A) $ ]
]

#rqs
- Si l’objet et l’image sont dans le même sens $gamma > 0$, sinon l’image est renversée.
- si $abs(gamma) <1$ l'image est plus petite que l'objet.

== Les couleurs.

=== Synthèse additive

- L’expérience montre que si on mélange deux lumières colorées différentes, on observe une nouvelle couleur.

#img("./media/image2.png")

On obtient des couleurs secondaires, jaune, magenta, cyan.

#note(none)[Rouge + Vert = Jaune

Rouge + Bleu = Magenta

Bleu + Vert = Cyan]

#definition("")[- Le rouge, le vert et le bleu sont des couleurs #strong[primaires] #underline[lumière];
- La superposition des trois couleurs primaires donne une lumière blanche.
- On appelle couleur complémentaire, deux couleurs dont la superposition donne une lumière blanche.]

=== Synthèse soustractive.

Si on superpose deux filtres colorés, on obtient de nouvelles couleurs.

Le jaune, le cyan et le magenta sont des couleurs primaires #underline[matières];.

La couleur observée est celle qui n’est pas absorbée par les filtres.
#img("./media/image3.png")
=== Couleur d’un objet.

Un objet apparaît coloré lorsqu\'il est capable d’absorber certaines couleurs. L’objet diffuse la couleur complémentaire de celle qui est absorbée.

=== Trichromie.

Il existe 2 types de photorécepteurs sur la rétine~:

- les «cônes \
  sont sensibles aux fortes intensités lumineuse (jour) \
  existent sous 3 sortes, sensibles au Rouge, Vert et Bleu

- les «bâtonnets~» sont sensibles aux faibles intensités lumineuse (nuit)

#displayProg(viewProg)[
  
- Exploiter les relations de conjugaison et de grandissement fournies pour déterminer la position et la taille de l’image d’un objet-plan réel.
- Déterminer les caractéristiques de l’image d’un objet-plan réel formée par une lentille mince convergente.
- Choisir le modèle de la synthèse additive ou celui de la synthèse soustractive selon la situation à interpréter.
- Interpréter la couleur perçue d’un objet à partir de celle de la lumière incidente ainsi que des phénomènes d’absorption, de diffusion et de transmission.
- Prévoir le résultat de la superposition de lumières colorées et l’effet d’un ou plusieurs filtres colorés sur une lumière incidente.
]