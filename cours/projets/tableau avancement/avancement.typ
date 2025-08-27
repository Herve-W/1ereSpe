#import "@preview/zero:0.4.0":num,set-num
#set-num(decimal-separator: ",")


#let val = ($O_2$,$ H_2$,$H_2O$,1,2,2,3,4,0)

#let tableauAvancement(val,esp,react) = {

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

  // let sgn = () //signe pour l'avancement
  // for i in range(esp) {if i< react {sgn.push($-$)} else {sgn.push($+$)}}
  
  let n = () // en cours
  let nf =() //etat final
  let sgn = ()
  for i in range(esp) {
    if i< react {sgn.push($-$)} else {sgn.push($+$)}
    n.push([$ #ni.at(i) #sgn.at(i)#coef.at(i) x$])
    nf.push([$ #ni.at(i) #sgn.at(i)#coef.at(i) x_"max"$])
  }
  table(
  columns: esp+2,
  align: center,
  [],[],..eq,
  [EI],[$x=0$],..ni,
  [cours],[$x$],..n,
  [EF],[$x_max$],..nf
)}

#tableauAvancement(val,3,2)



//autre version--------------------------


#let tableauAvancement2(reacts,prods)={
let myStroke(col) = (x,y) => (
y: if y > 0 {col},
right: if x > 0 and x < 5 {col},
left: if x == 2 {col} else {0pt}
)
let myfill(col) = (x,y) => {
  if y == 0 and x >1 {col}
}
set table(stroke: myStroke(luma(20)),fill: myfill(luma(220)))

let equation = ()
let n = ()
let nf = ()
for i in range(reacts.name.len()) {
  equation.push([$ #if reacts.coef.at(i) !=1 {$reacts.coef.at(#i)$} reacts.name.at(#i)$ #if i < reacts.name.len()-1 {$+$} else {$-> $}])
  n.push([$reacts.qt.at(#i) - #if reacts.coef.at(i) !=1 {reacts.coef.at(i)} x$])
  nf.push([$reacts.qt.at(#i) - #if reacts.coef.at(i) !=1 {reacts.coef.at(i)} x_"max"$])
}
for i in range(prods.name.len()) {
  equation.push([$ #if prods.coef.at(i) !=1 {$prods.coef.at(#i)$} prods.name.at(#i)$ #if i < reacts.name.len() -1  {$+$} ])
  n.push([$#if prods.qt.at(i) !=0 {prods.qt.at(i)}  + #if prods.coef.at(i) !=1 {prods.coef.at(i)} x$])
  nf.push([$#if prods.qt.at(i) !=0 {prods.qt.at(i)} + #if prods.coef.at(i) !=1 {prods.coef.at(i)} x_"max"$])
}

table(
  align: center+horizon,
  columns: reacts.name.len() + prods.name.len() + 2,
  [],[],..equation,
  [EI],[$x=0$],..reacts.qt.map( i => $#i$),..prods.qt.map(i => $#i$),
  [cours],[$x > 0$],..n,
  [Ef],[$x =x_"max"$],..nf,
)}

#let reacts = (
  name: ($"CH"_4$,$O_2$),
  coef: (1,2),
  qt:(1.0,5.0)
)

#let prods =(
  name:($"CO"_2$,$H_2O$),
  coef: (1,2),
  qt: (0,0)
)

#tableauAvancement2(reacts,prods)


#let bilan(reacts,prods)={
  let equation = ()
  let n = ()
  let nf = ()
  for i in range(reacts.name.len()) {
  equation.push([$ #if reacts.coef.at(i) !=1 {$reacts.coef.at(#i)$} reacts.name.at(#i)$ #if i < reacts.name.len()-1 {$+$} else {$-> $}])
  n.push([$reacts.qt.at(#i) - #if reacts.coef.at(i) !=1 {reacts.coef.at(i)} x$])
  nf.push([$reacts.qt.at(#i) - #if reacts.coef.at(i) !=1 {reacts.coef.at(i)} x_"max"$])
}
for i in range(prods.name.len()) {
  equation.push([$ #if prods.coef.at(i) !=1 {$prods.coef.at(#i)$} prods.name.at(#i)$ #if i < reacts.name.len() -1  {$+$} ])
  n.push([$#if prods.qt.at(i) !=0 {prods.qt.at(i)}  + #if prods.coef.at(i) !=1 {prods.coef.at(i)} x$])
  nf.push([$#if prods.qt.at(i) !=0 {prods.qt.at(i)} + #if prods.coef.at(i) !=1 {prods.coef.at(i)} x_"max"$])
}
return (equation:equation,n:n,nf:nf)
}

#let xmax1 = reacts.qt.at(0) / reacts.coef.at(0);
#let xmax2 = reacts.qt.at(1) / reacts.coef.at(1);


#let (equation,n,nf) = bilan(reacts,prods)
*Bilan :*
- Si #reacts.name.at(0) est limitant:
alors $#nf.at(0) = 0$ donc $x_"max1" = #num(calc.round(xmax1,digits:2))$ mol

- Si #reacts.name.at(1) est limitant:
alors $#nf.at(1) = 0$ donc $x_"max2" = #num(calc.round(xmax2,digits:2))$ mol

- Comme #if xmax1 < xmax2 {$ x_"max1" < x_"max2"$
     [ on a $x_"max" = x_"max1" = #xmax1 "mol"$ \ donc *#reacts.name.at(0) est limitant*  ] }else {$x_"max2" < x_"max1" $;
  [ on a $x_"max" = x_"max2" = #xmax2 "mol"$ \ donc *#reacts.name.at(1) est limitant* ]}
  

