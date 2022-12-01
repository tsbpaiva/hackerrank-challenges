# def is_isogram(string)
#   string3 = string.downcase.chars
#   string1 = string3.uniq
#   string2 = string.downcase.chars

#   if string1.length == string2.length
#     puts "is isogram"
#   else
#     puts "is not"
#   end
# end



# # is_isogram("Dermatoglyphics" ) #== true
# # is_isogram("aba" ) #== false
# is_isogram("moOse" ) #== fals




# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

#   Sample tests
#   to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"

#   to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"
