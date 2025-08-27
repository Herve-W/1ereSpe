#import "@local/activite:0.1.0": *
// #import "modele.typ": *
#import "@preview/alchemist:0.1.6": *
#show: (doc) => config(doc,nbr:7) //à compléter

#let H3C = {
  fragment("H")
  single()
  fragment("C")
  branch({
    single(angle:2)
    fragment("H")
  })
  branch({
    single(angle:6)
    fragment("H")
  })
}
#let CH3 = {
  fragment("C")

  branch({
    single(angle:2)
    fragment("H")
  })
  branch({
    single(angle:6)
    fragment("H")
  })
  single()
  fragment("H")
}
#let CH2 = {
      fragment("C")
      branch({
        single(angle:2)
        fragment("H")
      })
      branch({
        single(angle:6)
        fragment("H")
      })
}


+ Parmi les espèces suivantes quelles sont celles qui sont organiques ?  \ #ce("MnO4^(-)") #h(0.5cm) #ce("CH4") #h(0.5cm)#ce("CuSO4") #h(0.5cm) #ce("C6H12O6") #h(0.5cm) #ce("C8H10N4O2") \ NB: Les espèces non organiques sont souvent appelées "minérales"

+ Écrire la formule brute puis la formule semi-développé de la molécule suivante:
 #align(center)[#skeletize(
    config: (atom-sep:2em,),{
      H3C
      single()
      CH2
      single()
      CH2
      single()
      CH3
      })
  ]
  Quel est le nom de cette molécule ?

+ Corriger la formule semi-développée de l'alcane suivant:
 #align(center)[#skeletize(
  config: (atom-sep:3em,angle-increment:30),{
    fragment("H_2C")
    single(angle:1)
    fragment("CH")
    single(angle:-1)
    fragment("H_2C")
    single(angle:1)
    fragment("C")
        branch({
      single(angle:3)
      fragment("CH_3")
    }
    )
    single(angle:-1)
    fragment("CH_3")
    })]

+ Justifier que le nom de la molécule précédente est "2-méthylpentane"
+ Entourer et nommer les groupes caractéristiques dans les molécules suivantes :

  #skeletize(
    config: (atom-sep:2em, angle-increment:30,),{
      fragment("H_3C")
      single()
      fragment("C")
          branch({
        single(angle:-2)
        fragment("OH")
      })
      double(angle:2)
      fragment("O")
    })
  
  #v(1em)
  
  #skeletize(
    config: (atom-sep:2em, angle-increment:30,),{
      fragment("H_3C")
      single(angle:-1)
      fragment("C")
          branch({
        single(angle:1)
        fragment("CH_3")
      })
      double(angle:-3)
      fragment("O")
  })

  #v(1em)

  #skeletize(
    config: (atom-sep:2em, angle-increment:30,),{
      fragment("H")
      single(angle:-1)
      fragment("C")
      branch({
        double(angle:-3)
        fragment("O")
      })
      single(angle:1)
      fragment("CH_2")
      single(angle:-1)
      fragment("CH_3")
  })

  #v(1em)

  #skeletize(
  config: (atom-sep:2em, angle-increment:30,),{
    fragment("HO")
    single()
    fragment("C")
    branch({
        single(angle:-3)
        fragment("CH_3")
      })
    branch({
      single(angle:3)
      fragment("CH_3")
    })
    single()
    fragment("CH_3")
  })



#exo("Fonctions et groupes caractéristiques")[

+ Donner les formules brutes des molécules suivantes.
  #{
  set align(left)
  let h=2cm
  image("./media/image1.png",height:h)
  image("./media/image2.png",height:h)
  image("./media/image3.png",height:h)
  }
+ Entourer les groupes caractéristiques de ces molécules et indiquer leurs fonctions chimiques
]

#exo("Noms et formules d’une molécule")[

Donner les noms des molécules suivantes~:
#{
set align(left)
let h=2cm
image("./media/image4.png",height:h)
image("./media/image5.png",height:h)
image("./media/image6.png",height:h)
}
]

#exo("Donner les formules des molécules:")[

+ Hexan-2-ol
+ 2-méthylpropanal
+ Acide 3-méthylbutanoïque
+ 3-méthylpentan-2-one
]

#exo("Spectre infrarouge 1")[

En utilisant le tableau de la partie 3B du cours, analyser les deux spectres infrarouges ci-dessous.

#image("./media/image7.png", )

L’un des spectres est celui de l’éthanal, l’autre celui de l’éthanol.
Attribuer à chaque espèce son spectre. (Justifier)

#image("./media/image8.png", )
]

#exo("Spectre infrarouge 2")[

Analyser le spectre suivant, et en déduire la fonction chimique de cette molécule.
#box(image("./media/image9.png", ))
]

#exo("D'après bac 2025")[

Utilisés en parfumerie, le géraniol et l’éthanoate de géranyle sont deux espèces chimiques à l’odeur florale. Si le géraniol peut être extrait en grande quantité dans la nature, cela n’est pas le cas de l’éthanoate de géranyle qui doit être synthétisé en laboratoire.

 #scale(75%)[
    #figure(
      caption: "géraniol",
      numbering:none,
    skeletize(
    config: (angle-increment: 30deg),
    {
    fragment("H_3C")
    single(angle:1)
    fragment("C")
    branch({
      single(angle:3)
      fragment("CH_3")
    })
    double(angle:-1)
    fragment("CH")
    single(angle:1)
    fragment("CH_2")
    single(angle:-1)
    fragment("CH_2")
    single(angle:1)
    fragment("C")
    branch({
      single(angle:3)
      fragment("CH_3")
    })
    double(angle:-1)
    fragment("CH")
    single(angle:1)
    fragment("CH_2")
    single(angle:-1)
    fragment("OH")
    })
    )
 ]

  #scale(75%)[
    #figure(
      caption: "éthanoate de géranyle",
      numbering:none,
    skeletize(
    config: (angle-increment: 30deg),
    {
    fragment("H_3C")
    single(angle:1)
    fragment("C")
    branch({
      single(angle:3)
      fragment("CH_3")
    })
    double(angle:-1)
    fragment("CH")
    single(angle:1)
    fragment("CH_2")
    single(angle:-1)
    fragment("CH_2")
    single(angle:1)
    fragment("C")
    branch({
      single(angle:3)
      fragment("CH_3")
    })
    double(angle:-1)
    fragment("CH")
    single(angle:1)
    fragment("CH_2")
    single(angle:-1)
    fragment("O")
    single(angle:1)
    fragment("C")
    branch({
      double(angle:3)
      fragment("O")
    })
    single(angle:-1)
    fragment("CH_3")
    })
    )
 ]
Données:
#table(
  columns: (auto,1fr,1fr),
  align: center,
  table.header[*Liaisons*][*Nombre d'onde*][*Intensité*],
  [O-H Alcool],[3200-3700],[Forte],
  [O-H acide],[2500-3200],[Forte et large],
  [C-H],[2800-3300],[Moyenne fine],
  [C=0],[1700-1800],[Forte et fine]

)
 + Entourer et nommer le groupe caractéristique du géraniol puis indiquer la famille chimique à laquelle il appartient.
 + Attribuer, en justifiant, le spectre infrarouge représenté sur la figure ci-après à la bonne espèce chimique parmi le géraniol et l’éthanoate de géranyle. 

  #image("./media/spectre.png")


]