%Las parejas de baile se forman segun su compatibilidades de acuerdo a los siguiente:

hombre(alberto, cumbia, salsa).
hombre(jorge, cuarteto, tango).
hombre(fabian, cumbia, rock).
mujer(ana, salsa, merengue).
mujer(florencia, rock, merengue).
mujer(gisella, cumbia, tango).



hombre_1(N,E):-hombre(N,E,_ );hombre(N, _ ,E).
mujer_1(N,E):-mujer(N,E,_);mujer(N,__,E).
pareja(Nh,Nm,E):-hombre_1(Nh,E),mujer_1(Nm,E).