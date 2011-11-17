-module(problem10).
-export([start/0]).
-author("Cody Rioux").

start() ->
  StartTime = timestamp(),
  io:format("Solution: ~p ~n", [lists:sum(sieve(lists:seq(2, 1999999)))]),
  EndTime =  timestamp(),
  io:format("Time: ~w seconds.~n", [EndTime - StartTime]).

timestamp() ->
  {_, S, _} = now(),
  S.

sieve([H|T]) ->
  if H * H > 1999999 ->
      [H] ++ T;
    true ->
      [H] ++ sieve(mark(H, T))
  end.

mark(X, List) ->
  lists:filter(fun(Y) -> (Y rem X =/= 0) end, List).
