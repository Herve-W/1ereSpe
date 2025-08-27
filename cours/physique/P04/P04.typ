
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,type:"P",chap:[Aspects énergétiques des phénomènes électriques],nbr:4)

== Intensité du courant électrique.
Les #emph[porteurs de charges] capables de se déplacer sont~:
- les #strong[électrons libres] dans les métaux
- les #strong[ions] dans les solutions

#wrap-content(
  align: bottom,
image("./media/image2.png"),
[Sous l’effet d’une tension électrique, les porteurs de charges sont mis collectivement en mouvement et forment un courant électrique])


#definition("Intensité du courant électrique")[L’intensité du courant, est un #strong[débit] de charges électriques.

On note Q la charge électrique totale qui traverse une section d’un fil pendant la durée Δt

#eq[$ I = Q / (Delta t) $]

avec Q en C (coulomb) , Δt en (s) et I en (A)]

== Sources de tension. 

Une source de tension est un dispositif qui délivre une tension électrique entre ses bornes que l\'on note P (positive) et N (négative). Celle peut être une pile ou une batterie par exemple.

=== Source idéale.

Une source idéale de tension est un générateur qui maintient une tension constante quelle que soit l’intensité du courant. 
#eq[$ U_(P N)=E $]

#img("./media/image3.png")

=== Source réelle.

Une source réelle a une tension qui diminue lorsque l’intensité du courant augmente.

#eq[$ U_(P N) = E dash.en r.I $]
#img("./media/image4.png")
La caractéristique tension-courant est une fonction affine

#note(none)[On #strong[modélise] une source réelle comme l’association d’un générateur idéal de tension E (appelé force électromotrice f.é.m) en série avec une résistance r (appelée résistance interne)]
#image("./media/image1.png")
== Puissance et énergie.

=== Définitions

#definition("Puissance")[La puissance électrique est une mesure de la «~vitesse~» de transformation de l’énergie

#eq[$ P = E / upright("Δt")  $]

où P est la puissance en watt , E l’énergie en joule et Δt la durée en seconde]

#exs lampe 50 W~; console de jeux 250 W~; chauffage électrique 5000 W

#definition("Puissance électrique")[La puissance électrique fournie ou reçue par un dipôle est~: 
#eq()[$ P=U×I $]]

=== Effet joule.

#definition("Effet Joule")[L’effet joule est la conversion totale d’énergie électrique en transfert thermique (chaleur) dans un conducteur ohmique.]

Pour un conducteur ohmique de résistance R la puissance transformée est~: $ P_J=R×I^2 $

=== Bilan de puissance et rendement d’un convertisseur

Sur un bilan énergétique pour un convertisseur, on fait apparaître sous forme de diagramme:
  - les énergies reçues 
  - les énergies transformées.

#img("./media/image5.png",width:75%)
#ex #strong[ampoule] reçoit de l’énergie électrique et fournit de l’énergie lumineuse un transfert thermique (chaleur) au milieu extérieur.

Une partie de l’énergie fournie par le convertisseur est l’énergie «utile», l’autre partie sera considérée comme une perte.

#definition("Rendement d'un convertisseur")[Par définition le #strong[rendement] d’un convertisseur est

#eq[$ eta = P_(u t i l e) / P_(r e ç u e) $]

Le rendement est compris entre 0 et 1 et s’exprime souvent en~%]

#strong[Exemples] de rendement : panneau solaire 22% batterie 96% moteur électrique 80% moteur thermique 30%

#displayProg(viewProg)[
- Relier intensité d’un courant continu et débit de charges.
- Expliquer quelques conséquences pratiques de la présence d’une résistance dans le modèle d’une source réelle de tension continue.
- Déterminer la caractéristique d’une source réelle de tension et l'utiliser pour proposer une modélisation par une source idéale associée à une résistance.
- Citer quelques ordres de grandeur de puissances fournies ou consommées par des dispositifs courants.
- Définir le rendement d’un convertisseur.
- Évaluer le rendement d’un dispositif.
]