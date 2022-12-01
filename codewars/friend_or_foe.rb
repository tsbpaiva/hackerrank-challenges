# --// Instructions //--
# Make a program that filters a list of strings and returns a list with only your friends name in it.
# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...
# Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]
# i.e.
# friend ["Ryan", "Kieran", "Mark"] `shouldBe` ["Ryan", "Mark"]
# Note: keep the original order of the names in the output.

def friend(friends)
  result = []
  friends.each do |name|
    if name.length == 4
        result.push(name)
    end
  end
  return result
end



# --// Best solution at CodeWars //-- cause this will be relevant FOR SURE
# def friend(friends)
#   friends.select { |name| name.length == 4 }
# end


# --/ Tests /--
p friend(["Ryan", "Kieran", "Mark"])#, ["Ryan", "Mark"])
p friend(["Ryan", "Jimmy", "123", "4", "Cool Man"]) #, ["Ryan"])
p friend(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"])#, ["Jimm", "Cari", "aret"])
p friend(["Love", "Your", "Face", "1"])#, ["Love", "Your", "Face"])
