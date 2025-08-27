
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[Réactions d’oxydoréduction],nbr:2,type:"C")

#h(2em) Les réactions d'oxydoréductions sont une grande famille de transformations chimiques. Certaines se déroulement dans dans notre environnement quotidien comme les combustions et d'autres se déroulent plus discrètement dans notre corps ou dans le fonctionnement d'une pile.

== Couple d’oxydoréduction.

=== Oxydant et réducteur.

#definition("Oxydant et réducteur")[
- Un #strong[oxydant] est une espèce chimique capable de capturer des électrons.
- Un #strong[réducteur] est une espèce chimique capable de perdre des électrons.]

=== Demi-équation d’oxydoréduction.

- Deux espèces chimiques capables de s’échanger des électrons forment un *couple d’oxydoréduction* que l’on note sous la forme #strong[Ox/Red]

- L’équation faisant apparaître le transfert d’électrons entre deux espèces d’un couple est appelée une demi-équation.

- On écrit:
#eq($ R e d = O x + n e^- $)

#strong[Remarques~:]

- Une demi-équation ne représente pas une transformation chimique~!

- On utilise le symbole = dans une demi-équation pour dire qu’elle peut se faire dans les deux sens.


#img("./media/image1.png",width:100%)

#strong[#underline[Méthode pour équilibrer une demi-équation];: \
];On supposera toujours que les espèces sont en solution (présence d’eau) et que le milieu est acide (présence d’ions H#super[\+];)

#block(fill:luma(220),inset:5pt)[
On équilibre~:
#set enum(numbering: "1)", start: 1,indent: 1cm)
    + l’élément *commun* qui n’est ni H ni O
    + *l’oxygène* en utilisant des molécules H#sub[2];O
    + *l’hydrogène* avec des ions H#super[\+]
    + les *charges* avec des électrons e #super[–]
]

== La réaction d’oxydoréduction.

#definition("La réaction d'oxydoréduction")[Dans une réaction d’oxydoréduction, il y a un transfert direct d’électrons entre le réducteur d’un couple et l’oxydant d’un autre couple selon le schéma :

#eq($ O x_1 + R e d_2 arrow O x_2 + R e d_1 $)]

#block[Pour écrire l’équation globale de cette transformation, il faut~:

a) écrire les #strong[demi-équations] d’oxydoréduction pour les deux couples en jeux.

b) si le nombre d’électrons échangés n’est pas le #strong[même] effectuer des combinaisons linéaires

c) additionner les deux demi-équation en s’assurant que les réactifs sont bien écrits à gauche.]

#strong[Attention] Il ne doit jamais rester d\'électrons dans le bilan final.

#displayProg(viewProg)[
- À partir de données expérimentales, identifier le transfert d’électrons entre deux réactifs et le modéliser par des demi-équations électroniques et par une réaction d’oxydo- réduction.
- Établir une équation de la réaction entre un oxydant et un réducteur, les couples oxydant-réducteur étant donnés.
]