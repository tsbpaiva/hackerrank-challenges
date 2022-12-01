# --// Instructions //--
# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

#   Example: (Input --> Output)

#   "Dermatoglyphics" --> true "aba" --> false "moOse" --> false (ignore letter case)

# --// Tests //--



def is_isogram(string)
  return true if string == ""
  string.chars.length == string.downcase.chars.uniq.length
end

p is_isogram("Dermatoglyphics")
p is_isogram("isogram")
p is_isogram("aba")
p is_isogram("moOse")
p is_isogram("isIsogram")
p is_isogram("")
