// #import "modele.typ": *
#import "@local/activite:0.1.0": *
#import "@preview/cetz:0.4.1"

#show: (doc) => config(doc,type:"P",nbr:7) //à compléter

+ Donner des exemples de grandeurs physiques algébriques.
+ La situation suivante présente les positions de 3 points. Quel est le signe de:
 #overline[AA'] ; #overline[OA] et  #overline[OA'] ?
 #cetz.canvas({
  import cetz.draw: *
  line((0,0),(8,0),fill:black, mark:(end:">"))
  content((0,0.5),"A")
  line((0,0.25),(0,-0.25))
  content((3,0.5),"0")
  line((3,0.25),(3,-0.25))
  content((5.5,0.5),"A'")
  line((5.5,0.25),(5.5,-0.25))
})
+ Un objet lumineux AB est placé à $overline(O A)$ = – 45 cm du centre O d'une lentille convergente de distance focale f’ = 30 cm. Calculer la position $overline(O A^('))$ de l'image.

+ Calculer le grandissement correspondant à la situation précédente puis interpréter le signe et la valeur. #lf

+ Quelle couleur est absorbée par un filtre magenta~? Par un filtre cyan~?

+ Que voit-on si on superpose les filtres magenta et cyan~? (justifier)

#exo("Lentille convergente n°1")[

On dispose d’une lentille convergente de distance focale f’=4,0 cm. On place un objet lumineux AB de 2,0 cm de haut perpendiculaire à l’axe optique à 8,0 cm de la lentille.

#strong[Pour cet exercice les schémas sont représentés en annexe.]

+ Construire l’image A’B’ de AB à travers la lentille (situation 1).
+ L’image est-elle réelle ou virtuelle~?
+ À l’aide de mesures sur le dessin donner les valeurs de $overline(O A quote.r.single)$ et $overline(A quote.r.single B quote.r.single)$
+ Calculer $overline(O A quote.r.single)$ à l’aide de la relation de conjugaison.
+ Calculer $overline(A quote.r.single B quote.r.single)$ à l’aide de la relation du grandissement.

 On dispose d’une lentille convergente de distance focale f’=8,0 cm. On place un objet lumineux AB de 1,0 cm de haut perpendiculaire à l’axe optique à 4,0 cm de la lentille.
+ Reprendre toutes les questions précédentes dans cette situation (2)
]

#exo("Lentille convergente n°2")[

Un objet AB de 2,0 cm de haut est placé à 15 cm d'une lentille de distance focale 5,0 cm.

+ Faire un dessin de la situation à l'échelle 1/2 (1cm sur le papier pour 2 cm en réalité) où l'on indiquera les positions de l'objet de la lentille ainsi que les foyers objet et image.
+ Construire graphiquement la position de l'image A'B'.
+ Mesurer la taille et la position de l'image.
+ Représenter le chemin complet suivi par les rayons lumineux passant par les bords de la lentille.
]

#exo("Position d’une lentille")[

Une lentille convergente donne ne image A’B’ d’un objet AB. L'image est renversée et deux fois plus grande que l’objet.

+ Quelle est la valeur du grandissement~?
+ L’objet AB est placé à 12 cm de la lentille. En déduire la position de l’image puis la distance objet-image.
+ En appliquant la formule de conjugaison, calculer la distance focale f’ de la lentille.
+ On place maintenant l’objet à 24 cm devant la lentille. En déduire la position de l’image puis la distance objet-image. Comparer à la distance précédente.
+ Calculer le nouveau grandissement.
]

#exo("Lumière et couleur")[

+ Quelle est la couleur d’un extincteur lorsqu’on l’éclaire~:
 - en lumière magenta~? (Justifier)
 -  en lumière cyan~? (Justifier)
 -  en lumière jaune~? (Justifier)
+ 3 Projecteurs de lumière Rouge, Vert et Bleu sont dirigés vers un écran. Un objet opaque se trouve sur le chemin de la lumière. Déterminer les couleurs présentes sur l’écran.
#img("media/image7.png")
]
#set page(columns: 1)

//Idem optique cor mais avec lentille à l'origine du repère 
#let optique2(debut: -10,fin:10,focale:3,posObjet:-5,tailleObjet:1.5,corrige:false) = {
  cetz.canvas({
    import cetz.draw: *
    line(( debut,0),(fin,0),stroke:(dash:"dashed",thickness: 0.25pt))
    line((0-0,2.5),(0,-2.5),mark:(end:">",start:">"),fill:black)
    content((0+.25,0.25),[O])
    line(( - focale,0.25),( - focale,-0.25))
    content(( - focale,0.5),[F])
    line(( + focale,0.25),( + focale,-0.25))
    content(( + focale,0.5),[F'])
    line((posObjet,0),(posObjet,tailleObjet),mark:(end:">"),fill:black)
    content((posObjet - 0.25,0.125),"A")
    content((posObjet - 0.25,tailleObjet - 0.25),"B")
    
    if corrige == false {return}
    //corrigé rayons
    line((posObjet,tailleObjet),(fin,tailleObjet - (fin - posObjet) * tailleObjet / ( - posObjet) ),stroke:0.5pt)
    line(name:"ligne2",(posObjet,tailleObjet),(0,tailleObjet),stroke:0.5pt)
    line((0,tailleObjet),(fin,tailleObjet - tailleObjet / focale * (fin)),stroke:0.5pt)
    line((posObjet,tailleObjet),(0,tailleObjet - tailleObjet/( - posObjet - focale) * ( - posObjet)),stroke:0.5pt)
    line((),(fin,tailleObjet - tailleObjet/( - posObjet - focale) * ( - posObjet)),stroke:0.5pt)
    //image
    // OA' = OA x f / ( OA + f)
    let posImage = posObjet * focale /(posObjet + focale)
    let tailleImage = tailleObjet * posImage / posObjet
    line((posImage,0),(posImage,tailleImage),mark:(end:">"))
    
  })
}


/*
problème avec image virtuelles
#let optiqueAlt(debut:0,fin:19,f:3,OA:-7,AB:1.5) = {
  cetz.canvas({
    import cetz.draw: *
    //image
    let OAp = (OA * f ) /( OA + f)
    let ApBp = OAp / OA * AB

    //axe
    line((OA,0),(OAp,0),stroke:(dash:"dashed",thickness:0.25pt))
    //lentille
    line((0,1.25*AB),(0,-1.25*AB),mark:(start:">",end:">"),fill:black)
    //objet
    line((OA,0),(OA,AB),mark:(end:">"),fill:black)
    //image
    line((OAp,0),(OAp,ApBp),mark:(end:">"),fill:black)
    //foyers
    line((-f,0.125),(-f,-0.125))
    line((f,0.125),(f,-0.125))

    //legende
    let pad = 0.25
    content((OA - pad,0),"A")
    content((OA - pad,AB),"B")
    content((pad,pad),"O")
    content((OAp + pad,0),"A'")
    content((OAp + pad,ApBp),"B'")
    content((-f,0.125+pad),"F")
    content((f,0.125+pad),"F'")

    //rayons
    let obj = (OA,AB)
    let img = (OAp,ApBp)
    //rayon 1
    line(obj,img) 
    //rayon2
    line(obj,(0,AB))
    line((),img)
    //rayon3
    line(obj,(0,ApBp))
    line((),img)

  })
}

//autres version plus compliqués
#let optique(debut: 1,fin:19,posLentille:10,focale:3,posObjet:2,tailleObjet:1.5) = {
  cetz.canvas({
    import cetz.draw: *
    line(( debut,0),(fin,0),stroke:(dash:"dashed",thickness: 0.25pt))
    if posLentille == none {posLentille = (fin - debut)/2}
    line((posLentille,2.5),(posLentille,-2.5),mark:(end:">",start:">"),fill:black)
    content((posLentille+.25,0.25),[O])
    line((posLentille - focale,0.25),(posLentille - focale,-0.25))
    content((posLentille - focale,0.5),[F])
    line((posLentille + focale,0.25),(posLentille + focale,-0.25))
    content((posLentille + focale,0.5),[F'])
    line((posObjet,0),(posObjet,tailleObjet),mark:(end:">"),fill:black)
    content((posObjet - 0.25,0.125),"A")
    content((posObjet - 0.25,tailleObjet - 0.25),"B")
  })
}
#let optiqueCor(debut: 0,fin:21,posLentille:10,focale:3,posObjet:2,tailleObjet:1.5) = {
  cetz.canvas({
    import cetz.draw: *
    line(( debut,0),(fin,0),stroke:(dash:"dashed",thickness: 0.25pt))
    if posLentille == none {posLentille = (fin - debut)/2}
    line((posLentille,2.5),(posLentille,-2.5),mark:(end:">",start:">"),fill:black)
    content((posLentille+.25,0.25),[O])
    line((posLentille - focale,0.25),(posLentille - focale,-0.25))
    content((posLentille - focale,0.5),[F])
    line((posLentille + focale,0.25),(posLentille + focale,-0.25))
    content((posLentille + focale,0.5),[F'])
    line((posObjet,0),(posObjet,tailleObjet),mark:(end:">"),fill:black)
    content((posObjet - 0.25,0.125),"A")
    content((posObjet - 0.25,tailleObjet - 0.25),"B")
    //corrigé rayons
    line((posObjet,tailleObjet),(fin,tailleObjet - (fin - posObjet) * tailleObjet / (posLentille - posObjet) ),stroke:0.5pt)
    line(name:"ligne2",(posObjet,tailleObjet),(posLentille,tailleObjet),stroke:0.5pt)
    line((posLentille,tailleObjet),(fin,tailleObjet - tailleObjet / focale * (fin - posLentille)),stroke:0.5pt)
    line((posObjet,tailleObjet),(posLentille,tailleObjet - tailleObjet/(posLentille - posObjet - focale) * (posLentille - posObjet)),stroke:0.5pt)
    line((),(fin,tailleObjet - tailleObjet/(posLentille - posObjet - focale) * (posLentille - posObjet)),stroke:0.5pt)
    //image
    // OA' = OA x f / ( OA + f)
  })
}


*/

*ANNEXE DES EXERCICES*

#figure(
  // placement: bottom,
  caption:"Exercice 1 (situation 1)",
  numbering: none,
  // scope: "parent",
  optique2(focale:4,posObjet: -8,tailleObjet: 2)
)

#v(2cm)

#figure(
  // placement: bottom,
  caption:"Exercice 1 (situation 2)",
  numbering: none,
  // scope: "parent",
  optique2(focale:8,posObjet: -4,tailleObjet: 1)
)
