def basic_op(operator, value1, value2)
  case operator
  when '+'
    value1 + value2
  when '-'
    value1 - value2
  when '*'
    value1 * value2
  when '/'
    value1 / value2
  end
end


#--// Tests //--
p basic_op('+', 4, 7) #, 11)
p basic_op('-', 15, 18) #, -3)
p basic_op('*', 5, 5) #, 25)
p basic_op('/', 49, 7) #, 7)
