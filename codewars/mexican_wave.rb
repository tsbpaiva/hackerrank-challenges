# --// Instructions //--
# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
# Rules
#  1.  The input string will always be lower case but maybe empty.

#  2.  If the character in the string is whitespace then pass over it as if it was an empty seat
# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/ruby

def wave(str)
end

str = "hello"
all_strings = []
for i in 1..str.length
  all_strings << str
end
p all_strings


# p wave("hello")
# p "["Hello", "hEllo", "heLlo", "helLo", "hellO"]"

# p wave("codewars")
# p "["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]"

# p wave("")
# p "[]"

# p wave("two words")
# p "["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]"

# p wave(" gap ")
# p "[" Gap ", " gAp ", " gaP "]"
