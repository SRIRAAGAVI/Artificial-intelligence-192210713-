bird(penguin,false).
bird(eagle,true).
bird(ostrich,false).
bird(crow,true).
can_fly(Bird):-
  bird(Bird,true),
  write(Bird),
  write(' can fly.'),
  nl. 
can_fly(Bird):-
   bird(Bird,false),
   write(Bird),
   write(' cannot fly'),
   nl.
  