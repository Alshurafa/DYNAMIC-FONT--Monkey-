Function MakeFont:Image(size:Int = 5)
	Local font_w:Int = DeviceWidth * 0.01
	font_w += size * font_w / 2
	Local font_h:Int = font_w * 1.5
	Local font:Image = CreateImage(font_w * 96, font_h)
	Local font_size:Float = font_w * 0.15
	For Local chars:Int = 0 Until 95'95
		Cls(0, 0, 0)
		SetColor(255, 255, 255)
		'Local x:Int = (font_w * chars) Mod DeviceWidth
		'Local y:Int = Int(chars * font_w / DeviceWidth) * font_h
		Select chars
			'Case 0	'space
			Case 1	'!
				DrawRect(font_size * 3,  font_size * 2, font_size, font_size * 5)
				DrawRect(font_size * 3,  font_size * 8, font_size, font_size)
			Case 2	'"
				DrawRect( font_size * 2,  font_size, font_size, font_size * 3)
				DrawRect( font_size * 4,  font_size, font_size, font_size * 3)
			Case 3	'#
				'DrawRect( font_size * 2,  font_size * 2, font_size, font_size * 7)
				DrawPoly([ font_size * 2.5,  font_size * 2,
						font_size * 3.5,  font_size * 2,
						font_size * 2.5,  font_size * 9,
						font_size * 1.5,  font_size * 9])
				DrawPoly([ font_size * 4.5,  font_size * 2,
						font_size * 5.5,  font_size * 2,
						font_size * 4.5,  font_size * 9,
						font_size * 3.5,  font_size * 9])
				'DrawRect( font_size * 4,  font_size * 2, font_size, font_size * 7)
				DrawRect( font_size * 1.5,  font_size * 4, font_w - font_size * 2, font_size)
				DrawRect( font_size,  font_size * 6, font_w - font_size * 2, font_size)
			Case 4	'$
				DrawCircle( font_w / 2,  font_size * 3.5, font_size * 2)
				DrawCircle( font_w / 2,  font_size * 6.5, font_size * 2)
				SetColor(0, 0, 0)
				DrawPoly([ font_w - font_size * 3,  font_size * 3,
						font_w - font_size * 3,  font_size * 4.5,
						font_w + font_size * 2,  font_size * 7,
						font_w + font_size * 2,  font_size * 6])
				DrawPoly([ font_w - font_size * 3,  font_size * 7,
						font_w - font_size * 3,  font_size * 5.5,
						0, font_size * 4.4,
						0, font_size * 5])
				DrawCircle( font_w / 2,  font_size * 3.5, font_size)
				DrawCircle( font_w / 2,  font_size * 6.5, font_size)
				SetColor(255, 255, 255)
				DrawRect( font_size * 2.8,  font_size, font_size, font_size * 8)
			Case 5	'%
				DrawCircle( font_size * 2,  font_size * 3.5, font_size * 1.5)
				DrawCircle( font_size * 5,  font_size * 7.5, font_size * 1.5)
				DrawPoly([ font_size * 4.5,  font_size * 2,
						font_size * 5.5,  font_size * 2,
						font_size * 2.5,  font_size * 9,
						font_size * 1.5,  font_size * 9])
				SetColor(0, 0, 0)
				DrawCircle( font_size * 2,  font_size * 3.5, font_size * 0.75)
				DrawCircle( font_size * 5,  font_size * 7.5, font_size * 0.75)
				SetColor(255, 255, 255)
			Case 6	'&
				DrawCircle( font_size * 3,  font_size * 3.5, font_size * 1.5)
				DrawCircle( font_size * 3,  font_size * 6.5, font_size * 2)
				SetColor(0, 0, 0)
				DrawCircle( font_size * 3,  font_size * 3.5, font_size * 0.75)
				DrawCircle( font_size * 3,  font_size * 6.5, font_size * 1)
				DrawRect( font_size * 3,  font_size * 3, font_size, font_size * 4)
				DrawRect( font_size * 3.5,  font_size * 2, font_size * 2, font_size * 4)
				SetColor(255, 255, 255)
				DrawPoly([ font_size * 5,  font_size * 5.1,
						font_size * 6,  font_size * 5.1,
						font_size * 3.4,  font_size * 7,
						font_size * 2.4,  font_size * 7])
			Case 7	''
				DrawRect( font_size * 3,  font_size, font_size, font_size * 3)
			Case 8	'(
				DrawOval( font_size * 2.5,  font_size * 1, font_size * 3, font_size * 8)
				SetColor(0, 0, 0)
				DrawOval( font_size * 3,  font_size * 1, font_size * 3, font_size * 8)
			Case 9	')
				DrawOval( font_size * 1,  font_size * 1, font_size * 3, font_size * 8)
				SetColor(0, 0, 0)
				DrawOval( font_size * 0.5,  font_size * 1, font_size * 3, font_size * 8)
			Case 10	'*
				DrawRect( font_size * 2.75,  font_size * 2.75, font_size, font_size * 4.5)
				DrawPoly([ font_size * 1.25,  font_size * 3.5,
						font_size * 5.25,  font_size * 5.5,
						font_size * 5.25,  font_size * 6.5,
						font_size * 1.25,  font_size * 4.5])
				DrawPoly([ font_size * 5.25,  font_size * 3.5,
						font_size * 1.25,  font_size * 5.5,
						font_size * 1.25,  font_size * 6.5,
						font_size * 5.25,  font_size * 4.5])
			Case 11	'+
				DrawRect( font_size * 2.75,  font_size * 3, font_size, font_size * 4)
				DrawRect( font_size * 1.25,  font_size * 4.5, font_size * 4, font_size)
			Case 12	',
				DrawRect( font_size * 2.75,  font_size * 7, font_size, font_size)
				DrawPoly([ font_size * 2.75,  font_size * 8,
						font_size * 3.75,  font_size * 8,
						font_size * 2.25,  font_size * 9])
			Case 13	'-
				DrawRect( font_size * 1.25,  font_size * 4.5, font_size * 4, font_size)
			Case 14	'.
				DrawRect( font_size * 2.75,  font_size * 7, font_size, font_size)
			Case 15 '/
				DrawPoly([ font_size * 4.5,  font_size * 2,
						font_size * 5.5,  font_size * 2,
						font_size * 2.5,  font_size * 9,
						font_size * 1.5,  font_size * 9])
			Case 16	'0
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 7)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 5)
			Case 17	'1
				DrawRect( font_size * 3,  font_size, font_size, font_size * 7)
				DrawPoly([ font_size * 3,  font_size,  font_size * 4,  font_size,  font_size * 2.5,  font_size * 3,  font_size * 1.5,  font_size * 3])
			Case 18	'2
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 4)
				DrawRect( font_size * 1.25,  font_size * 7, font_size * 4, font_size)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 2)
				DrawRect( font_size * 1.25,  font_size * 3, font_size * 3, font_size * 4)
				SetColor(255, 255, 255)
				DrawPoly([ font_size * 4.25,  font_size * 3.25,
						font_size * 4.5,  font_size * 4.6,
						font_size * 2.5,  font_size * 7,
						font_size * 1.25,  font_size * 7])
			Case 19	'3
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 4)
				DrawOval( font_size * 1.25,  font_size*4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 1.25,  font_size * 3, font_size * 2, font_size * 3)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 2)
				DrawOval( font_size * 2.25,  font_size * 5, font_size * 2, font_size * 2)
			Case 20 '4
				DrawRect( font_size * 3.5,  font_size, font_size, font_size * 7)
				DrawRect( font_size * 1.25,  font_size * 4.5, font_size * 4, font_size)
				DrawPoly([ font_size * 3.5,  font_size,
						font_size * 4.5,  font_size,
						font_size * 2.25,  font_size * 4.5,
						font_size * 1.25,  font_size * 4.5])
			Case 21	'5
				DrawRect( font_size * 1.25,  font_size, font_size * 3.5, font_size)
				DrawRect( font_size * 1.25,  font_size, font_size, font_size * 4)
				DrawOval( font_size * 1.25,  font_size * 3, font_size * 4, font_size * 5)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 4, font_size * 2, font_size * 3)
				DrawRect( font_size * 1.25,  font_size * 5, font_size, font_size)
			Case 22 '6
				DrawOval( font_size * 1.25,  font_size, font_size * 6, font_size * 7)
				SetColor(0, 0, 0)
				DrawRect( font_size * 4,  font_size, font_size * 4, font_size * 8)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 3, font_size * 6)
				SetColor(255, 255, 255)
				DrawOval( font_size * 1.25,  font_size * 3, font_size * 4, font_size * 5)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 4, font_size * 2, font_size * 3)
			Case 23	'7
				DrawRect( font_size * 1.25,  font_size, font_size * 4, font_size)
				DrawPoly([ font_size * 4.25,  font_size * 2,
						font_size * 5.25,  font_size * 2,
						font_size * 2.5,  font_size * 8,
						font_size * 1.5,  font_size * 8])
			Case 24	'8
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 4)
				DrawOval( font_size * 1.25,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 2)
				DrawOval( font_size * 2.25,  font_size * 5, font_size * 2, font_size * 2)
			Case 25	'9
				DrawOval( font_size * 5.25,  font_size, font_size * -6, font_size * 7)
				SetColor(0, 0, 0)
				DrawRect( font_size * 2.75,  font_size, font_size * -4, font_size * 8)
				DrawOval( font_size * 4.25,  font_size * 2, font_size * -3, font_size * 5)
				SetColor(255, 255, 255)
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 5)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 3)
			Case 26	':
				DrawRect( font_size * 2.75,  font_size * 4, font_size, font_size)
				DrawRect( font_size * 2.75,  font_size * 7, font_size, font_size)
			Case 27	';
				DrawRect( font_size * 2.75,  font_size * 4, font_size, font_size)
				DrawRect( font_size * 2.75,  font_size * 7, font_size, font_size)
				DrawPoly([ font_size * 2.75,  font_size * 8,
						font_size * 3.75,  font_size * 8,
						font_size * 2.25,  font_size * 9])
			Case 28	'<
				DrawPoly([0, font_size * 4,
						font_size * 4,  font_size * 2,
						font_size * 4,  font_size * 3,
						0, font_size * 5])
				DrawPoly([0, font_size * 4,
						font_size * 4,  font_size * 6,
						font_size * 4,  font_size * 7,
						0, font_size * 5])
			Case 29	'=
				DrawRect( font_size * 1.25,  font_size * 3, font_size * 4, font_size)
				DrawRect( font_size * 1.25,  font_size * 5, font_size * 4, font_size)
			Case 30	'>
				DrawPoly([ font_size * 2.5,  font_size * 6,
						font_size * 6.5,  font_size * 4,
						font_size * 6.5,  font_size * 5,
						font_size * 2.5,  font_size * 7])
				DrawPoly([ font_size * 2.5,  font_size * 2,
						font_size * 6.5,  font_size * 4,
						font_size * 6.5,  font_size * 5,
						font_size * 2.5,  font_size * 3])
			Case 31	'?
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 4)
				DrawRect( font_size * 2.75,  font_size * 7, font_size, font_size)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 2)
				DrawRect( font_size * 1.25,  font_size * 2.5, font_size * 2, font_size * 2.5)
				SetColor(255, 255, 255)
				DrawRect( font_size * 2.75,  font_size * 4, font_size, font_size * 2)
			Case 32	'@
				DrawOval(0, font_size, font_size * 6.5, font_size * 7)
				SetColor(0, 0, 0)
				DrawOval( font_size,  font_size * 2, font_size * 4.5, font_size * 5)
				DrawRect( font_size * 4.5,  font_size * 6, font_size * 2, font_size * 3)
				SetColor(255, 255, 255)
				DrawOval( font_size * 1.5,  font_size * 3, font_size * 3, font_size * 3)
				DrawRect( font_size * 3.75,  font_size * 3, font_size, font_size * 3)
				DrawRect( font_size * 3.75,  font_size * 5, font_size * 2, font_size)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.75,  font_size * 4, font_size, font_size)
			Case 33	'A
				DrawRect( font_size * 2,  font_size * 5, font_size * 2, font_size)
				DrawPoly([ font_size,  font_size * 8,
						font_size * 2,  font_size * 8,
						font_size * 3.75,  font_size,
						font_size * 2.75,  font_size])
				DrawPoly([ font_size * 4.5,  font_size * 8,
						font_size * 5.5,  font_size * 8,
						font_size * 3.75,  font_size,
						font_size * 2.75,  font_size])
			Case 34	'B
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 4)
				DrawOval( font_size * 1.25,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 2,  font_size, font_size * 1.5, font_size * 7)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 2)
				DrawOval( font_size * 2.25,  font_size * 5, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size,  font_size, font_size * 2.5, font_size)
				DrawRect( font_size,  font_size * 4, font_size * 2.5, font_size)
				DrawRect( font_size,  font_size * 7, font_size * 2.5, font_size)
			Case 35	'C
				DrawOval( font_size,  font_size, font_size * 5, font_size * 7)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 2, font_size * 3, font_size * 5)
				DrawRect( font_size * 3.25,  font_size, font_size * 3, font_size * 7)
				SetColor(255, 255, 255)
				DrawRect( font_size * 3,  font_size, font_size * 2, font_size)
				DrawRect( font_size * 3,  font_size * 7, font_size * 2, font_size)
			Case 36	'D
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 7)
				SetColor(0, 0, 0)
				DrawRect( font_size * 2,  font_size, font_size * 1.5, font_size * 7)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 5)
				SetColor(255, 255, 255)
				DrawRect( font_size,  font_size, font_size * 2.5, font_size)
				DrawRect( font_size,  font_size * 7, font_size * 2.5, font_size)
			Case 37	'E
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawRect( font_size,  font_size, font_size * 4, font_size)
				DrawRect( font_size,  font_size * 4, font_size * 3.5, font_size)
				DrawRect( font_size,  font_size * 7, font_size * 4, font_size)
			Case 38	'F
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawRect( font_size,  font_size, font_size * 4, font_size)
				DrawRect( font_size,  font_size * 4, font_size * 3.5, font_size)
			Case 39	'G
				DrawOval( font_size,  font_size, font_size * 5, font_size * 7)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 2, font_size * 3, font_size * 5)
				DrawRect( font_size * 3.25,  font_size, font_size * 3, font_size * 7)
				SetColor(255, 255, 255)
				DrawRect( font_size * 3,  font_size, font_size * 2, font_size)
				DrawRect( font_size * 3,  font_size * 4.5, font_size * 2, font_size)
				DrawRect( font_size * 3,  font_size * 7, font_size * 2, font_size)
				DrawRect( font_size * 4,  font_size * 5, font_size, font_size * 3)
			Case 40	'H
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawRect( font_size,  font_size * 4, font_size * 4, font_size)
				DrawRect( font_size * 4,  font_size, font_size, font_size * 7)
			Case 41	'I
				DrawRect( font_size * 2.75,  font_size, font_size, font_size * 7)
			Case 42	'J
				DrawRect( font_size * 4.25,  font_size, font_size, font_size * 5)
				DrawOval( font_size * 1.25,  font_size*4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 1.25,  font_size * 4, font_size * 3, font_size * 2)
				DrawOval( font_size * 2.25,  font_size * 5, font_size * 2, font_size * 2)
			Case 43	'K
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawPoly([ font_size * 2,  font_size * 4,
						font_size * 4,  font_size,
						font_size * 5,  font_size,
						font_size * 2,  font_size * 6])
				DrawPoly([ font_size * 3,  font_size * 4,
						font_size * 5,  font_size * 8,
						font_size * 4,  font_size * 8,
						font_size * 2,  font_size * 4])
			Case 44	'L
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawRect( font_size,  font_size * 7, font_size * 4, font_size)
			Case 45	'M
				DrawRect(0, font_size, font_size, font_size * 7)
				DrawPoly([ font_size * 3,  font_size * 4,
						font_size * 5,  font_size,
						font_size * 6,  font_size,
						font_size * 3,  font_size * 6])
				DrawPoly([ font_size * 3,  font_size * 4,
						font_size,  font_size,
						0, font_size,
						font_size * 3,  font_size * 6])
				DrawRect( font_size * 5,  font_size, font_size, font_size * 7)
			Case 46	'N
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawPoly([ font_size * 4,  font_size * 8,
						font_size,  font_size,
						font_size * 2,  font_size,
						font_size * 5,  font_size * 8])
				DrawRect( font_size * 4,  font_size, font_size, font_size * 7)
			Case 47	'O
				DrawOval( font_size * 0.5,  font_size, font_size * 5, font_size * 7)
				SetColor(0, 0, 0)
				DrawOval( font_size * 1.5,  font_size * 2, font_size * 3, font_size * 5)
			Case 48	'P
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 2,  font_size, font_size * 1.5, font_size * 7)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size,  font_size, font_size * 2.5, font_size)
				DrawRect( font_size,  font_size * 4, font_size * 2.5, font_size)
			Case 49	'Q
				DrawOval( font_size,  font_size, font_size * 4, font_size * 7)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 2, font_size * 2, font_size * 5)
				SetColor(255, 255, 255)
				DrawPoly([ font_size * 2.5,  font_size * 5,
						font_size * 3.5,  font_size * 5,
						font_size * 5.5,  font_size * 8,
						font_size * 4.5,  font_size * 8])
			Case 50	'R
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawOval( font_size * 1.25,  font_size, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 2,  font_size, font_size * 1.5, font_size * 7)
				DrawOval( font_size * 2.25,  font_size * 2, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size,  font_size, font_size * 2.5, font_size)
				DrawRect( font_size,  font_size * 4, font_size * 2.5, font_size)
				DrawPoly([ font_size * 4,  font_size * 8,
						font_size * 2,  font_size * 5,
						font_size * 3,  font_size * 5,
						font_size * 5,  font_size * 8])
			Case 51	'S
				DrawCircle( font_w / 2,  font_size * 3, font_size * 2)
				DrawCircle( font_w / 2,  font_size * 6, font_size * 2)
				SetColor(0, 0, 0)
				DrawPoly([ font_w - font_size * 3,  font_size * 2.5,
						font_w - font_size * 3,  font_size * 4,
						font_w + font_size * 2,  font_size * 6.5,
						font_w + font_size * 2,  font_size * 2.5])
				DrawPoly([ font_w - font_size * 3,  font_size * 6.5,
						font_w - font_size * 3,  font_size * 5,
						0, font_size * 3.9,
						0, font_size * 6.5])
				DrawCircle( font_w / 2,  font_size * 3, font_size)
				DrawCircle( font_w / 2,  font_size * 6, font_size)
			Case 52	'T
				DrawRect( font_size * 2.75,  font_size, font_size, font_size * 7)
				DrawRect( font_size,  font_size, font_size * 4.5, font_size)
			Case 53	'U
				DrawRect( font_size * 4.25,  font_size, font_size, font_size * 5)
				DrawOval( font_size * 1.25,  font_size*4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 1.25,  font_size * 4, font_size * 3, font_size * 2)
				DrawOval( font_size * 2.25,  font_size * 5, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size * 1.25,  font_size, font_size, font_size * 5)
			Case 54	'V
				DrawPoly([ font_size * 3,  font_size * 8,
						font_size * 5,  font_size,
						font_size * 6,  font_size,
						font_size * 4,  font_size * 8])
				DrawPoly([ font_size * 4,  font_size * 8,
						font_size + font_size,  font_size,
						font_size,  font_size,
						font_size * 3,  font_size * 8])
			Case 55	'W
				DrawPoly([ font_size * 1,  font_size * 8,
						font_size * 2.5,  font_size * 4,
						font_size * 3.5,  font_size * 4,
						font_size * 2,  font_size * 8])
				DrawPoly([ font_size * 2,  font_size * 8,
						font_size,  font_size,
						0, font_size,
						font_size * 1,  font_size * 8])
				DrawPoly([ font_size * 5,  font_size * 8,
						font_size * 3.5,  font_size * 4,
						font_size * 2.5,  font_size * 4,
						font_size * 4,  font_size * 8])
				DrawPoly([ font_size * 5,  font_size * 8,
						font_size * 6,  font_size,
						font_size * 5,  font_size,
						font_size * 4,  font_size * 8])
			Case 56	'X
				DrawPoly([ font_size,  font_size * 8,
						font_size * 5,  font_size,
						font_size * 6,  font_size,
						font_size * 2,  font_size * 8])
				DrawPoly([ font_size * 6,  font_size * 8,
						font_size * 2,  font_size,
						font_size,  font_size,
						font_size * 5,  font_size * 8])
			Case 57	'Y
				DrawRect( font_size * 2.5,  font_size * 4, font_size, font_size * 4)
				DrawPoly([ font_size * 3,  font_size * 4,
						font_size * 5,  font_size,
						font_size * 6,  font_size,
						font_size * 3,  font_size * 6])
				DrawPoly([ font_size * 3,  font_size * 4,
						font_size,  font_size,
						0, font_size,
						font_size * 3,  font_size * 6])
			Case 58	'Z
				DrawRect( font_size,  font_size, font_size * 4, font_size)
				DrawPoly([ font_size,  font_size * 8,
						font_size * 5,  font_size,
						font_size * 6,  font_size,
						font_size * 2,  font_size * 8])
				DrawRect( font_size * 2,  font_size * 7, font_size * 4, font_size)
			Case 59	'[
				DrawRect( font_size * 2.25,  font_size * 0.5, font_size * 2, font_size)
				DrawRect( font_size * 2.25,  font_size * 0.5, font_size, font_size * 8)
				DrawRect( font_size * 2.25,  font_size * 7.5, font_size * 2, font_size)
			Case 60	'\
				DrawPoly([ font_size * 6,  font_size * 8,
						font_size * 2,  font_size,
						font_size,  font_size,
						font_size * 5,  font_size * 8])					
			Case 61	']
				DrawRect( font_size * 2.25,  font_size * 0.5, font_size * 2, font_size)
				DrawRect( font_size * 3.25,  font_size * 0.5, font_size, font_size * 8)
				DrawRect( font_size * 2.25,  font_size * 7.5, font_size * 2, font_size)
			Case 62	'^
				DrawPoly([ font_size * 3,  font_size,
						font_size,  font_size * 4,
						font_size * 2,  font_size * 4,
						font_size * 4,  font_size])
				DrawPoly([ font_size * 3,  font_size,
						font_size * 5,  font_size * 4,
						font_size * 6,  font_size * 4,
						font_size * 4,  font_size])
			Case 63	'_
				DrawRect(0, font_size * 7.5, font_w, font_size)
			Case 64	'`
				DrawPoly([ font_size * 3,  font_size,
						font_size * 5,  font_size * 4,
						font_size * 6,  font_size * 4,
						font_size * 4,  font_size])
			Case 65	'a
				DrawOval( font_size * 1,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size * 4,  font_size * 3.5, font_size, font_size * 4.5)
			Case 66	'b
				DrawOval( font_size * 1,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size,  font_size, font_size, font_size * 7)
			Case 67	'c
				DrawOval( font_size * 1,  font_size * 3, font_size * 4, font_size * 5)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 4, font_size * 2, font_size * 3)
				DrawRect( font_size * 3,  font_size * 3, font_size * 2, font_size * 5)
				SetColor(255, 255, 255)
				DrawRect( font_size * 3,  font_size * 3, font_size, font_size)
				DrawRect( font_size * 3,  font_size * 7, font_size, font_size)
			Case 68	'd
				DrawOval( font_size * 1,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size * 4,  font_size, font_size, font_size * 7)
			Case 69	'e
				DrawOval( font_size * 1,  font_size * 3, font_size * 4, font_size * 5)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 4, font_size * 2, font_size * 3)
				DrawRect( font_size * 3,  font_size * 5, font_size * 2, font_size * 3)
				SetColor(255, 255, 255)
				DrawRect( font_size * 2,  font_size * 5, font_size * 3, font_size)
				DrawRect( font_size * 3,  font_size * 7, font_size * 1.5, font_size)
			Case 70	'f
				DrawOval( font_size * 2.5,  font_size, font_size * 3, font_size * 3)
				DrawRect( font_size * 2.5,  font_size * 2, font_size, font_size * 6)
				SetColor(0, 0, 0)
				DrawOval( font_size * 3.5,  font_size * 2, font_size, font_size)
				DrawRect( font_size * 4,  font_size, font_size * 2, font_size * 3)
				DrawRect( font_size * 3.5,  font_size * 2.5, font_size * 2, font_size * 3)
				SetColor(255, 255, 255)
				DrawRect( font_size * 2,  font_size * 3, font_size * 3, font_size)
				DrawRect( font_size * 4,  font_size, font_size, font_size)
			Case 71	'g
				DrawRect( font_size * 4.25,  font_size * 3, font_size, font_size * 5)
				DrawOval( font_size * 1.25,  font_size * 6, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 1.25,  font_size * 6, font_size * 3, font_size * 2)
				DrawOval( font_size * 2.25,  font_size * 7, font_size * 2, font_size * 2)
				DrawRect( font_size * 1.25,  font_size * 7, font_size * 2, font_size * 3)
				SetColor(255, 255, 255)
				DrawOval( font_size * 1.25,  font_size * 3, font_size * 4, font_size * 4)
				DrawRect( font_size * 2.25,  font_size * 9, font_size, font_size)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.25,  font_size * 4, font_size * 2, font_size * 2)
			Case 72	'h
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawRect( font_size * 4,  font_size * 6, font_size, font_size * 2)
				DrawOval( font_size,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				DrawRect( font_size * 2,  font_size * 6, font_size * 2, font_size * 2)
			Case 73	'i
				DrawRect( font_size * 2.75,  font_size * 4, font_size, font_size * 4)
				DrawOval( font_size * 2.75,  font_size, font_size, font_size)
			Case 74	'j
				DrawRect( font_size * 4.25,  font_size * 3, font_size, font_size * 5)
				DrawOval( font_size * 1.25,  font_size * 6, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawRect( font_size * 1.25,  font_size * 6, font_size * 3, font_size * 2)
				DrawOval( font_size * 2.25,  font_size * 7, font_size * 2, font_size * 2)
				DrawRect( font_size * 1.25,  font_size * 7, font_size * 2, font_size * 3)
				SetColor(255, 255, 255)
				DrawRect( font_size * 2.25,  font_size * 9, font_size, font_size)
				DrawOval( font_size * 4.25,  font_size, font_size, font_size)
			Case 75	'k
				DrawRect( font_size,  font_size, font_size, font_size * 7)
				DrawPoly([ font_size * 2,  font_size * 5,
						font_size * 4,  font_size * 3,
						font_size * 5,  font_size * 3,
						font_size * 2,  font_size * 6])
				DrawPoly([ font_size * 3,  font_size * 5,
						font_size * 5,  font_size * 8,
						font_size * 4,  font_size * 8,
						font_size * 2,  font_size * 5])
			Case 76	'l
				DrawRect( font_size * 2.75,  font_size, font_size, font_size * 7)
			Case 77	'm
				DrawRect(0, font_size * 3.75, font_size, font_size * 4.25)
				DrawRect( font_size * 3,  font_size * 6, font_size, font_size * 2)
				DrawRect( font_size * 5.5,  font_size * 6, font_size, font_size * 2)
				DrawOval(0, font_size * 4, font_size * 4, font_size * 4)
				DrawOval( font_size * 3,  font_size * 4, font_size * 3.5, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size,  font_size * 5, font_size * 2, font_size * 2)
				DrawOval( font_size * 4,  font_size * 5, font_size * 1.5, font_size * 2)
				DrawRect( font_size,  font_size * 6, font_size * 2, font_size * 2)
				DrawRect( font_size * 4,  font_size * 6, font_size * 1.5, font_size * 2)
			Case 78	'n
				DrawRect( font_size,  font_size * 3.75, font_size, font_size * 4.25)
				DrawRect( font_size * 4,  font_size * 6, font_size, font_size * 2)
				DrawOval( font_size,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				DrawRect( font_size * 2,  font_size * 6, font_size * 2, font_size * 2)
			Case 79	'o
				DrawOval( font_size,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
			Case 80	'p
				DrawOval( font_size,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size,  font_size * 4, font_size, font_size * 6)
			Case 81	'q
				DrawOval( font_size,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				SetColor(255, 255, 255)
				DrawRect( font_size * 4,  font_size * 4, font_size, font_size * 6)
			Case 82	'r
				DrawRect( font_size,  font_size * 3.75, font_size, font_size * 4.25)
				DrawOval( font_size,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				DrawRect( font_size * 2,  font_size * 6, font_size * 2, font_size * 2)
				DrawRect( font_size * 3.5,  font_size * 4, font_size * 1.5, font_size * 4)
			Case 83	's
				DrawOval( font_size,  font_size * 3, font_size * 4, font_size * 3)
				DrawOval( font_size,  font_size * 5, font_size * 4, font_size * 3)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 4, font_size * 2, font_size)
				DrawOval( font_size * 2,  font_size * 6, font_size * 2, font_size)
				DrawPoly([ font_size * 2.25,  font_size * 4.5,
						font_size * 5.5,  font_size * 3.25,
						font_size * 6,  font_size * 6])
				DrawPoly([ font_size * 3,  font_size * 6.5,
						font_size,  font_size * 5.25,
						font_size,  font_size * 7.5])
			Case 84	't
				DrawOval( font_size * 2.5,  font_size * 5, font_size * 3, font_size * 3)
				DrawRect( font_size * 2.5,  font_size, font_size, font_size * 6)
				SetColor(0, 0, 0)
				DrawOval( font_size * 3.5,  font_size * 6, font_size, font_size)
				DrawRect( font_size * 4,  font_size * 6, font_size * 2, font_size * 3)
				DrawRect( font_size * 3.5,  font_size * 3.5, font_size * 2, font_size * 3)
				SetColor(255, 255, 255)
				DrawRect( font_size * 2,  font_size * 3, font_size * 2.5, font_size)
				DrawRect( font_size * 3.5,  font_size * 7, font_size, font_size)
			Case 85	'u
				DrawRect( font_size,  font_size * 3.75, font_size, font_size * 3)
				DrawRect( font_size * 4,  font_size * 3.75, font_size, font_size * 4.25)
				DrawOval( font_size,  font_size * 4, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2,  font_size * 5, font_size * 2, font_size * 2)
				DrawRect( font_size * 2,  font_size * 4, font_size * 2, font_size * 2)
			Case 86	'v
				DrawPoly([ font_size * 3,  font_size * 8,
						font_size * 5,  font_size * 4,
						font_size * 6,  font_size * 4,
						font_size * 4,  font_size * 8])
				DrawPoly([ font_size * 4,  font_size * 8,
						font_size * 2,  font_size * 4,
						font_size,  font_size * 4,
						font_size * 3,  font_size * 8])
			Case 87	'w
				DrawPoly([ font_size * 1,  font_size * 8,
						font_size * 2.5,  font_size * 4.5,
						font_size * 3.5,  font_size * 4.5,
						font_size * 2,  font_size * 8])
				DrawPoly([ font_size * 2,  font_size * 8,
						font_size,  font_size * 4,
						0, font_size * 4,
						font_size * 1,  font_size * 8])
				DrawPoly([ font_size * 5,  font_size * 8,
						font_size * 3.5,  font_size * 4.5,
						font_size * 2.5,  font_size * 4.5,
						font_size * 4,  font_size * 8])
				DrawPoly([ font_size * 5,  font_size * 8,
						font_size * 6,  font_size * 4,
						font_size * 5,  font_size * 4,
						font_size * 4,  font_size * 8])
			Case 88	'x
				DrawPoly([ font_size * 1.5,  font_size * 8,
						font_size * 4.5,  font_size * 4,
						font_size * 5.5,  font_size * 4,
						font_size * 2.5,  font_size * 8])
				DrawPoly([ font_size * 5.5,  font_size * 8,
						font_size * 2.5,  font_size * 4,
						font_size * 1.5,  font_size * 4,
						font_size * 4.5,  font_size * 8])
			Case 89	'y
				DrawPoly([ font_size * 2.5,  font_size * 10,
						font_size * 4.5,  font_size * 4,
						font_size * 5.5,  font_size * 4,
						font_size * 3.5,  font_size * 10])
				DrawPoly([ font_size * 4.5,  font_size * 7,
						font_size * 2.5,  font_size * 4,
						font_size * 1.5,  font_size * 4,
						font_size * 3.5,  font_size * 7])
			Case 90	'z
				DrawRect( font_size,  font_size * 4, font_size * 4, font_size)
				DrawRect( font_size,  font_size * 7, font_size * 4, font_size)
				DrawPoly([ font_size * 1,  font_size * 7,
						font_size * 4,  font_size * 5,
						font_size * 5,  font_size * 5,
						font_size * 5,  font_size * 5.5,
						font_size * 3,  font_size * 7,
						font_size * 2,  font_size * 7])
			Case 91	'{
				DrawOval( font_size * 2.5,  font_size, font_size * 3, font_size * 3)
				DrawRect( font_size * 2.5,  font_size * 2, font_size, font_size * 6)
				DrawOval( font_size * 2.5,  font_size * 6, font_size * 3, font_size * 3)
				SetColor(0, 0, 0)
				DrawOval( font_size * 3.5,  font_size * 2, font_size, font_size)
				DrawRect( font_size * 4,  font_size, font_size * 2, font_size * 8)
				DrawRect( font_size * 3.5,  font_size * 2.5, font_size * 2, font_size * 5)
				DrawOval( font_size * 3.5,  font_size * 7, font_size, font_size)
				DrawRect( font_size * 3,  font_size * 4.5, font_size, font_size)
				SetColor(255, 255, 255)
				DrawRect( font_size * 1.75,  font_size * 4.5, font_size, font_size)
				DrawOval( font_size * 2.5,  font_size * 4, font_size, font_size)
				DrawOval( font_size * 2.5,  font_size * 5, font_size, font_size)
				SetColor(0, 0, 0)
				DrawOval( font_size * 1.5,  font_size * 4, font_size, font_size)
				DrawOval( font_size * 1.5,  font_size * 5, font_size, font_size)
			Case 92	'|
				DrawRect( font_size * 2.75,  font_size, font_size, font_size * 8)
			Case 93	'}
				DrawOval( font_size * 1.5,  font_size, font_size * 3, font_size * 3)
				DrawRect( font_size * 3.5,  font_size * 2, font_size, font_size * 6)
				DrawOval( font_size * 1.5,  font_size * 6, font_size * 3, font_size * 3)
				SetColor(0, 0, 0)
				DrawOval( font_size * 2.5,  font_size * 2, font_size, font_size)
				DrawOval( font_size * 2.5,  font_size * 7, font_size, font_size)
				DrawRect( font_size * 1,  font_size, font_size * 2, font_size * 8)
				DrawRect( font_size * 1.5,  font_size * 2.5, font_size * 2, font_size * 5)
				DrawRect( font_size * 3,  font_size * 4.5, font_size, font_size)
				SetColor(255, 255, 255)
				DrawOval( font_size * 3.5,  font_size * 4, font_size, font_size)
				DrawOval( font_size * 3.5,  font_size * 5, font_size, font_size)
				DrawRect( font_size * 3.75,  font_size * 4.5, font_size, font_size)
				SetColor(0, 0, 0)
				DrawOval( font_size * 4.5,  font_size * 4, font_size, font_size)
				DrawOval( font_size * 4.5,  font_size * 5, font_size, font_size)
			Case 94	'~
				DrawOval(0, font_size * 4, font_size * 4, font_size * 4)
				DrawOval( font_size * 2,  font_size * 2, font_size * 4, font_size * 4)
				SetColor(0, 0, 0)
				DrawOval( font_size,  font_size * 5, font_size * 2, font_size * 2)
				DrawOval( font_size * 3,  font_size * 3, font_size * 2, font_size * 2)
				DrawRect(0, font_size * 6, font_size * 6, font_size * 2)
				DrawRect(0, font_size * 2, font_size * 6, font_size * 2)
				DrawRect(0, font_size * 4, font_size, font_size * 2)
				DrawRect( font_size * 5,  font_size * 4, font_size, font_size * 2)
				DrawPoly([ font_size * 1.75,  font_size * 4,
						font_size * 4,  font_size * 4,
						font_size * 4,  font_size * 5])
				DrawPoly([ font_size * 2,  font_size * 5,
						font_size * 2,  font_size * 6,
						font_size * 4.25, font_size * 6])
			Default
		End Select
		Local mask:= New Int[font_w * font_h]
		ReadPixels(mask, 0, 0, font_w, font_h)
		For Local i:Int = 0 Until mask.Length
			If mask[i] = $FF000000 Then mask[i] = $00000000
		Next
		font.WritePixels(mask, font_w * chars, 0, font_w, font_h)
	End
	font = font.GrabImage(0, 0, font_w, font_h, 96)
	Return font
End
