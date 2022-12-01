#--// Instructions //--
#Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
# Example
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parentheses!

# create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
# create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

def create_phone_number(numbers)
  p "(" + numbers.first(3).join + ") " + numbers[3..5].join + "-" + + numbers.last(4).join
end

p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])




#--// Solução alheia interessante //--
# def create_phone_number(array)
#   '(%d%d%d) %d%d%d-%d%d%d%d' % array
# end
