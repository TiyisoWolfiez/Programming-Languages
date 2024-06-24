stripOccurrences(_, [], []).  % Base case: Strip nothing from an empty list gives an empty list

stripOccurrences(X, [X|Rest], Result) :-
    !,                        % Cut to prevent unnecessary backtracking
    stripOccurrences(X, Rest, Result).  % Skip X and continue with the rest of the list

stripOccurrences(X, [Y|Rest1], [Y|Rest2]) :-
    Y \= X,                   % Y is not X, keep Y in the result
    stripOccurrences(X, Rest1, Rest2).  % Recurse on the rest of the list
