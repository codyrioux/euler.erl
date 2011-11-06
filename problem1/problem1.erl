-module(problem1).
-export([start/0]).

start() ->
  lists:sum(lists:filter(fun is_multiple_of_three_or_five/1, lists:seq(1, 999))).
is_multiple_of_three_or_five(X) ->
  (X rem 3 =:= 0) or (X rem 5 =:= 0).
