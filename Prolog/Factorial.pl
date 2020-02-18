factorial(0,1):-!.
factorial(1,1):-!.
factorial(X,Y):- A is X-1, factorial(A,Y1), Y is X*Y1.