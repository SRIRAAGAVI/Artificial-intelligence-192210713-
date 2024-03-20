hanoi(1, Source, Target) :-
    write('Move top disk from '),
    write(Source),
    write(' to '),
    write(Target),
    nl.
hanoi(N, Source, Target) :-
    N > 1,
    Spare = [a, b, c],   % List of possible auxiliary pegs
    select(Source, Spare, Rest), % Select an auxiliary peg (not Source or Target)
    select(Target, Rest, [_]), % Select another auxiliary peg (not Source or Target)
     M is N - 1,
    hanoi(M, Source, Rest),     % Move N-1 disks from Source to Rest
    hanoi(1, Source, Target),  % Move the bottom disk from Source to Target
    hanoi(M, Rest, Target).    % Move N-1 disks from Rest to Target
