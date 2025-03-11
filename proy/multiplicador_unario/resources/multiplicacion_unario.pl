% Conversión entre número unario y número natural
unario_a_nat(1,0).
unario_a_nat(Num, N):-
    atom_chars(Num, Digits),
    length(Digits, Len),
    N is Len - 1.

nat_a_unario(0,1).
nat_a_unario(N,Num):-
    N > 0,
    Len is N + 1,
    length(Digits, Len),
    maplist(=('1'), Digits),
    atom_chars(Num, Digits).

% Multiplicación en unario
multiplicar_unario(X, Y, Resultado):-
    unario_a_nat(X, NX),
    unario_a_nat(Y, NY),
    NR is NX * NY,
    nat_a_unario(NR, Resultado).

?multiplicar_unario(1111,11111,R).