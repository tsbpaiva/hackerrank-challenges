#--// Instructions //--
# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

word = "banana"

def duplicate_encode(word)
  word.downcase!
  word.chars.map { |char| word.count(char) > 1 ? ")" : "(" }.join('')
end

# --// Interesting syntax //--
# def duplicate_encode(word)
#   word
#       .downcase
#       .chars
#       .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
#       .join
# end

# --// Tests //--
# p duplicate_encode("din")#,"(((")
# p duplicate_encode("recede")#,"()()()")
# p duplicate_encode("Success")#,")())())","should ignore case")
# p duplicate_encode("(( @")#,"))((")
