--Componentes de un vector al cuadrado

	vectorCuadrado:: [Int]->[Int]
	vectorCuadrado []=[]
	vectorCuadrado [x] = [x*x]
	vectorCuadrado (x:xs) =(x*x):(vectorCuadrado xs)

	main = print(vectorCuadrado [1,2])