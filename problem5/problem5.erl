-module(problem5).
-export([start/0]).

start() ->
  find_smallest_divisible_by_one_to_y(2520, 20).

find_smallest_divisible_by_one_to_y(X, Y) ->
  Answer = divisible_by_one_to_y(X, Y),
  if Answer ->
      X;
    true ->
      find_smallest_divisible_by_one_to_y(X + 1, Y)
  end.

divisible_by_one_to_y(X, Y) when X >= 1 ->
  if Y =:= 0 ->
      true;
    X rem Y =:= 0 ->
      divisible_by_one_to_y(X, Y - 1);
    true ->
      false
  end.
