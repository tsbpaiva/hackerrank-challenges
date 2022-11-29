people = gets.chomp.to_i
phone_book = {}

people.times do
  input = gets.chomp.split(' ')
  phone_book[input[0]] = input[1]
end

loop do
query = gets.chomp
break if query.empty?

phone_book[query] ? result = "#{query}=#{phone_book[query]}" : result = 'Not found'
puts result

rescue
  break
end

# query = gets.chomp

# until query.empty?
#   phone_book[query] ? result = "#{query} = #{phone_book[query]}" : result = 'Not found'
#   puts result
#   query = gets.chomp
# end



# phone_book.each do
#   query = gets.chomp
#   break if query.empty?

#   result = phone_book.select { |entry| entry.include?(query.chomp) }
#   if result.empty?
#     puts 'Not found'
#   else
#     puts result.join('=')
#   end
# end

# query = gets.chomp
# until query.empty?
#   result = phone_book.select { |entry| entry.include?(query) }
#   if result.empty?
#     puts 'Not found'
#   else
#     puts result.join('=')
#   end
#   query = gets.chomp
# end


# Solução 1
# book = {}
# gets
# until (query = gets).nil?
#   name, number = query.chomp.split(/ /)
#   if number
#     book[name] = number
#   else
#     (number = book[name]) ? puts("#{name}=#{number}") : puts("Not found")
#   end
# end


# solução 2
# n = gets.to_i

# contact_array = []

# n.times do
# entry = gets.chomp
# contact_array << entry.split(" ")
# end

# contact_hash = contact_array.to_h

# loop do

# query = gets.chomp

# if contact_hash.has_key?(query) ?
#     puts "#{query}=#{contact_hash[query]}"
# else
#     puts "Not found"
# end

# rescue
#     break
# end
