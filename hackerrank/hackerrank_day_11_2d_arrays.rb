# --// Instructions //--
# Sample Output
# 19

# Constraints
# -9 <= A[i][j] <= 9; meaning: each array is made up of numbers from -9 to 9
# 0 <= i, j, <= 5 ; meaning: maximum 6 arrays, with max 6 numbers each

# Output Format
# Print the maximum hourglass sum in .

# --// Code //--
# provided by hacker rank:
# ARR = Array.new(6)

# 6.times do |i|
#   # arr[i] = each index of the array
#   ARR[i] = gets.rstrip.split.map(&:to_i)
# end

# ARR = [
#   [1, 1, 1, 0, 0, 0],
#   [0, 1, 0, 0, 0, 0],
#   [1, 1, 1, 0, 0, 0],
#   [0, 0, 2, 4, 4, 0],
#   [0, 0, 0, 2, 0, 0],
#   [0, 0, 1, 2, 4, 0]
# ]

ARR = [
  [-1, -1, 0, -9, -2, -2],
  [-2, -1, -6, -8, -2, -5],
  [-1, -1, -1, -2, -3, -4],
  [-1, -9, -2, -4, -4, -5],
  [-7, -3, -3, -2, -9, -9],
  [-1, -3, -1, -2, -4, -5]
]

@hourglass_sums = []

def hourglass(x, y)
  sum =
    ARR[x][y] + ARR[x][y + 1] + ARR[x][y + 2] +
    ARR[x + 1][y + 1] +
    ARR[x + 2][y] + ARR[x + 2][y + 1] + ARR[x + 2][y + 2]
  @hourglass_sums << sum
end

sample_array = ARR[0].map { |i| i * 1 } # just to create a new array that isn't tied to ARR[0]
sample_array.pop(2)

x = 0
4.times do
  sample_array.each_with_index do |_item, y|
    hourglass(x, y)
  end
  x += 1
end

p @hourglass_sums.max
