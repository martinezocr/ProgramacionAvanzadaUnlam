--Definir una función menor que devuelve el menor de sus dos argumentos enteros.
	
	menor:: Int->Int->Int
	menor a b
	  |a < b = a
	  |otherwise = b

	main  = print(menor 1500 1001) 