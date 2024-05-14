% Base case: Empty list results in an empty list.
stripNegativesAndZerosDuplicatePositives([], []).

% Case for negative numbers and zero: Skip the element.
stripNegativesAndZerosDuplicatePositives([Head|Tail], Result) :-
    (Head =< 0),
    stripNegativesAndZerosDuplicatePositives(Tail, Result).

% Case for positive numbers: Duplicate the element.
stripNegativesAndZerosDuplicatePositives([Head|Tail], [Head, Head|ResultTail]) :-
    Head > 0,
    stripNegativesAndZerosDuplicatePositives(Tail, ResultTail).
