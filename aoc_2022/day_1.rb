elves = []
elf = 0

File.foreach('day_1_input.txt') do |line|
  line = line.strip.to_i
  elf += 1 if line == 0
  if elves[elf].nil?
    elves[elf] = line
  else
    elves[elf] += line
  end
end

elves.sort!.reverse!

# part 1 result:
# top_elf = elves.max
# part 2 result:
# top_3_elves = elves.max(3).reduce(:+)
