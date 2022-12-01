def spin_words(str)
  str.split(" ").map do |word|
    if word.length >= 5
      if word.chars.last.match?(/[^a-z]/)
        word
      else
        word.reverse
      end
    else
      word
    end
  end.join(' ')
end


p spin_words("Change your life, learn to code") #
