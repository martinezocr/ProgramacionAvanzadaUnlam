fibonacci(0,0):-!.
fibonacci(1,1):-!.
fibonacci(X,Y):- A is X-1, B is X-2,fibonacci(A,Y1),fibonacci(B,Y2), Y is Y1+Y2.