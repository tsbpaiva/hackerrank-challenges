#--// Instructions // --
# Write a function named first_non_repeating_letter that takes a string input, and returns the first character that is not repeated anywhere in the string.
# For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.
# As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.
# If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

# --// Testing // --
# describe('Simple Tests') do
#     it('should handle simple tests') do
#       Test.assert_equals(first_non_repeating_letter('a'), 'a')
#       Test.assert_equals(first_non_repeating_letter('stress'), 't')
#       Test.assert_equals(first_non_repeating_letter('moonmen'), 'e')
#     end
#     it('should handle empty strings') do
#       Test.assert_equals(first_non_repeating_letter(''), '')
#     end
#   end



def first_non_repeating_letter(str)
  str.split("").find { |e| (str.downcase.count(e) == 1) || (str.upcase.count(e) == 1)} || ""
end


# solução do marcel
# def  first_non_repeating_letter(s)
#   return "" if s.empty?

#   s_hash = Hash.new(0)
#   s.split('').each do |char|
#     if s.downcase.count(char.downcase) == 1
#       s_hash[char] += 1
#     end
#   end
#   return "" if s_hash.first == nil
#   s_hash.first[0]
# end


p first_non_repeating_letter("sTress") #expected: 'T'
p first_non_repeating_letter("stress") #expected: 't'
p first_non_repeating_letter("a") #expected: 'a'
p first_non_repeating_letter("moonmen") #expected: 'e'
p first_non_repeating_letter("abba") #expected: ""
p first_non_repeating_letter("")
