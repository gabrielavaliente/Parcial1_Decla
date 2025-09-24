personajes(shrek).
personajes(lord_farquaad);
personajes(enanos).
personajes(hadas).
personajes(osos).
personajes(munnecos_gengibre).
personajes(burro).
personajes(fiona).
personajes(dragon).
personajes(lobos).

vive_en(shrek,pantano).
vive_en(lord_farquaad,reino).
vive_en(fiona,castillo).
vive_en(enanos,pantano).
vive_en(hadas,pantano).
vive_en(osos,pantano).
vive_en(lobos,pantano).
vive_en(enanos,pantano).
vive_en(munecos_gengibre, pantano).
vive_en(burro,pantano).

amigo(shrek,burro).
amigo(shrek,fiona).
amigo(burro,fiona).

rescata(shrek,fiona).

desea(lord_farquaad,casarse).
desea(lord_farquaad,convertirse_rey).
desea(shrek,vivir_paz).

transforma_en(fiona,ogra).

valiente(shrek).

feroz(shrek).
feroz(dragon).

amigos_shrek :-
    (amigo(X, shrek); amigo(shrek, X)),
    write(X), write(" es amigo de shrek"),nl,fail.

    amigos_shrek.

son_valientes :- 
    valiente(X), 
    write(X), write( " es valiente"), nl, fail.
    son_valientes.

expulsados :- 
    vive_en(X, pantano) , (X \= shrek, X\=burro), 
    write(X), write(" fue expulsado del pantano"), nl , fail.
expulsados.

casarse_fiona :- 
    desea(X, casarse), X=lord_farquaad,
    write(X), write(" desea casarse con fiona").

% consultas
% ?- vive_en(Quien, pantano).
% ?- amigos_shrek.
% ?- casarse_fiona.
% ?- rescata(shrek, fiona).
% ?- transforma_en(Quien,_).
% ?- son_valientes.
% ?- feroz(Quien).
% ?- expulsado.

