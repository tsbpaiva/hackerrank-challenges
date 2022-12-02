file_data = File.open('./input.txt').readlines.map{ _1.chomp.split(' ')}
                                                  # _1 = |element| element

# for part 1 only
def jokenpo(player_choice)
  case player_choice
  when 'A', 'X' # rock
    1
  when 'B', 'Y' # paper
    2
  when 'C', 'Z' #scissors
    3
  end
end

# for part 2 only
def strategy(oponent_choice, your_goal)
  case your_goal
  when 'X' # losing scenarios
    if oponent_choice == 1 # rock
      3 # scissors
    elsif oponent_choice == 2 # paper
      1 # rock
    else # scissors
      2
    end
  when 'Y' # tie
    oponent_choice
  when 'Z' #win
    if oponent_choice == 1 # rock
      2 # paper
    elsif oponent_choice == 2 # paper
      3 # scissors
    else # scissors
      1
    end
  end
end

def won_or_lost(match)
  oponent = match[0]
  you = match[1]
  (oponent == 3 && you == 1) || (oponent == 2 && you == 3) || (oponent == 1 && you == 2) ? 6 : 0
end

def tie?(match)
  match[0] == match[1]
end

# part 1
# your_score = 0
# file_data.each do
#   oponent_choice = jokenpo(_1[0])
#   your_choice = jokenpo(_1[1])
#   your_score += your_choice

#   if tie?([oponent_choice, your_choice])
#     your_score += 3
#   else
#     result = won_or_lost([oponent_choice, your_choice])
#     your_score += result
#   end
# end

# part 2
your_score = 0
file_data.each do
  oponent_choice = jokenpo(_1[0])
  your_goal = _1[1]
  your_choice = strategy(oponent_choice, your_goal)
  your_score += your_choice
  p "your oponent chose #{oponent_choice}."
  p "your strategy is #{_1[1]}"
  p "so you chose #{your_choice}"
  if tie?([oponent_choice, your_choice])
    your_score += 3
  else
    result = won_or_lost([oponent_choice, your_choice])
    your_score += result
  end
end

p your_score
