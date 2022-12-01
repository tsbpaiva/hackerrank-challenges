#--// Instructions //--
#https://www.codewars.com/kata/568dc014440f03b13900001d/train/ruby

# matches = {
#   'jabroni':	'Patron Tequila',
#   'school counselor':	'Anything with Alcohol',
#   'programmer':	'Hipster Craft Beer',
#   'bike gang member':	'Moonshine',
#   'politician':	'Your tax dollars',
#   'Rapper':	'Cristal'
# }

def get_drink_by_profession(param)
  param.downcase!
  case
  when param == 'jabroni' then  return	'Patron Tequila'
  when param == 'school counselor' then return	'Anything with Alcohol'
  when param == 'programmer' then return	'Hipster Craft Beer'
  when param == 'bike gang member' then return 'Moonshine'
  when param == 'politician' then return	'Your tax dollars'
  when param == 'rapper'then return	'Cristal'
  else return 'Beer'
  end
end

p get_drink_by_profession("Rapper")
