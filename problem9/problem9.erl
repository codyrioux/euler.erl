-module(problem9).
-export([start/0]).

start() ->
  find_answer(1,1).

find_answer(A, B) ->
  if A * A + B * B =:= (1000 - A - B) * (1000 - A - B) ->
      A *  B * (1000 - A - B);
    B < 500 ->
      find_answer(A, B + 1);
    A < 500 ->
      find_answer(A + 1, 1);
    true ->
      io:format("Could not find an answer.~n")
  end.
