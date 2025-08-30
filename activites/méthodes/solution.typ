#import "@local/activite:0.1.0" :*
#show: (doc) => config(doc, chap:[Calculer avec des grandeurs physiques.], preambule: false, type: "Corrigé", nbr: 1)
#set text(10pt)

//----------------------------------
// 1) Conversions d'unités
#exo("Conversions d'unités — Corrigé")[
  #set par(leading: 1.5em)
  + 236 g = 0,236 kg \
  + 342 µg = 0,000342 g \
  + 25 mL = 0,025 L \
  + 0,025 L = 2,5 cL \
  + 0,50 $m^3$ = 500 L \
  + 100 L = 0,1 $m^3$ \
  + 25 mg / 10 L = 0,0025 $g.L^(-1)$ \
  + 0,058 kg / 250 mL = 232 $g.L^(-1)$ \
  + 78 mg / 36 mL = 2,17 $g.L^(-1)$
]

//----------------------------------
// 2) Calcul littéral "simple"
#exo("Calcul littéral \"simple\" — Corrigé")[
  #set par(leading: 1.5em)
  + Si $a = b times c$ alors $b = a / c$ et $c = a / b$ \
  + Si $a = b / c$ alors $b = a times c$ et $c = b / a$ \
  + Si $a / b = c / d$ alors $a = (b times c) / d$ et $b = (a times d) / c$ \
  + $1 / a + 1 / b = (a + b) / (a times b)$ \
  + $(a / b) / (c / d) = (a times d) / (b times c)$ \
  + $(a / b) times (c / d) = (a times c) / (b times d)$
]

//----------------------------------
// 3) Calculer à l'aide de la calculette
#exo("Calculer à l'aide de la calculette — Corrigé")[
  #set par(leading: 1.5em)
  + #num("5,12e-8") / 32,7 = $1,57 times 10^(-9)$ \
  + #num("4,50e-12") / #num("1,40e-15") = $3,21 times 10^(3)$ \
  + 695648 / 846 = $8,22 times 10^(2)$ \
  + 0,0045687 / 853 = $5,36 times 10^(-6)$
]

//----------------------------------
// 4) Utilisation des puissances de 10
#exo("Utilisation des puissances de 10 — Corrigé")[
  #set par(leading: 1.5em)
  + 356 µs = $3,56 times 10^(-4)$ s \
  + 0,274 km = $2,74 times 10^(2)$ m \
  + 48 nm = $4,8 times 10^(-8)$ m \
  + 0,681 µm = $6,81 times 10^(2)$ nm
]

//----------------------------------
// 5) Calculer en respectant les chiffres significatifs
#exo("Calculer en respectant les chiffres significatifs — Corrigé")[
  #set par(leading: 1.5em)
  + $3,45678 times 5,2 = 18$  // 2 chiffres significatifs \
  + $4,875 "/" 2,5697 = 1,897$  // 4 chiffres significatifs \
  + #num("2,458e-3") / 1,842 = $1,334 times 10^(-3)$  // 4 chiffres significatifs
]
