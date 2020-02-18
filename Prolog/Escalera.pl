%dar cantidad N de maneras de subir una escalera, siendo que puede subirse
%de 1,2 y 3 escalones

escalera(0,1):-!.
escalera(1,1):-!.
escalera(2,2):-!.
escalera(X,Y):-A is (X-1),B is (X-2),C is (X-3),escalera(A,A1),escalera(B,B1),escalera(C,C1),Y is (A1+B1+C1).