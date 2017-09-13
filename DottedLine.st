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

1 to: 100 do: [:x |
		posx := 50 + (x * 5).
		myPen place: posx@50.
		myPen go: 0@0.
	 ].  
window changed.