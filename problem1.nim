# If we list all the natural numbers below 10
# that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

proc test(num: int, sum: int): int =
  if num > 999:
    result = sum
  else:
    if num %% 3 == 0 or num %% 5 == 0:
      result = test(num + 1, sum + num)
    else:
      result = test(num + 1, sum)

proc run*(): int =
  result = test(1, 0)
