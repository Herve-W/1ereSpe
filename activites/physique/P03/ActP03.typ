
// #import "modele.typ": *
#import "@local/activite:0.1.0": *
#show: (doc) => config(doc,type:"P",nbr:3) //à compléter

+ Quelle différence y a-t-il entre une vitesse *moyenne* et une vitesse *instantanée* ? Si possible donner un exemple.

+ Pourquoi la vitesse doit être représentée par un *vecteur* et ne peut pas être juste un nombre ?

+ En utilisant la définition du cours donner l'expression de $arrow(v)_2$

+ Calculer la *valeur* de la vitesse au point n°2, puis construire le vecteur $arrow(v)_2$ sur le document à l'échelle.
Données~: Δt = 100 ms \ Échelle des vitesse 1 cm $<=>$ 5,0 cm/s. 
#img("media/image1.png",width:8cm)

4. Construire graphiquement le vecteur $Delta arrow(v)_4 = arrow(v)_4 - arrow(v)_3$ sur le document ci-contre.
#img("media/image2.png",width:8cm) #lf

5. Donner la valeur du vecteur $Delta v_4$ (attention à l'échelle) #lf
+ Que se passe-t-il lorsqu’un système n’est soumis à aucune force~? (ou à des forces qui se compensent) Rappeler le nom de ce *principe physique*.

+ De façon générale, pour quelle raison un système voit sa vitesse changer ?

+ Dans la situation de l'exemple *Q5.* la masse du point M est de 1,0 kg. Calculer la valeur de la force au point 4.

+ Représenter la force au point 4 sur le schéma (sans échelle particulière)

+ Deux systèmes A et B sont soumis à la même force pendant la même durée. Le système A à une masse beaucoup plus grande que le système B. Quel système va voir sa vitesse varier le plus ? Donner un exemple.
#show "annexe": [*ANNEXE*]

#exo("Lancé parabolique.")[

Un objet assimilé à un point M est lancé en l'air. On suppose que l'objet n'est soumis qu'a son poids (on dit aussi qu'il est en chute libre)

Le dessin n°1 en annexe présente différentes positions de l'objet.
Le dessin est à l'échelle 10 cm (papier) $<=>$ 1,0 m (réel)

L’intervalle de temps entre les positions est Δt = 100 ms

+ Calculer la vitesse réelle des points n° 4 et n°5. \

+ Tracer les vecteurs vitesses $arrow(v)_4$ et $arrow(v)_5$ avec l’échelle de 1,0 cm pour 1,0 m.s#super[\-1]

+ Construire le vecteur variation de la vitesse $Delta arrow(v)_5 = arrow(v)_5 - arrow(v)_4$

+ À l’aide d’une règle et en utilisant l’échelle déterminer la valeur de Δv#sub[5]

+ Calculer la valeur du poids de l’objet sachant que sa masse est m = 1,0 kg.

+ Que pouvez-vous en conclure~? L’hypothèse de de la chute libre est-elle vérifiée~?
]

#exo("Mobile autoporteur.")[

Un objet de masse m=50 g est accroché à un fil tendu verticalement à l’une de ses extrémités. L’autre partie du fil est horizontale et accrochée à un mobile autoporteur de masse M= 250 g par l’intermédiaire d’une poulie.#box(image("media/image5.png"))

Une fois le mobile lâché, on enregistre ses positions toutes les $Delta t =$50 ms sur le dessin 2 en annexe.

On suppose qu’il n’y a pas de frottement entre le mobile et la table, et que la tension du fil est égale au poids de l’objet.

La somme des trois forces est égale à la tension du fil puisque les forces verticales se compensent.

+ Calculer les vitesses aux points n°2, n°3, n°7 et n°8

+ En déduire les valeurs des vecteurs variation de la vitesse aux points n°3 et n°8

+ Justifier que la somme des forces exercées sur l’objet est la même en tous points.

+ Déterminer la valeur de cette force et la comparer à la tension du fil.

+ Quel serai la valeur du vecteur variation de la vitesse si la masse M de l’objet était 2 fois plus grande~?

+ Quelle serai la valeur du vecteur variation de la vitesse si la masse m du mobile était 2 fois plus grande~?
]

#exo("Mouvement de la Terre")[

Le mouvement de la Terre autour de Soleil est schématisé en annexe.

1. Dans quel référentiel cette situation est-elle représentée~?

2. Sans faire de calcul expliquer pourquoi la vitesse de la Terre est uniforme.

3. Montrer que la vitesse de la Terre est de l’ordre de 29 km.s#super[\-1]

4. Tracer les vecteurs $arrow(v)_2$ et $arrow(v)_3$ à l’échelle 1 cm $<=>$ 10 km.s#super[\-1]

5. Construire le vecteur $Delta arrow(v)_3 = arrow(v)_3 - arrow(v)_2$ et donner sa valeur.

6. Quelle est la direction et le sens de la force à laquelle la Terre est soumise~?
]

#align(center)[#text(size:15pt)[annexe:]]

#figure(
  caption: "Exercice 1",
  image("media/image3.png",width:10.2cm)
)

#v(7cm)


#figure(
  placement:bottom,
  scope: "parent",
  caption:"Exercice 2",
  image("media/image4.png",width:16cm)
)


#v(10cm)

#set page(columns: 1)
#figure(
  caption:"Exercice 3",
  image("media/image6.png",width:15.7cm)
)
