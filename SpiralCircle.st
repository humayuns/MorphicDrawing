"Create Window"
window := SystemWindow new.
window setLabel:'New Window'.
pasteUpMorph := PasteUpMorph new.
window addMorph: pasteUpMorph frame: (0@0 corner: 1@1).
window openInWorld.

"Create ImageMorph"
myImageMorph := ImageMorph new.
pasteUpMorph addMorph: myImageMorph.
myImageMorph newForm: (Form extent: (pasteUpMorph extent) depth: 32).
myImageMorph bounds: (pasteUpMorph bounds).

"Create Pen and use it to draw on ImageMorph"
myPen := Pen newOnForm: myImageMorph image.
myPen squareNib: (1 to: 10) atRandom.
red := (0 to: 1) atRandom.
green := (0 to: 1) atRandom.
blue := (0 to: 1) atRandom.
myPen color: (Color r: red g: green b: blue).
myPen place: 300@200.
window changed.
scale := 1.
[1 to: 360 do: [:x |
		myPen turn: 10.
		myPen go:scale@scale.
		(Delay forMilliseconds: 1) wait.
		window changed.
		scale := scale + 0.1.
	]] fork.

