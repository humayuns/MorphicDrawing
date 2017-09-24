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
myPen squareNib: 3.
myPen color: Color blue.

p := myPen.
p place: 200@200.
p turn: 90.
p go: 100@100.
p turn: 90.
p go: 100@100.
p turn: 90.
p go: 100@100.
p turn: 90.
p go: 100@100.
p turn: 30.	
p go: 100@100.
p turn: 120.	
p go: 100@100.