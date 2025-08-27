// #import "modele.typ" : *
#import "@local/activite:0.1.0": *
#show: (doc) => config(doc,nbr:5)

#figure(
  caption: text(size:0.75em)[Numéros atomiques],
  numbering: none,
  table(
    columns: 8, //(1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,),
    align: center+horizon,
    rows:2em,
    stroke: (x,y) => if y==0 and (x < 7 and x > 0) {(top:{0pt})} else {(paint:black,thickness:0.5pt)},
    [$\ _1H$],table.cell(colspan: 6)[],[$\ _2H e$],
    [$\ _3L i$],[$\ _4B e$],[$\ _5B$],[$\ _6C$],[$\ _7N$],[$\ _8O$],[$\ _9F$],[$\ _10N e$],
    [$\ _11N a$],[$\ _12M g$],[$\ _13A l$],[$\ _14S i$],[$\ _15P$],[$\ _16S$],[$\ _17C l$],[$\ _18A r$],
  )
)
+ L'hélium, le néon et l'argon sont des gaz présents dans l'air en très petite quantité: on les appelle des *gaz rares* (ou nobles). Établir la structure électronique de ces gaze et indiquer leurs nombre d'électrons de valence.

#lf
2. Qu'est ce que le schéma de Lewis d'une espèce chimique ? Répondre en utilisant les mots « électrons de valence » « doublet non-liant » et « liaison covalente »

#import "@preview/alchemist:0.1.6" : *
#let ammo = {
  skeletize(
  config: (atom-sep:2em),
  {
    fragment("H")
    single()
    fragment($N$,lewis:(lewis-line(angle: 90deg),))
    branch({single(angle:6)
    fragment("H")})
    single()
    fragment("H")
  })}

+ Sur le shéma de Lewis de l'ammoniaque #align(center)[#ammo] combien y a-t-il d'électrons de valence ? combien de doublet non liant ? de doublets liants ?

+ Établir le schéma de Lewis du dichlore $C l_2$ en utilisant la méthode de cours en 3 étapes.

+ Établir la structure de Lewis du dioxygène $O_2$ \ *indice:* Il existe des liaisons double qui sont plus "fortes" que les liaisons simples et sont représentées par un signe =.

+ Compléter le schéma de Lewis ci-dessous du dioxyde de carbone $C O_2$ #align(center)[#skeletize({
  fragment("O")
  double()
  fragment("C")
  single()
  fragment("O",lewis:(
    lewis-line(angle:45deg),
  ))
})
]

#lf
7. Établir le schéma de Lewis de l'ion $H O^-$. Expliquer lequel des 2 atomes porte la charge puis la représenter sur le schéma.
#lf

8. Imaginez un poteau central auquel vous attachez des chiens en laisse. Chaque animal a son propre espace vital et ne veut pas que les autres s'approchent trop de lui. La longueur de la laisse est la même pour tous. Comment vont se placer les chiens s'ils sont 2,3 ou 4 ? \ La réponse serait elle différente si le problème était à 3 dimensions ?


+ Donner le nom de la géométrie de des molécules autour de l'atome central dans les cas suivants:
#let m1 = {
  skeletize({
    fragment("H")
    single(angle:1)
    fragment("S",colors:red, lewis:
    (lewis-line(angle:45deg),lewis-line(angle:-45deg),))
    single(angle:3)
    fragment("H")
  })
}
#let m2 = {
  skeletize({
    fragment("H")
    single(angle:1)
    fragment("P",colors:red, lewis:
    (lewis-line(angle:-75deg),))
    branch({
    single(angle:3)
    fragment("H")
    })
    single()
    fragment("H")
  })
}
#let m3 = {
  skeletize({
    fragment("H")
    single(angle:1)
    fragment("Si",colors:red, )
    branch({
    single(angle:3)
    fragment("H")
    })
    branch({
    single(angle:-1)
    fragment("H")
    })
    single(angle:1)
    fragment("H")
  })
}
#grid(
  columns:(1fr,1fr,1fr),
  [#m1],[#m2],[#m3]
)

9. Déterminer la structure de Lewis molécule $H_2 C O$ puis sa géométrie autour de l'atome C.

+ Parmi les 3 propositions suivantes quelle représentation est la plus correcte pour la géométrie ?

#grid(
  columns: (1fr,1fr,1fr),
  align: center,
  [
    #skeletize({
      fragment("H")
      single()
      fragment("O",lewis:
      (lewis-line(angle:90deg),lewis-line(angle:-90deg)))
      single()
      fragment("H")
    })
  ],
  [
    #skeletize({
    fragment("H")
    single(absolute:35deg)
    fragment("O",lewis:
    (lewis-line(angle:45deg),lewis-line(angle:130deg)))
    single(absolute:-35deg)
    fragment("H")
  })
  ],[
    #skeletize({
    fragment("H")
    single()
    fragment("O",lewis:
    (lewis-line(angle:90deg),lewis-line(angle:-90deg)))
    single(absolute:-35deg)
    fragment("H")
  })
  ]
)
#lf

11. Justifier que la liaison #box(skeletize({fragment("H") 
single()
fragment("H")})) n'est pas polarisée alors que #box(skeletize({fragment("H") 
single()
fragment("Cl")})) est fortement polarisée.

#exo("Schémas de Lewis de molécules")[

Établir les schémas de Lewis des #strong[molécules] suivantes~: \

#table(
  columns: 6*(1fr,),
  align: center+horizon,
  [$H_2$],[$C C l_4$],[$C O_2$],[$H C l$],[$S O_2$ \ #text(size:0.5em)[Difficile]],[$P C l_3$]
)
]

#exo("Schémas de Lewis d'ions")[

Établir les schémas de Lewis des #strong[ions] suivants~: \

#table(
  columns:4*(1fr,),
  align: center+horizon,
  [$F^-$],[$N H_4^+$],[$N a^+$],[$C O_3^(2-) #text(size:0.5em)[Difficile]$]
)
]


#exo("Géométrie d’une molécule ou d’un ion")[

Déterminer la géométrie des espèces suivantes~:
#table(
  columns:5*(1fr,),
  align: center+horizon,
  [$C O_2$],[$O_2$],[$H C N$],[$N H_4^+$],[$H O^-$]
)]

#exo("Molécules polaires ou apolaires")[

On considère qu’une liaison est polarisée si la #strong[différence d’électronégativités] entre les atomes est plus grande que 0,4.

Déterminer si les molécules suivantes sont polaires ou non~:
+ NH#sub[3]
+ CO#sub[2]
+ CCl#sub[4]
+ H#sub[2];CO
]