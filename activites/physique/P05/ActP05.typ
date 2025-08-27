#import "@local/activite:0.1.0": *
// #import "modele.typ": *
#show: (doc) => config(doc,nbr:5,type:"P") //à compléter

+ Calculer l'énergie cinétique d'un cycliste avec son vélo (assimilé à un point) de masse m = 80 kg à une vitesse de 5,0 $m.s^(-1)$

+ Calculer l'énergie cinétique d'un camion assimilé à un point de masse m = 40 tonnes roulant à 90 km.h#super[-1]#lf

+ On tire un petit chariot (modélisé par un point) sur une distance AB = 20 cm. La tension du fil est T = 6,0 N sa direction est inclinée de 30° avec l'horizontale. Calculer le travail de la tension entre A et B #img("media/image1.png",width:75%)

+ On laisse glisser un chariot de masse m = 500 g, modélisé par un point le long d’un plan incliné entre un point A d’altitude $z_A$=1,0 m et un point B d’altitude $z_B$=0. \ g=10 N.kg#super[\-1]#img("media/image2.png") *Aide:* On pourra remarquer la présence d'un triangle rectangle ce qui permet d'exprimer le cosinus de l'angle.

+ Un chariot modélisé par un point, avance de A à B où il s’arrête.#img("media/image3.png") Justifier que le travail de la force de frottement f est $W_(A B) (arrow(f)) = f times A B times c o s (180) = - f times "AB" $ #lf

+ Un objet de masse m = 1,0 kg est lâché sans vitesse initiale depuis un point A de hauteur $z_A$ = 10 m. L'objet touche le sol en B ($z_B =0$) avec une vitesse $v_B$
  - Calculer la valeur de l'énergie mécanique en A.
  - On suppose que l'énergie mécanique reste constante (pourquoi ?) en déduire la valeur de l'énergie cinétique en B.
  - Calculer $v_B$
#lf

#block(stroke:1pt,inset:2pt)[
  #align(center)[*Rappels mathématiques*] 

  On appelle produit scalaire l'opération mathématique entre deux vecteurs $arrow(u)$ et $arrow(v)$ tel que $ arrow(u).arrow(v) = norm(u) times norm(v) times cos(hat(u v))  $
  *Attention:* Le résultat d'un produit scalaire n'est pas un vecteur mais un #underline[nombre] (on dit aussi un scalaire !)
  
  Dans le cas où on dispose des *coordonnées* des deux vecteurs $arrow(u) (u_x ; u_y)$ et $arrow(v) (v_x;v_y)$ le produit scalaire se calcule par $  arrow(u).arrow(v) = u_x.v_x + v_x.v_y $
]

#exo("Travail et énergie cinétique.")[

Une caisse, modélisée par un point matériel de masse m=500 g, est placée sur un plan incliné à 15° par rapport à l’horizontal. À l’aide d’un fil on exerce une tension constante de 5,0 N. Les autres forces sont le poids de la caisse, et la réaction du support. On suppose qu’il n’y a pas de frottement entre la caisse et le support. La distance AB est de 2,0 m. On donne g=9,8 N.kg#super[\-1]
#img("media/image4.png",width:75%)
+ Calculer le travail de la tension du fil $W_(A B) (arrow(T))$ pour aller de A à B 

+ Calculer le travail de la réaction du support $W_(A B) (arrow(R))$ pour aller de A à B 

+ Expliquer pourquoi l’angle entre $arrow(P)$ et $arrow(A B)$ vaut 105° et calculer la valeur du travail du poids pour aller de A à B~: $W_(A B) (arrow(P))$

+ La vitesse de la caisse est nulle au point A. En appliquant le théorème de l’énergie cinétique, calculer la valeur de l’énergie cinétique au point B.

+ En déduire la vitesse de la caisse au point B.
]


#exo("Mouvement d’un jouet.")[

On fait rouler une petite voiture, modélisée par un point matériel de masse m =50 g, sur le sol horizontal. On lançant en un point A avec une vitesse initiale de 1,8 m.s#super[\-1];. On observe que la voiture s’arrête au bout de 2,5 m.

Lorsqu’elle est en mouvement, 3 forces s’exercent sur elle, son poids, la réaction du support et la force de frottement.

+ Expliquer pourquoi le poids et la réaction du support ne travaillent pas.

+ En utilisant le théorème de l’énergie cinétique, calculer la valeur de la force de frottement supposée constante.

+ Si la force de frottement conserve la même valeur, quelle serai la distance parcourue par la voiture si on lui donne une vitesse initiale de 3,6 m.s#super[\-1~];?
]


#exo("Le skieur")[

Un skieur avec son équipement sont modélisés par un point matériel de masse m = 87 kg. Le skieur s'élance avec une vitesse initiale v#sub[0] = 5,4 m.s#super[\-1] du haut d'une piste d'altitude z#sub[0] = 2500 m. L’arrivée de la piste est à l’altitude $z_1$ = 2300 m.

L’intensité de la pesanteur est g = 9,80 N.kg#super[\-1]

+ Calculer l\'énergie cinétique, potentielle et mécanique initiale du skieur.\ *NB:* on pourra choisir de placer l'origine de l'énergie potentielle en bas de la piste !

En bas de la piste, la vitesse du skieur est v#sub[1];=12,7 m.s#super[\-1]
2. Calculer l\'énergie cinétique, potentielle et mécanique du skieur au bas de la piste.

+ L\'énergie mécanique se conserve-t-elle ? Quelles en sont les raisons ?

+ Quelle aurait été la vitesse du skieur si l\'énergie mécanique avait été constante ? Commentez la réponse.
]


#exo("Le pendule (énergies)")[

#img("media/image5.png")

Un pendule est constitué d’une masse m= 10 g, assimilée à un point matériel, suspendue à un fil de longueur constante l =1,0 m. \
Lorsqu’on éloigne le pendule de sa position d’équilibre et qu’on le lâche, il se met à osciller. La position du pendule est repérée par l’angle θ avec la verticale.

L\'origine de l\'énergie potentielle de pesanteur est prise au point le plus bas de son mouvement pour θ =0°.

+ On suppose qu’il n’y a pas de force de frottement. Quelles sont les forces exercées sur la masse~?

+ Donner un argument pour justifier que la force de tension du fil ne travaille pas.

+ Dans ces conditions y a-t-il conservation de l’énergie mécanique~?

+ Montrer que l\'énergie potentielle de pesanteur peut s\'écrire $E_(P P) = m times g times l times (1 - c o s (theta))$

Le pendule se trouve dans la main de l’opérateur sous un angle initial de 30°, on lui donne une vitesse initiale v#sub[0] = 1,0 m.s#super[\-1] vers le bas dans le sens du mouvement.

5. Calculer la valeur de son énergie mécanique.

+ En utilisant la conservation de l’énergie mécanique, calculer la valeur maximale de l’angle lorsqu\'il arrive de l\'autre côté.
]

#exo("Le pendule (courbes d'évolution)")[

Un pendule est constitué d’une masse m = 50 g, assimilée à un point matériel, suspendue à un fil de longueur constante l=1,0 m. On éloigne le pendule de sa position d’équilibre d’un angle θ par rapport à la verticale, puis on le lâche à t=0 . Il se met à osciller.

Le graphique montre l’évolution des énergies cinétique, potentielle de pesanteur et mécanique.
#img("media/image6.png",width:75%)
+ Associer à chaque courbe la forme d’énergie qui lui correspond.

+ Quelle est la période du pendule~?

+ L’énergie mécanique se conserve-t-elle~? Expliquer.

+ Calculer la vitesse du pendule à t=0,5 s
]
