
// #import "modele.typ": *
#import "@local/cours:0.1.0" :*
#show: (doc) => config(doc,chap:[Synthèses d’espèces chimiques organiques.],nbr:8,type:"C")


En chimie organique, une synthèse consiste à produire une espèce chimique au laboratoire.

== Les étapes d’une synthèse.

#definition("Etapes d'une synthèse")[Lors d’une synthèse chimique, les étapes à suivre sont généralement~:
Transformation, Extraction, Purification et Analyse.]



#grid(columns:2,
[=== La transformation chimique.

On mélange les réactifs (et le catalyseur) dans le ballon et on *chauffe à reflux*

+ Colonne de refroidissement
+ entrée d’eau
+ sortie d’eau
+ ballon
+ chauffe ballon

#rq On utilise parfois un montage plus simple avec un erlenmeyer dans un bain marie et un réfrigérant à air.

], 
img("./media/image1.png",width:50%)
)

=== Extraction.

- Si le produit à isoler est un solide on utilise une filtration sous vide

#img("./media/image3.png",width:50%)

+ Entonnoir Buchner avec papier filtre
+ Fiole à vide
+ Aspiration

#grid(columns:2,
[- Si le produit à isoler est un liquide on réalise une extraction liquide/liquide avec une ampoule à décanter.

La phase de densité la plus petite est celle qui est au-dessus (c\'est généralement la phase organique)

=== Purification.

- Si le produit est un solide on le sépare des impuretés par #strong[recristallisation] On dissout le solide à chaud, et en refroidissant le solide précipite mais les impuretés restent en solution.
]
,
img("./media/image2.png",width:50%))

- Si le produit est un liquide, on le purifie par #strong[distillation];.

+ Ballon contenant le liquide homogène
+ Colonne à distiller
+ Colonne de refroidissement
+ Distillat

#img("./media/image4.png")

Cette méthode est basée sur la différence de température de vaporisation entre les liquides, celui dont la température de vaporisation est la plus basse est récupéré en premier.

=== Analyse.

Pour contrôler la pureté du produit formé, on peut réaliser~:
- Une chromatographie sur couche mince.
- Une mesure se sa température de changement d’état
- Son spectre IR


== Rendement d’une synthèse.

#definition("Rendement d'une synthèse")[Le rendement d’une synthèse est le rapport entre la masse de produit obtenue m#sub[produit] et la masse maximale que l’on obtiendrait pour une réaction totale m#sub[max];.

#eq[$ mu = m_(p r o d u i t) / m_max $]

La masse du produit est obtenue par pesée en fin de synthèse lorsqu’il est sec.

La masse maximale est obtenue par calcul en effectuant un bilan de matière.]

#strong[Remarque];~: 
- Le rendement est généralement exprimé en pourcentage. 
- Un rendement est toujours inférieur à 1 (100%) car:
  + il y a des pertes de matière lors des différentes étapes de la synthèse. 
  + la transformation chimique n’est pas forcément totale

#displayProg(viewProg)[- Identifier, dans un protocole, les étapes de transformation des réactifs, d’isolement, de purification et d’analyse (identification, pureté) du produit synthétisé.
- Justifier, à partir des propriétés physico-chimiques des réactifs et produits, le choix de méthodes d’isolement, de purification ou d’analyse
- Déterminer, à partir d’un protocole et de données expérimentales, le rendement d’une synthèse.
- Schématiser des dispositifs expérimentaux des étapes d’une synthèse et les légender]
