#--// Instructions
#Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
# Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
# If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.


#--// Pseudocode
#split CHECK
#identify the numbers in each word from the letters CHECK
#push word to hash using the number as key (word as value) CHECK
#turn hash back into string; CHECK
#if input string empty, return empty string (return input?)

def order(words)
  if words.empty?
    p ""
  else
    split_words = words.split #now we have an array
    # p split_words >>> ["is2", "Thi1s", "T4est", "3a"]
    reordered_hash = {} #creating a hash to be populated later by reordered words from split_words
    split_words.each do |word|
      word.chars do |char|
        if char.to_i != 0
          reordered_hash[char] = word
        end
      end
    end
    reordered_hash = reordered_hash.sort.to_h #sorting hash by key
    new_string = "" #creating a string where we'll gather all the values from the reordered_hash
    reordered_hash.each_value {|value| new_string.concat(value + " ")}
    output = new_string.chop
    p output
  end
end


order("")
  order("is2 Thi1s T4est 3a")
  order("4of Fo1r pe6ople g3ood th5e the2")
