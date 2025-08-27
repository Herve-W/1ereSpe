
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[Détermination d’une quantité de matière par titrage],nbr:4,type:"C")

#h(2em) Nous savons qu'il est possible de doser une espèce colorée par étalonnage. Le tirage est une autre méthode de dosage très utilisée qui s'appuie sur une transformation chimique entre l'espèce dont on cherche la concentration et une autre.

== Le principe de la méthode du titrage.

Pour un titrage on dispose~:

a) d’une solution «~inconnue~» dont on veut déterminer la concentration d’une espèce qu’elle contient, c’est la solution #strong[titrée]

b) d’une solution de concentration «~connue~» contenant une espèce capable de réagir avec la solution précédente, c’est la solution #strong[titrante];.

#strong[Hypothèses~:] On supposera cette année que l’une des solutions est #strong[colorée] et que la transformation est #strong[totale]


#block(fill:luma(200),inset: 5pt)[On verse la solution titrante dans la solution titrée par petits ajouts successifs jusqu’à ce que la couleur du mélange change.]

#grid(columns: (2fr,1fr), align: horizon,
[
== Le montage expérimental.

La solution titrante est placée dans une burette (1)

- La solution titrée (ou un prélèvement de celle-ci) est placée dans un #strong[erlenmeyer] (2)

- Un barreau aimanté permet d’homogénéiser la solution (3) de façon à mieux repérer le changement de #strong[couleur];.

- Au moment où la couleur change, on note le volume versé, lu sur la burette, c’est le volume versé à l’équivalence V#sub[éq]
],

[#img("./media/image1.png",width:75%)]
)



== L’équivalence du titrage.

=== Aspect qualitatif.

Le système chimique étudié est celui présent dans l’erlenmeyer~:

- Au #strong[début] du titrage, le réactif limitant est le réactif titrant puisque la couleur présente dans l’erlenmeyer n’a pas encore changée.
- À la #strong[fin] du titrage, le réactif limitant est le réactif titré puisque qu’il y a eu un changement de couleur.
- #strong[L\'équivalence] correspond au moment où se produit le changement de couleur.

=== Aspect quantitatif.

#definition("Equivalence d'un titrage")[À l’équivalence, les réactifs ont été mis en présence dans les proportions stœchiométriques.

Pour une réaction de titrage, d’équation $ a A + b B arrow.r c C + d D $ 
où a,b,c,d sont les coefficients et A et B les réactifs

Si les quantités de matière mises en présence #underline[à l’équivalence] sont n(A) et n(B), on peut écrire~:

#eq[$ frac(n (A), a) = frac(n (B), b) $]]

#strong[NB~:] Cette relation peut être obtenue avec un tableau d’avancement

#displayProg(viewProg)[
- Relier qualitativement l’évolution des quantités de matière de réactifs et de produits à l’état final au volume de solution titrante ajoutée.
- Relier l’équivalence au changement de réactif limitant et à l’introduction des réactifs en proportions stœchiométriques.
- Établir la relation entre les quantités de matière de réactifs introduites pour atteindre l’équivalence.
- Expliquer ou prévoir le changement de couleur observé à l’équivalence d’un titrage mettant en jeu une espèce colorée.]
