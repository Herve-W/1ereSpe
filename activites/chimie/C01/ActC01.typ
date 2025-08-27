#import "@local/activite:0.1.0": *
#show: (doc) => config(doc,nbr:1)

+ Rappeler la définition de la mole vue en seconde et expliquer pourquoi les chimistes ( _vous !_ ) l'utilisent.

+ En utilisant les données du tableau périodique,calculer la masse molaire moléculaire de l'eau $H_2 O$ puis expliquer ce quette valeur veut dire sous forme d'une phrase.
#{
[Masses molaires de quelques éléments en $g.m o l^(-1)$]
set text(weight:"bold")
table(
  columns:(1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,),
  align: center+horizon,
  stroke: (x,y) => if y==0 and (x < 7 and x > 0) {(top:{0pt})} else {(thickness:0.5pt,paint:black)},
  [H\ 1,0],table.cell(colspan: 6)[],[He\ 4,0],
  [Li\ 7,0],[Be\ 9,0],[B\ 10,8],[C\ 12,0],[N\ 14,0],[O\ 16,0],[F\ 19,0],[Ne\ 20,2],
  [Na\ 23,0],[Mg\ 24,3],[Al\ 27,0],[Si\ 28,1],[P\ 31,0],[S\ 32,1],[Cl\ 35,5],[Ar\ 40,0],
)}

3. Calculer la quantité de matière de 100 g d'eau en utilisant le résultat précédent.

+ Calculer la quantité de matière de 130 L d'air à 20°C puis comparer le résultat au précédent et conclure.#lf

+ Calculer la masse de sucre contenue dans 100 mL de soda de concentration en masse $c_m = 110#gL$ puis en déduire la quantité de matière de sucre correspondante.

+ Calculer la concentration en quantité de matière du sucre dans le sirop précédent. Donnée $M(s u c r e)= 343 #gm$

+ Rappeler le principe d'une dilution. #lf

+ Quel intervalle de longueur d'onde correspond à la lumière visible ? Donner les valeurs approximatives du rouge et du bleu.

+ Sur le spectre ci-dessous, quelle est la couleur la plus absorbée ? En déduire la couleur observée.(Utiliser le cercle chromatique) #image("media/image2.png",width:75%) 

+ Expliquer pourquoi les deux fioles n’ont pas la même couleur alors que le soluté est le même. \De même expliquer pourquoi la couleur n’est pas la même entre le bas et le haut de la même fiole ? #img("media/fioles.png")

+ Que signifie le mot doser en chimie ? Donner un exemple.

#exo("Masse molaire moléculaire")[

Calculer les masses molaires suivantes en utilisant les données du tableau périodique et $M(C u) = 63,5#gm$:
+ du glucose $C_6H_12O_6$
+ de l’alumine $A l_2O_3$
+ des ions nitrates $N O_3^-$
+ du sulfate de cuivre pentahydraté $C u S O_4,5H_2O $
]

#exo("Calculer une quantité de matière")[

Données : 
- Le volume molaire est de $24,0" "L.m o l^(-1)$ dans les conditions ordinaires de température et pression 
- Les masses molaires sont dans le tableau périodique.
- La masse volumique de l’éthanol liquide est $rho =0,79" " g.m L^(-1)$ 
+ Quelle est la quantité de matière de 5,0 g d’hydroxyde de sodium $N a O H(s)$ ?
+ Quelle est la quantité de matière de 5,0 mL d’éthanol $C_2H_5O (l)$ ?
+ Calculer la quantité de matière de 100 L de dioxyde de carbone $C O_2(g)$ dans les conditions ordinaires de température et de pression.
+ Quelle est la quantité de matière en sulfate de cuivre $C u^(2+)(a q)+S O_4^(2–)(a q)$ dans 75 mL de solution à une concentration de $3,0×10^(-3)$ #M ?
]

#exo("Préparation d'une solution")[

On veut préparer 250 mL d’une solution (S) de chlorure de potassium (KCl) de concentration (en quantité de matière) $c = 0,10 #M$ par dissolution de chlorure de potassium solide.\
Données : $M(K) = 39,0 #gm ; M(C l) = 35,5 #gm$

+ Calculer la masse de chlorure de potassium qu’il faut dissoudre pour préparer la solution (S).
+ En déduire la concentration en masse $c_m$ de la solution (S).
+ Montrer que la concentration en quantité de matière $c$ et la concentration en masse $c_m$ sont liées par $c = c_m / M$ puis calculer $c$.
+ Quel matériel faut-il pour préparer cette solution avec précision ? 

On dispose de 100 mL d’une solution (S’) de chlorure de potassium de concentration $c’ = 0,50 #M$ . On veut préparer à nouveau la solution (S) par dilution.
5. Calculer le volume de solution (S’) qu’il faut prélever pour préparer 250 mL de solution (S) par dilution.
+ Donner le protocole complet de cette dilution en indiquant le matériel utilisé.
]

#exo("Le permanganate de potassium")[
  
Le document suivant montre le spectre d'absorption du permanganate de potassium de concentration $c = 1,0 times 10^(-3) #M$

#img("media/spectre.png")

+ Quelle est la couleur de l’ion permanganate ? (Justifier en utilisant le cercle chromatique)
On travaille à $lambda=525" " n m$ avec une cuve de 1,0 cm.

2. Pourquoi choisir cette longueur d’onde ?
+	Rappeler l’expression de la loi de Beer-Lambert, puis calculer la valeur du coefficient d'absorption molaire de de l’ion permanganate à λ=525 nm.
+ Une solution de concentration inconnue a une absorbance de 0,50 (à λ=525 nm). Calculer cette concentration.
]

#exo("Teinture d'iode")[

  On dispose d’une bouteille de 100 mL de teinture d’iode qui contient 5,0 % en masse de diiode $I_2$. 
  Données: 
  - La masse volumique est de $rho_"teinture" = 900" "g.L^(-1)$ 
  - La masse molaire de l’iode est $127 #gm$.

+ Calculer la masse de la teinture d’iode puis celle du diiode qu’elle contient.
+ En déduire que la concentration en masse du diiode et de $45 #gL$
+ En déduire la concentration en quantité de matière du diiode dans la bouteille.

Pour confirmer ce résultat, on dilue la teinture d’iode 200 fois pour obtenir une solution S. On mesure son absorbance à 500 nm et on obtient $A_500 = 0,78$. 
On prépare 6 solutions de concentrations en diiode connues dont on mesure l’absorbance à 500 nm. Les résultats sont notés dans le tableau ci-dessous.

#table(
  columns:(auto,(1fr,)*6).flatten(),
  align: center,
  stroke:(x,y) => {if x>0 {(left:black)}; if y>0 {(top:black)}},
  [c($µ m o l.L^(-1)$)],[50],[100],[250],[500],[750],[100],
  [A],[0,041],[0,100],[0,220],[0,460],[0,700],[0,870]
)

4. Tracer la courbe d’étalonnage $A = f(c)$ sur une feuille quadrillée (ou avec Python, Excel ou autre.)
+ Déterminer graphiquement la concentration en quantité de matière du diiode dans la solution diluée puis celle de la teinture et la comparer au résultat de la question 3)
]

#exo("Entrainement")[
  
#set text(8pt)
+ La quantité de matière d’un système de 1 milliard d’entités est: \
    A. #num("6,02e14") mol \
    B. #num("1,66e-15") mol \
    C. #num("1,66e-12") mol 
+ Le nombre d’Avogadro a pour unité : \
    A. aucune \
    B. mol \
    C. mol#super[-1]
+ La quantité de matière de 10,0 g de cuivre est: \
    A. 0,157 mol \
    B. 6,35 mol \
    C. #num("1,67e-23") mol
+ Le volume molaire d’un gaz dépend: \
    A. de la nature d’un gaz \
    B. de la température \
    C. de la pression  \
+ À la même température et même pression, 1,0 g de #ce("CO2") gazeux et 1,0 g de #ce("O2") gazeux occupent : \
    A. un volume identique \
    B. un volume différent \
    C. On ne peut pas répondre \
+ La masse volumique du CO2 est :
    A. 1,83 g/L 
    B. 0,54 g/L 
    C. on ne peut pas répondre
+ La masse d’une molécule d’eau (H2O) est : \
    A. #num("6,02e-23") g \
    B. #num("3,0e-23") g \
    C. #num("1,5e-23") g \
+ Une molécule a pour masse molaire M=44 g.mol-1. Celle ci contient 3 atomes de carbone, et: \
    A. 8 atomes d’hydrogène \
    B. 6 atomes d’hydrogène \
    C. 4 atomes d’hydrogène \
]
#humour("./media/guacamole.jpg")