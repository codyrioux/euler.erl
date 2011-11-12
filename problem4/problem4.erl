-module(problem4).
-export([start/0]).

start() ->
  find_answer(999).

find_answer(X) when X >= 100 ->
  Answer = is_product_of_two_three_digit_numbers(build_palindrome(X), 999),
  if Answer ->
      (X);
    true ->
      find_answer(X - 1)
  end;
find_answer(_X) -> false.


build_palindrome(X) ->
  (list_to_integer(integer_to_list(X) ++ lists:reverse(integer_to_list(X)))).

is_product_of_two_three_digit_numbers(X, Y) when (Y >= 100), (Y =< 999) ->
  if (X rem Y =:= 0) ->
      is_three_digits(X div Y);
    true ->
      is_product_of_two_three_digit_numbers(X, Y - 1)
  end;
is_product_of_two_three_digit_numbers(_X, Y) when (Y < 100) -> false.

is_three_digits(X) ->
  ((X >= 100) and (X =< 999)).
