An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.


def is_isogram(string)
  string1 = string.chars.:unique
  if string1.length == string.length
    puts "is isogram"
  else
    puts "is not"
  end
end
