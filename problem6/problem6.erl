-module(problem6).
-export([start/0]).

start() ->
  io:format("Problem Six~n"),
  List = lists:seq(1, 100),
  Answer = square_of_sums(List) - sum_of_squares(List),
  io:format("Answer: ~p~n", [Answer]).

sum_of_squares(X) ->
  lists:sum(lists:map(fun(Y) -> Y * Y end, X)).

square_of_sums(X) ->
  lists:sum(X) * lists:sum(X).
