%% formulas

%% T1
wff(F):-
  ground(F),
  w(F).

w(A):-
  logical_atom(A).
w(and(A,B)):-
  w(A), w(B).
w(or(A,B)):-
  w(A), w(B).
w(neg(A)):-
  w(A).
w(imp(A,B)):-
  w(A), w(B).
  
logical_atom(A):-
  atom(A),
  atom_codes(A, [H| _]),
  H >= 97,
  H =< 122.
