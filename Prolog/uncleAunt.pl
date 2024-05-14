father(bill, jake).
father(bill, shelley).
father(jake, ted).
father(ron, liz).
mother(mary, jake).
mother(mary, shelley).
mother(janet, ted).
mother(shelley, liz).

uncleAunt(X, Y) :- (father(F, Y); mother(M, Y)), (father(F,X); mother(M,X)), X \= Y.

% Predicate to check if two individuals are siblings
sibling(X, Y) :-
    father(F, X), father(F, Y), X \= Y;
    mother(M, X), mother(M, Y), X \= Y.

% Predicate to check if two individuals are cousins
cousin(X, Y) :-
    parent(PX, X), parent(PY, Y),
    sibling(PX, PY), X \= Y.
