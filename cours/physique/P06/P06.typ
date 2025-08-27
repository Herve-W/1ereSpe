#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,type:"P",chap:[Ondes mécaniques],nbr:6)

== Ondes mécaniques progressives.

#ex Propagation d’une onde sur une corde.
#img("./media/image1.png")
- Une perturbation est créée à l’extrémité d’une corde, puis se propage. \

- Le point touché par l’onde commence par monter, puis il redescend et retrouve sa position initiale.

#note(none)[Ce type d’onde est appelée *transversale* car la direction de propagation est perpendiculaire à celle de déplacement d'un point du milieu]

#ex Propagation d’une onde le long d’un ressort
#img("./media/image2.png")

Le point touché par l’onde avance puis il recule pour retrouver sa position de départ.

#note(none)[Ce type d’onde est appelée *longitudinale* car la direction de propagation est perpendiculaire la même que celle de déplacement d'un point du milieu]

#definition("Onde mécanique")[Une onde mécanique progressive est un phénomène de propagation d’une déformation dans un milieu matériel sans transport global de matière.
]
Exemples d'ondes 
- *mécaniques*: Ondes sonores – ultrasons – ondes sismiques – houle en mer 
- *non mécaniques*: ondes électromagnétiques ( radio / X / lumière / WiFi )

#strong[Remarque~:] Une onde transporte de l’énergie. Par exemple une onde sonore peut faire vibrer le tympan dans l’oreille, une onde sismique provoquer des destructions.

== Célérité et temps de retard.

#definition("Célérité")[La #strong[célérité] v d’une onde est la vitesse de déplacement de la #underline[perturbation];.

#eq[$ v = frac(d, Delta t) $ ]
où d est la distance parcourue par la #strong[perturbation] et Δt la durée correspondante.
#img("./media/image3.png")]

On peut dire que la perturbation qui existe en B à l’instant t est la même que celle qui existait en A à l’instant t’. On dit que $tau = t - t quote.r.single = d / v$ est le temps de retard de B par rapport à A.

== Ondes progressives périodiques.

#strong[Rappels~]:

- Un phénomène est périodique lorsqu’il se répète à intervalle régulier au cours du temps.
- Celui – ci est caractérisé par sa période T qui la plus petite durée au bout de laquelle il se répète.
- La fréquence f est le nombre de répétitions du phénomène, généralement en une seconde, elle s’exprime alors en hertz (Hz) $ f = 1 / T $

=== Périodicité temporelle.

Une onde mécanique est #strong[périodique] lorsque la source de l’onde est animée d’un mouvement périodique

#ex L’onde #strong[sinusoïdale];.
#img("./media/image4.png")
Elle est caractérisée par~:

- sa période #strong[temporelle] T
- son amplitude A
- sa #strong[phase] φ (nulle ici)

Mathématiquement en un point donné à un instant t l'onde est modélisé par une fonction de type $y=A.sin((2 pi)/T t + phi)$

=== La périodicité spatiale.

- Une onde sinusoïdale se propage sur une corde.

#img("./media/image5.png")

- Au bout d’une période pour la source de l’onde, on voit apparaître un motif se dessiner sur la corde.
- La longueur de ce motif est appelée la longueur d’onde et notée λ

#definition("Longueur d'onde")[La distance parcourue par une onde pendant une #strong[période] T est appelée longueur d’onde donc~:#eq[$ lambda = v times T $]
où $lambda$ est la longueur d'onde \ $v$ est la célérité \ $T$ est la période
]
#note(none)[*Interprétation :* La longueur d’onde est une mesure de la périodicité de l’onde dans l’espace.]

#displayProg(viewProg)[
- Décrire, dans le cas d’une onde mécanique progressive, la propagation d'une perturbation mécanique d'un milieu dans l'espace et au cours du temps : houle, ondes sismiques, ondes sonores, etc.
- Expliquer, à l’aide d’un modèle qualitatif, la propagation d'une perturbation mécanique dans un milieu matériel. 
- Exploiter la relation entre la durée de propagation, la distance parcourue par une perturbation et la célérité, notamment pour localiser une source d’onde.
- Distinguer périodicité spatiale et périodicité temporelle. Justifier et exploiter la relation entre période, longueur d'onde et célérité.
- Déterminer les caractéristiques d'une onde mécanique périodique à partir de représentations spatiales ou temporelles.
]