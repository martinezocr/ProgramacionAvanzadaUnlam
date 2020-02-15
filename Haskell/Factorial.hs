--Implemente una función recursiva para calcular el factorial de un número

	factorial::Int->Int
	factorial 0 = 1
	factorial 1 = 1
	factorial a = a * factorial(a - 1)

	main = print(factorial 5)