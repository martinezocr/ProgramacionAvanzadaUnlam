fibonacci::Int->Int
fibonacci  0 = 0
fibonacci  1 = 1
fibonacci a = a + (a-1) + (a-2)

main = print(fibonacci 3)