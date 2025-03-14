% Casos Base.
unary_to_binary([], _) :-
    throw(error(Error, 'Debe ingresar un valor')).
unary_to_binary([1], [0]).
unary_to_binary([1, 1], [1]).


unary_to_binary(Unary, Binary) :-
    unary_to_binary_helper(Unary, PartialBinary),
    reverse(PartialBinary, Binary).

% Convierte a binario sin invertir
unary_to_binary_helper([], [0]).
unary_to_binary_helper([1], [0]). 
unary_to_binary_helper([1,1], [1]). 
unary_to_binary_helper([1|X], A) :-
    unary_to_binary_helper(X, B),
    increment_binary(B, A).

increment_binary([], [1]).  % Si la lista es vacia devuelve 1
increment_binary([0|X], [1|X]).  % Si el primero digito es 0 convierte a 1 y deja el resto
increment_binary([1|X], [0|A]) :- increment_binary(X, A).  % Si es 1 pasa al siguiente 1

% Ejemplos 
% unary_to_binary([1, 1, 1], X).
% X = [1, 0].

%unary_to_binary([1, 1, 1, 1, 1], X).
% X = [1, 0, 0].

%unary_to_binary([1, 1, 1, 1, 1, 1], X).
% X = [1, 0, 1].

%unary_to_binary([1, 1, 1, 1, 1, 1, 1], X).
% X = [1, 1, 0].