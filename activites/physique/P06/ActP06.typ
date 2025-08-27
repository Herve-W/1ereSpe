#import "@local/activite:0.1.0": *
// #import "modele.typ": *
#show: (doc) => config(doc,nbr:6,type:"P") //à compléter

+ Quelles sont les propositions justes ?
 #set enum(numbering:"a)")
  + une onde transporte de l'énergie.
  + la lumière est une onde mécanique.
  + la célérité d'une onde dépend du milieu de propagation.
  + une onde mécanique ne se propage pas dans le vide.
  + le vent est une onde.
  #lf

+ Quelles sont les propositions justes ?
 #set enum(numbering:"a)")
 + Toutes les ondes sont périodiques.
 + Sans changer de milieu, si la fréquence d'une onde est doublée, la longueur d'onde est aussi doublée.

#exo("Onde sur une corde")[

Une onde sur une corde est créée à l'instant t=0 à partir du point S. Un point M se trouve à 50 cm de S.
Le schéma montre la situation à l’instant t=0,30 s
#align(center)[#image("./media/image6.png",width:75%)]

+ Décrire le mouvement du point M lors du passage de l’onde.
+ Définir puis calculer la célérité de l’onde.
+ Faire un schéma de la corde à t=0,60 s.
+ Pendant combien de temps le point M est-il en mouvement~?
]

#exo("Ondes sismiques")[

Parmi les ondes sismiques, on distingue :
#image("./media/image11.png")

- les ondes P ou ondes primaires, qui sont des ondes de compression ou ondes longitudinales ; leur célérité vaut en moyenne v#sub[p] = 6,0 km.s #super[\-1];.

- les ondes S ou ondes secondaires, appelées également ondes de cisaillement ou ondes transversales ; leur célérité v#sub[s] vaut en moyenne v#sub[s] = 3,5 km.s #super[–1];.

Sur un sismogramme on observe que les ondes S arrivent à un instant t#sub[P] et les ondes S arrivent à un instant t#sub[S] , 5,0 s plus tard.

Déterminer la distance d à laquelle se trouve la source des ondes.
]

#exo("Célérité d’ondes périodiques sur l’eau")[

Un vibreur génère des ondes périodique de fréquence 25 Hz sur l’eau. La situation est visible sur la photo. Attention le document n'est pas à taille réelle !
#box(image("./media/image7.png"))

+ Mesurer la longueur d’onde sur le document. La valeur doit être précise.
+ Rappeler la relation entre longueur d’onde et fréquence.
+ En déduire la célérité des ondes sur l’eau.
]



#exo("Célérité du son dans l’air.")[

Trois micros M#sub[1];, M#sub[2] et M#sub[3] sont alignés de telle manière que les distances M#sub[1];M#sub[2] et M#sub[2];M#sub[3] valent respectivement 2,00 m et 3,00 m. Les signaux électriques correspondant aux sons reçus par les micros sont enregistrés grâce à un ordinateur. 

On donne un coup de cymbale devant le premier micro M#sub[1] puis lance immédiatement l’enregistrement. 
#align(center)[#image("./media/image8.png",width:75%)]
+ Quel est le temps de retard de l’onde sonore en M#sub[2] par rapport à M#sub[1~];?
+ En déduire la valeur de la célérité du son dans l’air.
+ À l’aide d’une autre mesure faire un deuxième calcul de la célérité du son.

On dispose maintenant les deux micros M#sub[1] et M#sub[2] à la même distance d’un diapason. Les signaux sonores obtenus sont alors en phase. 
#figure(caption:"signaux en phase", numbering: none,image("./media/image9.png",width:75%))

4. Déterminer la période puis la fréquence du son émis par le diapason.


On  éloigne le microphone M#sub[2] et la courbes correspondante se décale progressivement pour revenir en phase. On répète l’opération jusqu’à compter cinq positions pour lesquelles les courbes sont à nouveau en phase. La distance entre les deux microphones est alors égale à 3,86 m.
#figure(caption:[M#sub[2] se décale], numbering: none,image("./media/image10.png",width:75%))

5. Définir la longueur d’onde. Déduire sa valeur numérique de l’expérience

+ Calculer la célérité du son dans l’air et comparer aux valeurs précédentes.

]

#exo("La houle")[

La houle est un mouvement ondulatoire de la surface de la mer dû au frottement d’un vent éloigné de la zone d'observation. 
En l'absence de vent les vagues continuent à se propager librement.

Si on observe un objet flottant à la surface de la mer: les vagues le soulèvent, puis il revient à sa position initiale. Si l’eau est assez profonde, ce déplacement vertical lors du passage de la vague est accompagné d’un mouvement de va-et-vient horizontal de même amplitude. 
Le savant allemand F Gerstner a démontré que les « particules d'eau » décrivent des trajectoires circulaires dont le diamètre est égal à la hauteur de la vague.
#align(center)[#figure(caption:"mouvement d'une particule d'eau",
numbering: none, image("./media/image12.png"))]

+ Décrire le mouvement d'un bateau sous l'effet de la houle.

 - Lorsque la profondeur h de la mer est supérieure à la longueur d'onde, on parle de vague en eau profonde, la vitesse se calcule alors par la formule :
 $ v=sqrt((g lambda)/(2pi)) $  où g est l'accélération de la pesanteur g = 9,8 $m.s^(-2)$ et λ la longueur d'onde

 - Lorsque la profondeur h de la mer est petite par rapport à la longueur d'onde, la vitesse de l'onde devient :
 $ v=sqrt(g h) $
  avec g = 9,8 $m.s^(-2)$ et h est la profondeur de l'eau.

+ La vague représentée sur le document suivant est elle en eau profonde ? (Bien justifier)
 #align(center)[#image("./media/image13.png",width:75%)]
+ Calculer la célérité de cette onde.
+ En déduire la durée qui sépare l'arrivée de deux vagues successives en un même point.
+ Lors d'un tsunami, la longueur d'onde créée par le séisme peut atteindre 100 km. Sachant que la profondeur moyenne de l'océan Pacifique est de l'ordre de 4 km, déterminer la vitesse de l'onde.
+ En déduire sa période. Pourquoi le tsunami passe-t-il inaperçu en haute mer ?
+ Le document suivant montre l'évolution de la houle à l'approche du rivage. Comment évolue sa célérité ?

 #align(center)[#image("./media/image14.png")]
]