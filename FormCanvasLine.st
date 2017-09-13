form := Form extent: 200@200 depth: 32. 
canvas := FormCanvas on: form. 
canvas line: 0@0 to: 200@200 color: Color red. 
canvas line: 200@0 to: 0@200 color: Color blue. 
morph := ImageMorph new. 
morph image: form. 
morph openInHand. 