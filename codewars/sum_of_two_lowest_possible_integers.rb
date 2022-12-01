# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

def sum_two_smallest_numbers(numbers)
  arr_sorted = numbers.sort
  sum = arr_sorted[0] + arr_sorted[1]
  p sum
end

num_arr = [9, 8, 2, 2]

sum_two_smallest_numbers(num_arr)
