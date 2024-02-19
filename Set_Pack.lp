s(a,1; a,2; b,3; b,4; c,5; c,6;).

#const n=4.
#const m=2.

{ in(Y) } :- s(X, Y).
:- in(Y), in(Y1), s(X,Y), s(X, Y1), Y != Y1.

total(N) :- N = #count{Y : in(Y), s(X,Y) }.

#maximize {X: total(X)}.

#show total/1.
#show in/1.
