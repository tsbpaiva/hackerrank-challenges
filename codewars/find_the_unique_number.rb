# --// Instructions //--
# There is an array with some numbers. All numbers are equal except for one. Try to find it!
# It’s guaranteed that array contains at least 3 numbers.
# The tests contain some very huge arrays, so think about performance.


  def find_uniq(arr)
    arr.uniq.each { |item| return item if arr.count(item) == 1 }
  end

# --// Tests //--
p find_uniq([1,1,1,1,0]) #expected 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) #expected 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) #expected 0.55

# --// Solução pra Ruby 3.0+ //--
# def find_uniq(arr)
#   res = arr.tally.select { |key, value| value == 1}
#   return res.keys.join
# end


# --// Solução lenta demais //--
# def find_uniq(arr)
#   arr.find{ |e| arr.count(e) == 1 }
# end
