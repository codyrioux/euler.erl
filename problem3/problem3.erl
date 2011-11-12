-module(problem3).
-export([start/0]).

start() ->
  lists:filter(fun is_prime/1, potential_prime_factors(600851475143)).

potential_prime_factors(X) ->
  lists:filter(fun(Y) -> (X rem Y =:= 0) end, lists:seq(2, round(math:sqrt(X)))).

is_prime(X) -> is_prime(X, 2).
is_prime(X, Divisor) -> 
  (if
    (X rem Divisor =:= 0) ->
      false;
   (Divisor >= X div 2) ->
     true;
   true ->
      is_prime(X, Divisor + 1)
 end).
