
// #import "modele.typ": *
#import "@local/activite:0.1.0": *
#show: (doc) => config(doc,nbr:2,type:"P") //à compléter

+ Pourquoi est-il impossible de calculer toutes les positions et les vitesses des molécules d’un fluide~? On rappelle qu'un litre d’air, contient de l’ordre de 10#super[22] molécules.

+ Associer les les propriétés microscopiques et les grandeurs physiques macroscopiques:

#{set text(size:10pt)
table(
  columns:(1fr,auto,30pt,auto,1fr),
  align: (left,right,left,right),
  stroke:none,
  [Distance entre les molécules],[#sym.circle.filled],[],[#sym.circle.filled],[pression],
  [Vitesse des molécules],[#sym.circle.filled],[],[#sym.circle.filled],[masse volumique],
  [Fréquence des chocs entre molécules],[ #sym.circle.filled],[], [#sym.circle.filled],[ température]
)
}
#lf
3. Représenter les forces pressantes exercées par le gaz contenu dans la bouteille aux points A,B et C sans échelle particulière.#img("media/image1.png",width:25%)

+ Dans la situation précédente calculer la valeur de la force pressante exercée sur le bouchon d’aire S = 7,0 cm² pour p = 3,0×10#super[5] Pa.

+ On enferme 100 cm³ d’air dans une seringue à la pression atmosphérique de 1013 hPa. Quelle sera sa pression si on tire doucement sur le piston et que le volume final est de 200 cm³. Conclure

+ Calculer la pression *totale* au fond d’une piscine de 10 m de profondeur. \ Données~: ρ#sub[eau] =1,0.10#super[3] kg.m#super[\-3~];; pression atmosphérique 1,0×10#super[5] Pa.

#lf

#exo("Comportement microscopique et grandeurs macroscopiques.")[

On chauffe une bouteille indéformable contenant un gaz initialement à la pression atmosphérique.

+ En décrivant le comportement microscopique des molécules, expliquer pourquoi la pression va augmenter.

On enferme de l’air dans une seringue que l’on bouche avec le doigt. On tire lentement le piston et la température du gaz ne change pas.

2. Expliquer pourquoi la pression diminue en décrivant le comportement microscopique des molécules.

Un paquet de chip acheté en plaine apparaît très gonflé lorsqu’il se trouve en montage (haute altitude)

3. Expliquer pourquoi le volume du paquet a augmenté en décrivant le comportement microscopique des molécules

+ Pour chacune des 3 situations précédentes (bouteille, seringue, ballon) la masse volumique du gaz change-t-elle~?
]

#exo("Pression sur un hublot")[

Dans un Airbus volant à 10 000 m d’altitude, la pression de l’air est égale à 800 hPa, alors que la pression de l’air à extérieur de l’avion est égale à 260 hPa

+ Calculer la valeur de la force pressante exercée sur le hublot d’aire 900 cm²

  #block[
  #set enum(numbering: "a.", start: 1)
  + par l’air qui se trouve à l’intérieur de l’avion
  + par l’air qui se trouve à l’extérieur de l’avion
  ]

+ Représenter les deux forces pressantes, sans échelle mais de façon cohérente sur un schéma clair en coupe.

+ Donner la valeur de la somme des forces exercées sur le hublot, sa direction et son sens puis expliquer pourquoi il doit être plus épais qu’une vitre ordinaire. \
  #strong[aide~:] Les forces pressantes s’additionnent vectoriellement.

]

#exo("Ballon sonde")[


Un ballon sonde est gonflé avec de l’hélium au niveau du sol à l’altitude 0 m sous la pression atmosphérique P#sub[atm];=1013 hPa son volume est V=1,00 m³ la masse volumique du gaz est de 167 g.m#super[\-3] \
On libère le ballon qui s’envole et monte jusqu\'à l’altitude de 7000 m où il éclate.
#img("media/image10.png",width:100%)

+ Donner l’expression de la loi de Mariotte.

+ En supposant que la température est constante avec l’altitude, quel sera le volume du ballon juste avant qu’il n’éclate ?

+ Calculer la masse volumique du ballon à ce moment-là.

+ Expliquer pourquoi le ballon a éclaté.
]


#exo("Pression et plongé sous-marine")[

Un plongeur décide de descendre à 18,0 m de profondeur en apnée.

Pour cela, il inspire au maximum en surface et gonfle ses poumons avec V=6,0 L d’air sous la pression atmosphérique P#sub[atm] = 1013 hPa.

On suppose que le plongeur bloque l’air dans ses poumons lors de la descente et que la température ne varie pas.

Données: La masse volumique de l’eau de mer est ρ =1025 kg.m#super[\-3] , l’intensité de la pesanteur g = 9,81 N.kg#super[\-1] \

+ Calculer la pression qui s’exerce dans l’eau de mer à 18,0 m de profondeur.

+ Calculer le volume des poumons du plongeur à 18,0 m de profondeur.

+ La pression serait elle différente dans une eau douce ? (sans sel) 
]


#exo("Baromètre de Torricelli (1643)")[

on remplit un grand tube en verre fin avec du mercure à ras bord. Sans laisser entrer d’air, on le retourne sur un récipient plein de mercure

On observe alors que le mercure descend légèrement dans le tube pour se stabiliser à une hauteur de h=0,76 m.

Données: 
$rho_"mercure"$ =13546 kg.m#super[\-3] , g = 9,81 N.kg#super[\-1]


#image("media/image3.png")

+ Justifier que la pression en A est presque nulle.
+ Calculer la pression au point B en utilisant la loi de la statique des fluides.
+ Justifier que la pression en C est égale à la pression atmosphérique.
+ En déduire que B est aussi à la pression atmosphérique.
+ Quel sera la hauteur h de la colonne de mercure si la pression atmosphérique est de 1024 hPa~?
+ Expliquer pourquoi cet instrument est appelé une baromètre.
]
#show link: underline

* A voir:* l'expérience du crève tonneau de Pascal \ #link("https://fr.wikipedia.org/wiki/Cr%C3%A8ve-tonneau_de_Pascal")

#humour("./media/pascal.jpg",text:[À expliquer ...])

