married(peter, mary).
married(lilly, joseph).
ownsPet(peter, rover).
ownsPet(mary, fluffy).
ownsPet(joseph, tweety).
ownsPet(lilly, fluffy).



household(X, Y) :- married(X, Y).
household(X, Y) :- married(Y, X).


householdPet(O1, O2, P) :- ownsPet(O1, P), household(O1, O2).
householdPet(O1, O2, P) :- ownsPet(O2, P), household(O1, O2).

% wanderingPet(P) :- householdPet(O1, O2, P), householdPet(O3, O4, P),
% wanderingPet(P) :- householdPet(O1, O2, P), householdPet(O3, O4, P),
wanderingPet(P) :- householdPet(O1, O2, P), householdPet(O3, _, P), \+(O1 = O3), \+(O2 = O3).
%?- household(peter,mary).
% true .
% ?- household(lilly, joseph). true
% ?- household(peter,lilly).
% false.
% ?- householdPet(peter, mary, rover).
% true
% ?- householdPet(mary, peter, rover).
% true.
% ?- wanderingPet(fluffy).
% true .
% ?- wanderingPet(tweety).
% false.
% ?- wanderingPet(rover).
% false.
% Task 1 ------------------------The End -----------------------Task 1


% Task 2

addPositives([], 0).
addPositives([H|T], Sum) :-
    H =< 0,
    addPositives(T, Sum).
addPositives([H|T], Sum) :-
    H > 0,
    addPositives(T, Rest),
    Sum is H + Rest.
% ?-  addPositives([], X).
% X = 0.
% ?- addPositives([-1, -5, 0], X).
% X = 0 .

% ?- addPositives([-1, -5, 0, 2, -5, 1], X).
% X = 3 .

% ?- addPositives([-1, -5, 0, 2, 5, 1], X).
% X = 8 .

% ?- addPositives([-1, -2, -3], X).
% X = 0

% --------------------------Task 2- The End--------------------------

% Task 3

getEverySecondValue([], []).
getEverySecondValue([_], []).
getEverySecondValue([_, Second|Tail], [Second|Result]) :-
    getEverySecondValue(Tail, Result).

% ?- getEverySecondValue([a, b, c], X).
% X = [b] .

% ?- getEverySecondValue([a, b, c, d, e], X).
% X = [b, d]
