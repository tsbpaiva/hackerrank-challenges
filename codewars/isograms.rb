# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

def is_isogram(string)
  string.downcase.chars.uniq.length == string.length
end

# --// Tests //--
# p is_isogram("Dermatoglyphics") # true
# p is_isogram("isogram") # true
# p is_isogram("aba") # false, "same chars may not be adjacent"
# p is_isogram("moOse") # false, "same chars may not be same case"
# p is_isogram("isIsogram") # false
# p is_isogram("") # true, "an empty string is a valid isogram"
