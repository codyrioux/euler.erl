-module(problem2).
-export([start/0]).

start() ->
  lists:sum(lists:filter(fun is_even/1, fibonacci(0, 1))).

is_even(X) ->
  (X rem 2 =:= 0).

fibonacci(X, Y) ->
  (if
    (X + Y < 4000000) -> (fibonacci(Y, X + Y) ++ [X + Y]);
    true -> ([X + Y])
  end).
