# provided by hacker rank
arr = Array.new(6)

6.times do |i|
  # arr[i] = each index of the array
  arr[i] = gets.rstrip.split.map(&:to_i)
end

# p arr = [
#   [0, 0, 1, 2, 4, 0],
#   [0, 0, 0, 2, 0, 0],
#   [0, 0, 2, 4, 4, 0],
#   [0, 1, 0, 0, 0, 0],
#   [1, 1, 1, 0, 0, 0],
#   [0, 1, 0, 0, 0, 0]
# ]

def hourglass()
  hourglass
  x-axis = capture numbers until arr[i][-3]
  y-axis = capture numbers until arr[-3][i]
end


# Sample Input
# cada um desses é um input
# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0

# Sample Output

# 19

# Constraints
# -9 <= A[i][j] <= 9; meaning: números do array ficam entre -9 e 9
# 0 <= i, j, <= 5 ; meaning: maximum 6 arrays, with 6 numbers

# Output Format
# Print the maximum hourglass sum in .
