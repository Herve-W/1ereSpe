#import "@local/activite:0.1.0" : *
#show: (doc) => config(doc,chap:[Activité et exercices],nbr:3) //à compléter
#let r = ((name:$C H_4+$,coef:1,n:10),(name:$O_2 ->$,coef:2,n:5))
#let p = ((name:$C O_2+$,coef:1,n:0),(name:$H_2O$,coef:2,n:0))


#let tabeauComplet =(reactifs:r,produits:p)=>{
    let myStroke(col) = (x,y) => (
    y: if y > 0 {col},
    right: if x > 0 and x < 5 {col},
    left: if x == 2 {col} else {0pt}
  )
  let myfill(col) = (x,y) => {
    if y == 0 and x >1 {col}
  }
  set table(stroke: myStroke(luma(20)),fill: myfill(luma(220)))
  let especes = reactifs.len()+produits.len()
  table(
    columns: (auto,auto,(1fr,)*especes).flatten(),
    align: center,
    [],[],..(for r in reactifs {(if r.coef !=1 {str(r.coef)}+r.name,)}).map(i => ([#i])),
    ..(for p in produits {(if p.coef !=1 {str(p.coef)}+p.name,)}).map(i => ([#i])),
    [Etat initial],[x=0],..(for r in reactifs {(r.n,)}).map(i => ([#i])),
    ..(for r in produits {(r.n,)}).map(i => ([#i])),
    [en cours],[x > 0],..(for r in reactifs {([#str(r.n) - #if r.coef !=1 {str(r.coef)} x],)}).map(i => ([#i])),
    ..(for p in produits {([#if p.n != 0 {str(p.n)+"+" } #if p.coef != 1 {str(p.coef)} x],)}).map(i => ([#i])),
    [Etat final],[$x_"max"$],..(for r in reactifs {([#str(r.n)-#if r.coef !=1 {str(r.coef)}$x_"max"$],)}).map(i => ([#i])),
    ..(for p in produits {([#if p.n != 0 {str(p.n)+"+"}#if p.coef != 1 {str(p.coef)}$x_"max"$],)}).map(i => ([#i])),
  )

}

#let tabeauACompleter =(reactifs:r,produits:p)=>{
    let myStroke(col) = (x,y) => (
    y: if y > 0 {col},
    right: if x > 0 and x < 5 {col},
    left: if x == 2 {col} else {0pt}
  )
  let myfill(col) = (x,y) => {
    if y == 0 and x >1 {col}
  }
    set table(stroke: myStroke(luma(20)),fill: myfill(luma(220)))
    let especes = reactifs.len()+produits.len()
    table(
      columns: (auto,auto,(1fr,)*especes).flatten(),
      align: center,
      [],[],..(for r in reactifs {(if r.coef !=1 {str(r.coef)}+r.name,)}).map(i => ([#i])),
      ..(for p in produits {(if p.coef !=1 {str(p.coef)}+p.name,)}).map(i => ([#i])),
      [Etat initial],[$x = 0$],..(for r in reactifs {(r.n,)}).map(i => ([#i])),
      ..(for r in produits {(r.n,)}).map(i => ([#i])),
      [en cours],[$x > 0$],..(for r in reactifs {([],)}),..(for p in produits {([],)}),
      [Etat final],[$x_"max"$],..(for r in reactifs {([],)}),..(for p in produits {([],)}),
    )
}

#let tableauSimple(esp,react,val) = {

  //style
  let myStroke(col) = (x,y) => (
  y: if y > 0 {col},
  right: if x > 0 and x < esp {col},
  left: if x == 2 {col} else {0pt}
  )
  let myfill(col) = (x,y) => {
    if y == 0 and x >1 {col}
  }

  set table(stroke: myStroke(luma(20)),fill: myfill(luma(220)))

  //--------calculs---------------
  let espTxt = val.slice(0,esp) //noms des espèves
  let coef = val.slice(esp,count:esp).map( i => if i != 1 [$#i$])// coefficients
  let eq=() //equation de réaction
  for i in range(esp){
    eq.push(
      [$#coef.at(i) #espTxt.at(i) #if i == react -1 {$ -> $} else if i < esp -1 {$+$} $
    ])} //équation
  let ni = val.slice(2*esp,count:esp).map( i => [$ #i $]) //quantité de matière init
  block(breakable: false,
    table(
    columns: (auto,auto,(1fr,)*esp).flatten(),
    align: center,
    [],[],..eq,
    [Etat initial],[$x=0$],..ni,
    [En cours],[$x > 0$],..(for i in range(esp) {([],)}),
    [Etat final],[$x = x_max$],..(for i in range(esp) {([],)}),
))}

//---------------------------------------------------------------
+ Quelle notation utilise-t-on pour l'avancement ? Quelle est son unité ?

+ Lors d'une transformation chimique, qu'est-ce qu'un réactif limitant ?

+ Après avoir lu la méthode de construction des tableaux d'avancement compléter
 le tableau suivant. 
#tabeauACompleter(reactifs:r,produits:p) //bof

4. Montrer que, comme la quantité de matière de $C H_4$ est forcément positive (ou nulle) on a
 x < 10 mol
+ De la même façon montrer que x < 2,5 mol

+ Déduire des deux réponses précédentes la plus grande valeur possible de l'avancement noté $x_"max"$
+  Un enfant prépare de petits sachets de cadeaux pour remercier ses amis d’être venu à son anniversaire. Dans chaque sachet il y a : 
  - 2 autocollants, 
  - 5 bonbons, 
  - 1 petit jouet 
  - 3 chewing-gums.
  L’enfant a 22 autocollants, 40 bonbons, 10 jouets et 27 chewing-gums. Combien d’amis peut-il inviter ? Rédiger la réponse.
+ En s'inspirant de l'exemple précédent retrouver la valeur de l'avancement maximum de la question Q6.
+ Donner un exemple de mélange stœchiométrique de votre choix pour la transformation $ C H_4 + 2O_2 -> C O_2 +2 H_2 O $
+ Compléter les tableaux suivants et donner la valeur de l'avancement final et la composition finale du mélange:


#exo("Compléter un tableau d’avancement")[

On étudie la réaction d’oxydation du fer par l’acide chlorhydrique dont l’équation de réaction est notée dans le tableau d’avancement.

+ Compléter le tableau d'avancement
#tabeauACompleter(reactifs:((name:$F e+$,coef:1,n:7.4),(name:$H^(+) ->$,coef:2,n:16.8))
,produits:((name:$F e^(2+)+$,coef:1,n:0),(name:$H_2$,coef:1,n:0)))
2. Déterminer l’avancement maximal en expliquant la méthode utilisée.
+ Donner la composition complète du mélange à l'état final.

Faire de même pour les tableaux suivants:
#tableauSimple(3,1,($"KClO"_3$,$"KCl"$,$O_2$,2,2,3,5,3,0))
#tableauSimple(3,2,($"Mg"$,$"O"_2$,$"MgO"$,2,1,2,0.5,0.25,0.5))


]


#exo("Évolution d’une transformation.")[

On réalise un mélange de 3,2 g de poudre de soufre $S(s)$ et 4,0 g de poudre l’aluminium $A l(s)$
, on déclenche la transformation en chauffant avec un bec à gaz. Il se forme alors 
du sulfure d’aluminium $A l#sub[2];S#sub[3];(s)$ après refroidissement.
L’équation de la transformation est~:

$ 2 A l (s) + 3 S (s) arrow.r A l_2 S_3 (s) $

#strong[Données~];: M(Al) = 27,0 g.mol#super[\-1~];; M(S) = 32,0 g.mol#super[\-1]

+ Calculer les quantités de matière des deux réactifs à l’état initial.

+ Établir le tableau d’avancement de la transformation et calculer l’avancement maximum.

+ Donner la composition du système à l’état final pour une réaction totale.

+ En déduire la masse de sulfure d’aluminium formée.
]


#exo("Précipitation de l’hydroxyde de cuivre.")[

On dispose de V#sub[1];=100 mL de solution de sulfate de cuivre 
$C u#super[2+];(a q)+S O#sub[4];#super[2–];(a q)$ de concentration c#sub[1] = 2,5.10#super[\-2]
 mol.L#super[\-1] dans laquelle on verse V#sub[2];=50 mL de la soude
 $N a#super[\+];(a q)+H O#super[–];(a q)$ de concentration
c#sub[2] = 5,0.10#super[\-2] mol.L#super[\-1];. Il se forme un précipité
 d’hydroxyde de cuivre $C u(O H)#sub[2];(s)$.

#strong[Données~:] L’équation de la transformation est~:

$C u^(2 upright("+")) (a q) + 2 H O^(upright("-")) (a q) arrow.r C u (O H)_2 (s)$ \
Les ions $C u#super[2+];(a q)$ sont de couleur bleue.

+ Calculer les quantités de matière des réactifs à l’état initial.

+ Établir le tableau d’avancement de la transformation et calculer l’avancement maximum.

+ Donner la composition du système à l’état final pour une réaction totale.

+ La solution est-elle colorée en fin de réaction~?

+ Quel volume de soude faudrait-il verser pour que le mélange initial soit stœchiométrique~?
]


#exo("Courbe d’évolution.")[

On fait réagir du carbonate de calcium CaCO#sub[3] (calcaire) avec de l’acide chlorhydrique H#sub[3];O#super[\+] + Cl #super[–] il se forme du dioxyde de carbone CO#sub[2] et de l’eau H#sub[2];O. L’équation de réaction est~:
$ C a C O_3 + 2 H_3 O^(upright("+")) arrow.r C a^(2 upright("+")) + 3 H_2 O + C O_2 $ On a tracé les courbes d’évolution de la transformation.


#box(image("./media/image1.png"))
+ Identifier chaque espèce sur le graphique en expliquant la méthode utilisée.

+ Indiquer qui est le réactif limitant.

+ Donner la valeur de l’avancement maximal.

]

#exo("Combustion du propane.")[

On met en présence 7,5 L de butane C#sub[3];H#sub[8];(g) avec 28 L de dioxygène O#sub[2];(g). Le mélange se transforme selon la réaction~: 
$ C_3 H_8 (g) + 5 O_2 (g) arrow.r 3 C O_2 (g) + 4 H_2 O (g) $
Données: Dans les conditions de l’expérience, le volume molaire est de 24 L.mol#super[\-1]



+ Calculer les quantités de matière des deux réactifs à l’état initial.

+ Établir le tableau d’avancement de la transformation et calculer l’avancement maximum.

+ Donner la composition du système à l’état final pour une réaction totale.

+ En déduire le volume de dioxyde de carbone formé.
]



#exo("Réaction entre l’acide éthanoïque et l’eau")[

On verse 1,0×10#super[\-5] mol d’acide éthanoïque $C H#sub[3];C O O H(a q)$ dans 1,0 L d’eau, il se forme alors des ions éthanoate CH#sub[3];COO #super[–] (aq) et des ions oxonium H#sub[3];O#super[\+];(aq).

#strong[Données~:] L’équation de la transformation est~:$C H_3 C O O H (a q) + H_2 O (l) arrow.r C H_3 C O O^(upright("-")) (a q) + H_3 O^(upright("+")) (a q)$

L’eau est en excès.

+ Sans faire de calcul, mais en justifiant, dire quel est le réactif limitant.

+ Calculer la valeur de l’avancement maximal.

+ On mesure que la quantité de matière des ions oxonium à l’état final est de 7,0×10#super[\-6] mol. \
  La réaction est-elle totale ou limitée~? (Justifier)
]

#exo("Tableau inversé")[

  Compléter les cases manquantes:
    //style
  #let myStroke(col) = (x,y) => (
  y: if y > 0 {col},
  right: if x > 0 and x < 3 {col},
  left: if x == 2 {col} else {0pt}
  )
  #let myfill(col) = (x,y) => {
    if y == 0 and x >1 {col}
  }

  #set table(stroke: myStroke(luma(20)),fill: myfill(luma(220)))

  #table(
    columns:(auto,auto,1fr,1fr,1fr),
    align: center,
    [],[],[$2 "Na"$],[$+"Cl"_2 arrow$],[$2"NaCl"$],
    [Etat initial],[x = 0],[],[],[0],
    [En cours],[x > 0],[],[],[],
    [Etat final],[x > 0],[3],[0],[4],

  )

]
