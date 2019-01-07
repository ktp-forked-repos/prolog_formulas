:- use_module(library(plunit)).
:-begin_tests(case1).

    
test(wff1,[true]):-
    wff(or(p, q)),
    wff(and(p, q)),
    wff(imp(p, q)),
    wff(or(or(p, q), r)),
    wff(and(p, or(q, r))),
    wff(imp(imp(p, q), r)),
    wff(imp(r, imp(p, q))),
    wff(or(p, neg(p))),
    wff(and(imp(p, q), imp(q, p))),
    wff(imp(imp(p, q), p)),
    wff(and(p, q)),
    wff(or(p, q)),
    wff(or(q, neg(p))),
    wff(or(p, or(q, r))),
    wff(or(and(p, q), and(p, r))),
    wff(and(imp(q, r), or(p, r))),
    wff(imp(and(p, r), q)),
    wff(and(q, neg(q))),
    wff(or(and(p, q), and(neg(p), neg(q)))),
    wff(imp(imp(q, p), q)).
    
    
test(wff2,[fail]):-
    wff(and(q, geoff(or(p, q), neg(p)))),
    wff(and(q, imp(or(p, 14), neg(p)))),
    wff(and(q, imp(or(p, q, r), neg(p)))).
     
test(cls1):-
    cls(or(or(p,q),neg(r))),
    cls(or(p, or(q, neg(r)))).

test(cls2,[fail]):-
    cls(or(or(p, q), neg(neg(r)))),
    cls(or(imp(p, q), neg(r))).

test(ats):-
    ats(and(q, imp(or(p, q), neg(p))), As),
    member(As, [[p,q],[q,p]]).

test(t_value):-
    t_value(p, [p], t),
    t_value(p, [], f),
    t_value(neg(p), [], t),
    t_value(and(q, or(p , neg(r))), [p,q], t),
    t_value(and(q, or(p , neg(r))), [q], t),
    t_value(and(q, or(p , neg(r))), [q], f).


:-end_tests(case1).
 
