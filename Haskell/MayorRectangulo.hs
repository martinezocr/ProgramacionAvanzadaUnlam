--las dimensiones de un rectangulo puede representarse por pares: por ejempl (5,3) representa un rectangulo de base 5 y altura 3.
--Defina la funcion mayorRectangulo tal que ( mayorRectangulo r1 r2) es ek rectaangulo de mayor area.
--Ejemplo mayorRectangulo (1,2) (1,3) == (1,3)


	mayorRec::(Integral a)=>(a,a)->(a,a)->(a,a)
	mayorRec (a,b) (c,d)
		|a*b > c*d = (a,b)
		|a*b < c*d = (c,d)
		|otherwise = (a,b)

	main =  print(mayorRec (1,2) (3,4))