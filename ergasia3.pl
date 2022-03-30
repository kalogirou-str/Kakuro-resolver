:- use_module(library(clpfd)).

sum_list([],0).
sum_list([Head|Tail], Sum):-
    sum_list(Tail, Sum1),
    Sum is Head+Sum1.


unique([]).
unique([_,[]]).
unique([H|T]):-
    not(member(H,T)),unique(T).

solve(Vars):-
    Vars=[A,B,C,E,F,G,J,K,L,N,O,P],
    line([A,B,C],24), 
    line([B,F,J,N],26),
    line([C,G,K,O],15), 
    line([E,F,G],11),
    line([A,E],17),
    line([J,K,L],22),
    line([N,O,P],14),   
    line([L,P],13),
    writeln(Vars).

line(L,N):-
    L ins 1..9,
    labeling([], L),
    unique(L),
    sum_list(L,N).