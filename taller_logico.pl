
% Ejercicio 2.1
progenitor(jaime, patricia)
progenitor(patricia, jose)
progenitor(ana, jose)
progenitor(jose, clara)
progenitor(jose, tomas)
progenitor(isabel, tomas)

abuelo(X, Y) :- progenitor(X, Z), progenitor(Z, Y).
bisabuelo(X, Y) :- progenitor(X, W), progenitor(W, Z), progenitor(Z, Y).

% Ejercicio 2.2
valioso(oro).
mujer(ana).
tiene(juan, oro).
padre_de(juan, maria).
presta(juan, libro, maria).
presta(juan, lapiz, pedro).
presta(pedro, borrador, juan).

% Ejercicio 2.3
varon(albert).
varon(edward).
mujer(alice).
mujer(victoria).
padres(edward, victoria, albert).
padres(alice, victoria, albert).

hermana_de(X, Y) :- mujer(X), padres(X, M, P), padres(Y, M, P), X \= Y.

% Ejercicio 2.4 - función miembro
miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).

% Ejercicio 2.5 - función inversa
inversa([], []).
inversa([H|T], L) :- inversa(T, L1), append(L1, [H], L).

% Ejercicio 2.6 - longitud de una lista
longitud([], 0).
longitud([_|T], L) :- longitud(T, N), L is N + 1.

% Ejercicio 2.7 - Acontecimientos con fecha
evento(2018, 'El 2018 se dio el Mundial de Rusia').
evento(1969, 'El hombre llegó a la luna').
evento(2020, 'Pandemia mundial de COVID-19').

fecha_evento(Fecha, Evento) :- evento(Fecha, Evento).
