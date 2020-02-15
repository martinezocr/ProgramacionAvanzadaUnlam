-- Escribir una función para hallar la potencia de un número.
	
	potencia :: Int -> Int -> Int
	potencia x 0 = 1
	potencia x 1 = x
	potencia 0 y = 0
	potencia x y = x * potencia x (y - 1)

	main = print (potencia 2 3)