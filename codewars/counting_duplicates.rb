def duplicate_count(my_string)
  comparative_hash = my_string.downcase.split("").sort.tally
  repeat_letters = Array.new()
  comparative_hash.each { |key, value|
    if value != 1
      repeat_letters.push(key)
    end
  }
p repeat_letters.length
end
