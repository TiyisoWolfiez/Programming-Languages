doubleNonMatching([],_,[]).
doubleNonMatching([H1|T1], X, [H2|T2]) :-
    (   H1 = X ->
        H2 is H1,
        doubleNonMatching(T1,X,T2)
      ; H2 is H1 * 2,
        doubleNonMatching(T1,X,T2)
    ).
