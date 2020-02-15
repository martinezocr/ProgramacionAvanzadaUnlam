--Definir una función maxDeTres que devuelve el máximo de sus argumentos enteros

	maxDeTres:: Int-> Int -> Int ->Int
	maxDeTres a b c
	  |a >= b && a >= c = a
	  |b >= a && b >= c = b
	  |otherwise = c

	main  = print(maxDeTres 1500 1500 1800) 