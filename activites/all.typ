#import "@local/activite:0.1.0" : c
#for i in range(1,9) {
  let name = "C0"+str(i)
  include "chimie/"+name+"/Act"+name+".typ"
  c.update(0)
  }

#for i in range(1,8) {
  let name = "P0"+str(i)
  include "physique/"+name+"/Act"+name+".typ"
  c.update(0)
  }

