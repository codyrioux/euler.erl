-module(problem7).
-export([start/0]).

start() ->
  find_xth_prime(10001).

find_xth_prime(X) ->
  find_xth_prime(X, 2, 1).

find_xth_prime(X, CurrentVal, PrimeCount) ->
  IsPrime = is_prime(CurrentVal),
  if IsPrime, PrimeCount + 1 =:= X ->
      {CurrentVal, PrimeCount};
    IsPrime, PrimeCount < X ->
      find_xth_prime(X, CurrentVal + 1, PrimeCount + 1);
    true ->
      find_xth_prime(X, CurrentVal + 1, PrimeCount)
  end.

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
