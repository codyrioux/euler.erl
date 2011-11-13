-module(problem10).
-export([start/0]).

start() ->
  lists:sum(sieve(lists:seq(2, 1999999))).

sieve([H|T]) ->
  if H * H > 1999999 ->
      [H] ++ T;
    true ->
      [H] ++ sieve(mark(H, T))
  end.

mark(X, List) ->
  lists:filter(fun(Y) -> (Y rem X =/= 0) end, List).
