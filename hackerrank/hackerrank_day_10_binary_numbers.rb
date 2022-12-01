
# n = 149
# 149/2 = 74, remainder 1
# 74 / 2 = 37, remainder 0
# 37 / 2 = 18, remainder 1
# 18/2 = 9, remainder 0
# 9/2 = 4, remainder 1
# 4/2 = 2, remainder 0
# 2/2 = 1, remainder 0
# 1

# 149(10) = 10010101(2)

# The unsigned binary representation of decimal 149, with the MSB highlighted. The MSB represents a value of 128.
# 10010101 (o primeiro (index 0) é p MSB, o último (index 7) é o LSB)

n = gets.strip.to_i

decimal = n.to_s(2)
counter = 0
max = 0

decimal.chars.each do |char|
  if char == '1'
    counter += 1
    max = counter if counter > max
  else
    counter = 0
  end
end
puts max
