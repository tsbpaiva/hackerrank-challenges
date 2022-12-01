class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student < Person
  attr_accessor :scores

  def initialize(firstName, lastName, id, scores)
    super(firstName, lastName, id)
    @scores = scores
  end

  def calculate
    average = @scores.sum(0.0) / @scores.length
    case average
      when 90..100
        'O'
      when 80..90
        'E'
      when 70..80
        'A'
      when 55..70
        'P'
      when 40..55
        'D'
      else
        'T'
    end
  end
end
