
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[De la structure à la polarité d’une entité.],nbr:5,type:"C")

== Schéma de Lewis d’une molécule ou d’un ion.

=== Structure électronique d’un atome.

- Les électrons d’un atome occupent des niveaux d’énergies qui se décomposent en #strong[couches] (1, 2, 3 ..) et en #strong[sous couches] (s,p,d ..)

- L’ordre de remplissage est 1s 2s 2p 3s 3p 4s 3d … \
  Une couche s peut contenir au maximum 2 électrons et une couche p 6.

- Les électrons de la dernière couche sont appelés #strong[électrons de valence.]

=== Schéma de Lewis d’une molécule.

#definition("Schéma de Lewis")[Le schéma de Lewis donne une représentation de l’ensemble des électrons de valence sous forme de doublets (traits)]

- On distingue les doublets liants et non liants.

#img("./media/image1.png")

=== Méthode pour établir le schéma d’une molécule

#rect[#set enum(numbering: "1.a.")
+ On calcule la somme N#sub[v] de tous les électrons de #underline[valence] des atomes de la molécule
+ On calcule le nombre de doublets N#sub[v];/2
+ On dispose tous les doublets de sorte que~:
  + H ait 1 seul doublet
  + les autres atomes soient entourés de 4 doublets (si possible)]

#import "@preview/alchemist:0.1.6" : *
#let methan = {
  skeletize(
    config:(atom-sep:2em),
    {
    fragment("H")
    single()
    fragment("C")
    branch({
      single(angle: 2)
      fragment("H")
    })
    branch({
      single(angle: 6)
      fragment("H")
    })
    single()
    fragment("H")
  })
}
#let ammo = {
  skeletize(
  config: (atom-sep:2em),
  {
    fragment("H")
    single()
    fragment("N",lewis:(lewis-line(angle: 90deg),))
    branch({single(angle:6)
    fragment("H")})
    single()
    fragment("H")
  })
}
#let eau ={
  skeletize(
  config: (atom-sep:2em,),
  {
    fragment("H")
    single()
    fragment("O", lewis: 
    (lewis-line(angle: 90deg), lewis-line(angle: -90deg),)
    )
    single()
    fragment("H")
  })
}
#let dichlor = {
  skeletize(
    config: (atom-sep:2em,),
    {
      fragment("Cl",lewis:
      (lewis-line(angle:180deg),lewis-line(angle:90deg),lewis-line(angle:-90deg),))
      single()
      fragment("Cl",lewis:
      (lewis-line(angle:0deg),lewis-line(angle:90deg),lewis-line(angle:-90deg),))
    }
    )
}

#table(
  columns: (auto,1fr,1fr,1fr,1fr),
  align: center+horizon,
  stroke: (_,y) => (y: luma(20)),
  fill: (_,y) => if y == 0 {luma(220)},
  table.header[Molécules][$C H_4$][$N H_3$][$H_2 O$][$C l_2$],
  [Schéma\ de Lewis],[#methan],[#ammo],[#eau],[#dichlor],
  
)

=== Cas du schéma de Lewis d’un ion.

On procède comme pour une molécule, mais~:

- on calcule N#sub[v] en ajoutant (ou en enlevant) les électrons de la charge électrique

- Pour chaque atome, on compte 2 électrons par doublet non liant et 1 électrons par liaison covalente Si cette valeur n’est pas égale au nombre d’électrons de valence de l’atome, celui-ci porte une charge égale à la différence.

- on place la charge électrique sur l’atome qui la porte.

#ex Dans H#sub[3];O#super[\+] l’oxygène «~apporte~» 6 électrons mais il est entouré par 5 électrons donc il porte une charge positive.
#img("./media/image6.png",width:25%)

#strong[Remarque~:] Il arrive parfois qu’il « manque » des doublets d’électrons autour d’un atome. On place alors de petites cases vides~: ce sont des lacunes électroniques#strong[.]
#img("./media/image7.png",width:25%)


== Géométrie des molécules.

Les molécules ne sont pas plates ! Leur forme dans l’espace joue un rôle majeur pour comprendre comment elles peuvent réagir entre elles.
Pour déterminer la géométrie d'une molécule il faut d'abord connaître son schéma de Lewis.

#note(prop)[Tous les doublets d’une molécule se repoussent et se disposent dans l’espace, de façon à s’éloigner le plus possible les uns des autres.]

Lorsque 4 doublets se repoussent au maximum, la géométrie obtenue est un *tétraèdre*. Les angles entre les doublets sont de l'ordre de 109°
#align(center)[#image("./media/tetra.png")]

#ex Avec des liaisons simples

#table(
  columns:5,
  align: (x,_) => if x == 0 {right+horizon} else {center+horizon},
  fill: (x,y) => if y ==0 {luma(220)} else if y ==1 {luma(240)},
  stroke: 0.05em,
  [doublets liants],[4],[3],[2],[1],
  [doublets non-liants],[0],[1],[2],[3],
  [Géométrie],[Tétraèdre],[pyramide \ (base triangulaire)],[coudée],[linéaire],
  [Exemple],[#image("./media/image8.png")],[#image("./media/image9.png")],[#image("./media/image10.png")],[#image("./media/image11.png")],
)

#strong[Remarques~:]

- D’autres formes géométriques sont possibles dans le cas des liaisons multiples.

- Lorsqu’une molécule possède une liaison double, celle-ci se comporte comme 1 seule liaison simple.

== Polarité des molécules.

=== Électronégativité

#definition("Electronégativité")[L’électronégativité d’un atome est une mesure de sa capacité à attirer les électrons d’une liaison dans laquelle il est engagé.]

#strong[Exemples:]
#table(
    columns: 7,
    align: (auto,center,center,center,center,center,center,),
    table.header([Atome], [Na], [H], [C], [N], [O],[Cl],),
    [Électronégativité], [0,93], [2,2], [2,55], [3,04], [3,44],[3,16],
  )

#strong[Remarque~:] Globalement l’électronégativité augmente vers la droite et le haut du tableau périodique.

=== Polarisation des liaisons.

Lorsque deux atomes A et B forment une liaison covalente A – B~:

- S’ils ont la même électronégativité, les électrons de la liaison passent en moyenne la même durée à proximité des deux atomes, on dit que la liaison n’est #strong[pas] #strong[polarisée.]

- Si A est plus électronégatif que B, alors les électrons de la liaison passent plus de temps à proximité de A, celui-ci porte une #strong[charge] partielle notée δ- et B porte une charge partielle notée δ+. On dit que la liaison est polarisée.

#strong[Remarque~];: On admettra que la liaison est polarisée si la *différence* d’électronégativité est supérieure à 0,4


=== Molécule molaire ou apolaire.

#definition("Polarité dune molécule")[Une molécule est #strong[polaire] si le centre géométrique des charges partielles positives ne coïncide pas avec le centre géométrique des charges négatives]

#strong[Exemple~:] La molécule d’eau #image("./media/image12.png")


#displayProg(viewProg)[- Établir le schéma de Lewis de molécules et d’ions mono ou polyatomiques, à partir du tableau périodique
- Interpréter la géométrie d’une entité à partir de son schéma de Lewis.
- Déterminer le caractère polaire d’une liaison à partir de la donnée de l’électronégativité des atomes.
- Déterminer le caractère polaire ou apolaire d’une entité moléculaire à partir de sa géométrie et de la polarité de ses liaisons.]
