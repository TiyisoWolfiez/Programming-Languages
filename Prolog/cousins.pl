% Question 3:

father(joe, jane).
father(joe, dan).
father(bill, ted).
father(dan, alice).
mother(mary, jane).
mother(mary, dan).
mother(jane, ted).
mother(linda, alice).

parent(Parent, Child) :- father(Parent, Child).
parent(Parent, Child) :- mother(Parent, Child).

sibling(Person1, Person2) :- parent(Parent, Person1), parent(Parent, Person2), Person1 \= Person2.

% Define Cousin:
cousin(X,Y) :- parent(ParentX, X),parent(ParentY, Y), sibling(ParentX, ParentY).



% Question 4:
%

sumNonNegativeValues([],0).

sumNonNegativeValues([Head|Tail], X) :-
    Head >= 0,
    sumNonNegativeValues(Tail, Tailsum),
    X is Head + Tailsum.

sumNonNegativeValues([Head|Tail], X) :-
    Head < 0,
    sumNonNegativeValues(Tail, X).


% Task 1:
married(peter, mary).
married(lilly, joseph).
ownsPet(peter, rover).
ownsPet(mary, fluffy).
ownsPet(joseph, tweety).
ownsPet(lilly, fluffy).

household(X, Y) :- married(X, Y).
household(X,Y) :- married(Y, X).

householdPet(O1, O2, P) :- ownsPet(O1, P), household(O1, O2).
householdPet(O1, O2, P) :- ownsPet(O2, P), household(O2, O1).

wanderingPet(P) :- householdPet(O1,O2,P),householdPet(O3,_,P), \+(O1 = O3),\+(O2 = O3).
