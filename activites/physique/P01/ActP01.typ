// #import "modele.typ": *
#import "@local/activite:0.1.0": *
#show: (doc) => config(doc,type:"P",nbr:1) //à compléter

*Rappels :*

+ En physique, qu’est-ce qu’une force~? Donner quelques exemples.

+ Comment les représente-t-on sur les dessins ?

+ Donner les noms des 3 caractéristiques d’une force.

+ Interpréter ce qui se passe dans la situation ci dessous en utilisant les mots #emph[noyaux, électrons]
#img("media/image1.png")
#lf
5. Sur les schémas ci-dessous dessiner (sans échelle particulière):
  - le vecteur $arrow(u)_(A\/B)$ au point B.
  - la force exercée par A sur B notée $arrow(F)_(A\/B)$
  #table(
    columns:(1fr,1fr),
    align: center+horizon,
    [Situation n°1 \ $q_A > 0$ et $q_B >0$ ],[Situation n°2 \ $q_A < 0$ et $q_B > 0$],
    [\ #image("media/situation1.png") \
    ],[\ #image("media/situation2.png")\ ],
  )

+ Calculer la valeur de la force $F_("proton"\/"électron")$ pour une distance de 1,0 nm entre l'électron et le proton. \ Données : $q_"proton"= e=$ #num("1.6e-19")C et $q_"électron"=-e=$ #num("-1.6e-19")C 

+ Calculer la valeur de la force exercée par la Terre sur la Lune. \ Données: m#sub[Terre] = 5,97×10#super[24] kg~; m#sub[Lune] = 7,35×10 #super[22] kg~; d#sub[T – L] = 3,84×10#super[5] km.

#lf

6. Expliquer le mouvement de rotation de l’aiguille d’une boussole en utilisant: \
  a) le mot de #emph[force] \ b) l’expression de #emph[champ magnétique.]

+ *Question importante: * En utilisant la loi de Newton, donner l’expression (formule) du champ gravitationnel $arrow(zeta)$ exercé par une masse ponctuelle A en un point M. On notera d la distance AM.

+ En utilisant le résultat précédent, que peut on dire de la valeur du champ si la distance est doublée ?
+ Sur le schéma ci dessous, une masse M exerce un champ gravitationnel autour d'elle. Représenter sans échelle mais de façon cohérente les vecteurs champs aux points notés A,B et C.
#img("media/situation3.png")
#lf

10. Une grandeur physique qui varie selon sa position dans l'espace constitue un champ. Sur les cartes ci-dessous quelles sont les deux champs représenté ?
#grid(
  columns:2,
  column-gutter: 5pt,
  [#image("media/Image10.png",height:5cm)],[#image("media/Image20.png",height:5cm)]
)

#block(stroke:0.5pt,inset:4pt,radius:4pt)[#strong[Rappels de mathématique~: 
]
#set enum(numbering: n => [*#n)*] )
+ Utilisation de la calculette\ Par exemple pour taper #num("1.6e-19") il faut taper
#{set image(width: 12.5%)
stack(dir:ltr,
image("media/1.png"),image("media/virgule.png"),image("media/6.png"),image("media/2de.png"), image("media/ee.png"),image("media/moins.png"),image("media/1.png"),image("media/9.png"))} La calculette affiche #box(image("media/resultat.png"))

Attention à ne pas écrire les puissances de 10 de cette façon sur le papier !
Il existe d'autres méthodes pour saisir les puissances de 10 mais elles risquent de générer des erreurs ...

2. Somme de deux vecteurs. 
À partir des deux vecteurs $arrow(u)$ et $arrow(v)$, comment construire graphiquement le vecteur $arrow(w) = arrow(u) + arrow(v)$~?
  - On «~glisse~» la base de $arrow(v)$ au niveau de la pointe de $arrow(u)$
  - On trace le vecteur qui part de la base de $arrow(u)$ jusqu’à la pointe de $arrow(v)$
#grid(
  columns:(1fr,1fr),
  [#img("media/Image200.png",width:50%)],[#img("media/Image300.png",width:80%)],
)
]


#exo("Charges et pendule")[
#img("media/image2.png")
On frotte une baguette de verre avec une peau de chat. La charge portée par la baguette est de +5 nC

Données: charge élémentaire e=1,6.10#super[\-19] C, \
+ Combien de charges élémentaires porte la baguette~?
+ Quelle est la valeur de la charge électrique portée par la peau de chat~?
+ La baguette de verre est capable d’attirer une petite bille d’aluminium suspendue à l’aide d’un fil. Expliquer pourquoi. (il est possible de représenter les charges sur le schéma)
]


#exo("L’atome d’hydrogène.")[

L’atome d’hydrogène est constitué d’un proton de charge +e et de masse 1,67×10#super[\-27] kg autour duquel se trouve un électron de charge – e et de masse 9,11×10#super[\-31] kg. La distance moyenne entre les deux particules est de 53 pm.

Données:  Les constantes fondamentales sont notées dans le cours. 1pm (pico) = 10#super[-12] m

+ Quel est la direction et le sens de la force gravitationnelle exercée par le proton sur l’électron~?

+ Calculer sa valeur.

+ Quelle est la direction et le sens de la force électrostatique exercée par le proton sur l’électron~?

+ Calculer sa valeur.

+ Comparer les valeurs des deux forces et conclure.
]

#exo("Champs électrostatiques")[


On disposes 3 charges notées A,B et C., déterminer leurs signes pour les deux situations ci-contre (les traits sont des lignes de champs).

#img("media/image3.png",width:75%)#img("media/image4.png",width:75%)

Représenter sans échelle~:

- le vecteur champ électrostatique au point 1.
- la force exercée sur une charge positive que l’on place au point 2. \
- la force exercée sur une charge négative placée au point 3.
]

#exo("Champ d’un dipôle")[

#img("media/image5.png",width:100%)
Un dipôle est constitué de deux charges de signes opposés proches l’une de l’autre (voir schéma). On cherche à déterminer la direction et le sens du champ électrostatique en quelques points.

+ Représenter (sans échelle) le champ $arrow(E)_1$créé par la charge positive au point A.

+ Représenter le champ $arrow(E)_2$créé par la charge négative au point A de façon cohérente.

+ Représenter le champ des deux charges en A en construisant $arrow(E)_1 + arrow(E)_2$

+ Procéder de la même façon pour le point B.

+ Tracer approximativement les champs en C et D.

+ Comparer vos réponses avec les lignes de champ du document ci-dessous et conclure.
#img("media/image6.png",width:75%)
]

#exo("Champ gravitationnel terrestre.")[


Données~: Masse de la Terre m#sub[T] = 5,97×10#super[24] kg, \ Le rayon de la Terre est de 6380 km.

+ Écrire l’expression vectorielle de la force gravitationnelle exercée par la Terre T de masse m#sub[T] sur un point P de masse m. On notera $arrow(u)$le vecteur unitaire dirigé de P vers T

+ En déduire l’expression vectorielle du champ gravitationnel exercée par la Terre au point M.

+ Calculer la valeur du champ gravitationnel au niveau du sol (altitude 0), et à 10 km d’altitude, puis conclure.

+ À quelle altitude le champ de gravitation est deux fois plus petit qu’au niveau du sol~?
]
#lf

*Exercice supplémentaire :*

#exo("Le noyau d’hélium")[

Le noyau d’hélium est constitué de 2 protons et 2 neutrons que l’on suppose sphériques et au contact avec les centres dans le même plan comme sur le schéma ci-contre. #img("media/image100.png",width:25%)

Le proton et le neutron ont une même masse m =1,67.10#super[\-27] kg et un même rayon R=1,2.10#super[\-15] m

Données: Charge élémentaire~: e = 1,60.10#super[\-19] C. Les constantes fondamentales sont dans le cours.

+ Montrer, à l\'aide du schéma, que la distance entre un proton et un neutron est $2 R$ alors que la distance entre deux protons est 2$sqrt(2) R$

+ Calculer la valeur de la force électrostatique entre 2 protons. Est-elle attractive ou répulsive~?

+ Pourquoi n’y a-t-il pas d’interaction électrostatique entre le proton et le neutron~?

+ Calculer la valeur de la force gravitationnelle entre 2 protons. Est-elle attractive ou répulsive~?

+ Pourquoi l’interaction gravitationnelle est la même entre un proton et un neutron~?

+ Dans ce noyau, l’interaction électrostatique est bien plus grande que l’interaction gravitationnelle. Que devrait-il se passer~?
]