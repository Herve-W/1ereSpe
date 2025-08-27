
// #import "modele.typ": *
#import "@local/activite:0.1.0": *
#show: (doc) => config(doc,type:"P",nbr:4) //à compléter

Rappeler les lois de l'électricité vues en 2#super[2de]:
+ Loi des nœuds
+ Loi des mailles 
+ Loi d’Ohm #lf
+ Quelle est la charge électrique qui traverse une ampoule pendant une minute lorsque le courant a une intensité de 30 mA.
+ la valeur de l’énergie électrique reçue par une console de jeu pendant une heure d’utilisation. #lf
+ Une pile de force électromotrice E = 4,5 V délivre une tension $U_("PN")$= 4,0 V pour une intensité I = 0,5 A. Calculer la valeur de la résistance interne.

+ On appelle intensité de court-circuit l'intensité pour laquelle $U_"PN"$=0 V elle est obtenue en reliant directement le plus et le moins de la pile. Calculer sa valeur.#lf

+ Pour les systèmes suivants, quelle forme d'énergie est convertie (c'est à dire reçue)et quelle forme d'énergie est "utile"
 - une cellule photovoltaïque
 - une pile
 - une ampoule

+ Le rendement d’une ampoule à incandescence est de 10% environ. Calculer la valeur de la puissance thermique produite par une ampoule de 50 W

#exo("Batterie externe.")[

Une batterie externe est modélisée par une source réelle de tension. On l’on utilise pour recharger un téléphone portable. \ Sur la batterie il est écrit capacité~: 27000 mA.h. E=5,0 V et I = 2,1 A

+ Donner l’expression de la charge Q en fonction de l’intensité I du courant et de la durée Δt en rappelant les unités.

+ La capacité de la batterie correspond à la charge maximale qu’elle peut libérer. Calculer cette charge en coulomb.

On recharge un téléphone portable avec la batterie externe.

3. Calculer le temps de charge du téléphone jusqu’à ce que la batterie externe soit vide.

+ Lors de la charge on mesure une tension aux bornes de la batterie externe de 4,7 V. En déduire la valeur de la résistance interne.
]

#exo("Puissance dans un circuit")[

On dispose d’une pile alcaline dont la caractéristique courant tension est donnée ci-dessous.#img("media/image1.png")

+ Quelle est la force électromotrice de cette pile~?

+ Quelle est l’intensité du courant de court-circuit~?

+ Montrer que la valeur de la résistance interne de cette pile et de 0,75 Ω (Expliquer)

On branche cette pile aux bornes d’un conducteur ohmique de résistance R = 10 Ω comme sur le schéma suivant.#img("media/image2.png")

4. Refaire le schéma du circuit en remplaçant la pile par son modèle équivalent.

+ En appliquant la loi des mailles, calculer l’intensité du courant.

+ En déduire la puissance reçue par le conducteur ohmique R.

+ La puissance électrique délivrée par la pile est $P_"élec" = E times I$.
Calculer le rendement du transfert d’énergie de pile vers le conducteur ohmique. 
]

#exo("Bouilloire électrique")[

Une bouilloire électrique, de puissance électrique 1500 W, porte 0,40 kg d’eau initialement à la température de 18°C à 85°C en 90 s.

+ Calculer la valeur Q (kJ) du transfert thermique (chaleur) reçu par l’eau à l’aide de l’expression~: $Q = m times c_(e a u) times (T_(f i n a l e) - T_(i n i t i a l e))$ \
  avec C#sub[eau] = 4,2 kJ.kg#super[\-1];.°C#super[\-1]

+ En déduire la valeur de la puissance thermique reçue par l’eau.

+ Établir un bilan énergétique, sous forme de schéma, pour la bouilloire

+ Calculer le rendement énergétique de cette bouilloire.
]


#exo("Cellule photovoltaïque")[


Un panneau solaire est constitué de cellules photovoltaïques qui permettent de réaliser une conversion d’énergie lumineuse en énergie électrique.

Pour une puissance lumineuse reçue de 1000 W.m#super[\-2] le module photovoltaïque se comporte comme une source réelle tant que I \< 1,2 A avec E=22,0 V et r=1,78 Ω.

+ Établir un bilan de puissance, sous forme de schéma pour le module photovoltaïque.

+ Calculer la puissance reçue par un module photovoltaïque de surface S=0,10 m²~?

+ Calculer la puissance dissipée par effet Joule lorsque I=1,0 A.

+ Calculer la puissance électrique délivrée par le module photovoltaïque lorsque l’intensité du courant est I=1,0 A.

+ En déduire la valeur du rendement du module photovoltaïque.
]
#exo("Pertes en ligne")[

La résistance d’un câble de longueur L (m) et de section S (m²) est donné par expression $R = rho times L / S$ où $rho$ est la résistivité.

+ En quelle unité s’exprime la résistivité~?

+ Calculer la résistance d’un câble de 1,0 km de section 16 mm² et de résistivité 1,7×10#super[\-8] (unités de la question précédente)

+ Un appareil qui absorbe une puissance de 4,0 kW est alimenté par une tension de 230 V (considérée comme continue). Calculer l’intensité du courant qui le traverse.

+ Calculer la puissance dissipée par effet joule dans le câble précédent qui alimente l’appareil électrique étudié.

+ Le courant électrique circule dans des lignes à haute tension de l’ordre de 70 kV sur des courtes distances et de l’ordre de 400 kV pour de longues distances. Justifier ce choix en illustrant votre réponse par un calcul.
]