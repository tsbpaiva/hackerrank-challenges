def find_it(seq)
  count_hash = Hash.new(0)
  seq.each do |num|
    count_hash[num] += 1
  end
  count_hash.each do |key,value|
    if value % 2 != 0
      return key
    end
  end
end
