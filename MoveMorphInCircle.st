aMorph := Morph new.
aMorph openInWorld.
 
x := 0.0.
y := 0.0.
th := 0.0.
 
1 to: 200 do: [:i |
	th :=  i * (3.14 / 100).
	x := th sin * 100 + 200.
	y := th cos * 100 + 200.
	aMorph position: x@y.
	Transcript show: (x printString) , ' - ' , (y printString).
	Transcript cr.
].