#const house_width=4.
#const house_height=3.
#const perimeter= 2*house_width + 2*(house_height-2).

construction_type(door;wall;floor;bed).

0 {construction(X,Y,CONSTRUCTION_TYPE) : construction_type(CONSTRUCTION_TYPE)} 1 :-
    width(X),
    height(Y).

foundation(X,Y) :- terrain(X,Y,grass).
foundation(X,Y) :- terrain(X,Y,flower).
:- construction(X,Y,CONSTRUCTION_TYPE), not foundation(X,Y).

:- {construction(X,Y,wall)} >= perimeter.