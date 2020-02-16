% 1. Las siguientes clausulas corresponden al programa “menú” de un restaurante. El
% restaurante ofrece menús completos compuestos por una entrada, un plato principal y un
% postre. El plato principal puede ser carne o pescado.

%clauses

entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

%fin clauses

%Implementar las reglas necesarias para formular las siguientes consultas en Prolog:
%a) Cuáles son los menús que ofrece el restaurante?
%b) Cuáles son los menús que tienen Consomé en las entradas?
%c) Cuáles son los menús que no contienen flan como postre?

%a- 
	menu(X,Y,Z):-entrada(X),(carne(Y);pescado(Y)),postre(Z).

%b-
	menu(X,Y,Z):-entrada(X),X=consomé,(carne(Y);pescado(Y)),postre(Z).
	
%c-
	menu(X,Y,Z):-entrada(X),(carne(Y);pescado(Y)),postre(Z), Z=flan.