%Una agencia de viajes propone a sus clientes viajes de una o dos semanas a Roma,
%Londres o Túnez.
%El catálogo de la agencia contiene, para cada destino, el precio del transporte (con     independencia de la duración) y el precio de una semana de estancia que varía según el destino y el nivel de comodidad elegidos: hotel, hostal o camping.
%Escribir el conjunto de declaraciones que describen este catálogo (se muestra a continuación).

%Expresar la relación viaje(C,S,H,P) que se interpreta por: el viaje a la ciudad C
%durante S semanas con estancia en H cuesta P pesos.
%Completar con viajeeconomico(C,S,H,P,Pmax) que expresa que el costo P es menor quePmax pesos.

multiplicar(P,X,Y):- P is X*Y.
sumar(S,X,Y):- S is X+Y.
menor(X,Y):- X<Y.
transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).


viaje(C,S,H,P):- transporte(C,PT), alojamiento(C,H,PH), multiplicar(PS,PH,S),sumar(P,PS,PT).
viajeeconomico(C,S,H,P,Pmax):-viaje(C,S,H,P), menor(P,Pmax).