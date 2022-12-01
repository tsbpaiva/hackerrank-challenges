#
# Complete the 'getSearchResults' function below.
#
# The function is expected to return a 2D_STRING_ARRAY.
# The function accepts following parameters:
#  1. STRING_ARRAY words
#  2. STRING_ARRAY queries
#

def getSearchResults(words, queries)
  # Write your code here
  output = []
  anagrs = []
  queries.each do |query|
    anagrs = []
    words.each do |word|
      anagrs << word if word.chars.sort == query.chars.sort
    end
    output << anagrs.sort
  end
  output
end

words = ["allot", "cat", "act", "peach", "peahc", "dusty"]
queries = ["tac", "study", "cheap"]
# expected output: [["speed"], ["duel", "dule"]]
p getSearchResults(words, queries)
