-- Dado dos números enteros A y B, implemente una función que retorne la división entera de ambos  por el método de las restas sucesivas 

	divPorRestas::(Integral a )=> a -> a ->a
	divPorRestas n d
	|n > d = 1 + divPorRestas(n - d) d
	|otherwise = 0

	main = print(divPorRestas 9 3)