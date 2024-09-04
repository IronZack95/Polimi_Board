SamacSys ECAD Model
1235445/1350504/2.50/2/4/Crystal or Oscillator

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c120.5_h65.7"
		(holeDiam 0.657)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.205) (shapeHeight 1.205))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.205) (shapeHeight 1.205))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "ABL25000MHzB1UB" (originalName "ABL25000MHzB1UB")
		(multiLayer
			(pad (padNum 1) (padStyleRef c120.5_h65.7) (pt 0.000, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c120.5_h65.7) (pt 4.880, 0.000) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 2.440, 0.000) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.31 -2.5) (pt 8.19 -2.5) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 8.19 -2.5) (pt 8.19 2.5) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 8.19 2.5) (pt -3.31 2.5) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.31 2.5) (pt -3.31 -2.5) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.31 2.5) (pt 8.19 2.5) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 8.19 2.5) (pt 8.19 -2.5) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 8.19 -2.5) (pt -3.31 -2.5) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.31 -2.5) (pt -3.31 2.5) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.31 3.5) (pt 9.19 3.5) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 9.19 3.5) (pt 9.19 -3.5) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 9.19 -3.5) (pt -4.31 -3.5) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.31 -3.5) (pt -4.31 3.5) (width 0.1))
		)
	)
	(symbolDef "ABL-25_000MHz-B1UB" (originalName "ABL-25_000MHz-B1UB")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 140 mils -15 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 400 mils 0 mils) (rotation 180) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 260 mils -15 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 120 mils 100 mils) (pt 120 mils -100 mils) (width 6 mils))
		(line (pt 280 mils 100 mils) (pt 280 mils -100 mils) (width 6 mils))
		(line (pt 160 mils 140 mils) (pt 160 mils -140 mils) (width 6 mils))
		(line (pt 160 mils -140 mils) (pt 240 mils -140 mils) (width 6 mils))
		(line (pt 240 mils -140 mils) (pt 240 mils 140 mils) (width 6 mils))
		(line (pt 240 mils 140 mils) (pt 160 mils 140 mils) (width 6 mils))
		(line (pt 280 mils 0 mils) (pt 300 mils 0 mils) (width 6 mils))
		(line (pt 120 mils 0 mils) (pt 100 mils 0 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 350 mils 250 mils) (justify 24) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "ABL-25.000MHz-B1UB" (originalName "ABL-25.000MHz-B1UB") (compHeader (numPins 2) (numParts 1) (refDesPrefix Y)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "ABL-25_000MHz-B1UB"))
		(attachedPattern (patternNum 1) (patternName "ABL25000MHzB1UB")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Mouser Part Number" "815-ABL-25-B1U")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/ABRACON/ABL-25.000MHz-B1UB?qs=DZ%2FvJMgWWIsHsKf5%2FKBerg%3D%3D")
		(attr "Manufacturer_Name" "ABRACON")
		(attr "Manufacturer_Part_Number" "ABL-25.000MHz-B1UB")
		(attr "Description" "Crystals 25MHZ, 18pF Fund 10ppm -20C +70C HC/49US (AT49) MICROPROCESSOR CRYSTAL")
		(attr "Datasheet Link" "https://www.mouser.co.uk/datasheet/2/3/ABL-1774766.pdf")
	)

)