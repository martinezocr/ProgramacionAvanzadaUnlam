%se  describe con el programa Prolog:

hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .

%A partir de estas afirmaciones, formular las reglas generales de:
%
%niño(X,Y)//expresa que X es hijo o hija de Y.
%hijo(X,Y)//expresa que X es un hijo varón de Y.
%hija(x,y)//expresa que X es una hija de Y.
%hermano-o-hermana(X,Y)//expresa que X es hermano o hermana de Y.
%hermano(X,Y)//expresa que X es un hermano de Y.
%hermana(X,Y)//expresa que X es una hermana de Y.
%
%Nota:  Un individuo no puede ser hermano ni  hermana de sí mismo.


niño(X,Y):-( hombre(X);mujer(X)  ), padre(Y,X).
hijo(X,Y):- hombre(X) , padre(Y,X).
hija(X,Y):- mujer(X) , padre(Y,X).
hermano-o-hermana(X,Y):-( hombre(X);mujer(X)),(hombre(Y);mujer(Y)), padre(Px,X),padre(Py,Y), Px=Py,not(X == Y).
hermano(X,Y):-hombre(X),(hombre(Y);mujer(Y)), padre(Px,X),padre(Py,Y), Px=Py,not(X == Y).
hermana(X,Y):-mujer(X),(hombre(Y);mujer(Y)), padre(Px,X),padre(Py,Y), Px=Py,not(X == Y).