# mammals
class Zebra
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age

  def initialize(gender)
    @gender = gender
    @classification = "mammalia"
    @weight = 400
    @age = 25
    @carnivore = false
    @live_birth = true
  end

end

class Lion
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age
  def initialize(gender)
    @gender = gender
    @classification = "mammalia"
    @weight = 400
    @age = 25
    @carnivore = true
    @live_birth = true
  end

end


class Giraffe
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age
  def initialize(gender)
    @gender = gender
    @classification = "mammalia"
    @weight = 600
    @age = 25
    @carnivore = false
    @live_birth = true
  end

end

# birds
class Pigeon
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age
  def initialize(gender)
    @gender = gender
    @classification = "aves"
    @weight = 5
    @age = 2
    @carnivore = false
    @live_birth = false
  end

end

class Eagle
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age
  def initialize(gender)
    @gender = gender
    @classification = "aves"
    @weight = 10
    @age = 2
    @carnivore = true
    @live_birth = false
  end

end

class Flamingo
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age
  def initialize(gender)
    @gender = gender
    @classification = "aves"
    @weight = 25
    @age = 5
    @carnivore = false
    @live_birth = false
  end

end

# reptiles

class Iguana
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age
  def initialize(gender)
    @gender = gender
    @classification = "reptlia"
    @weight = 12
    @age = 3
    @carnivore = false
    @live_birth = false
  end

end

class Alligator
attr_reader :carnivore, :live_birth, :gender, :classification
attr_accessor :weight, :age
  def initialize(gender)
    @gender = gender
    @classification = "reptlia"
    @weight = 600
    @age = 60
    @carnivore = true
    @live_birth = false
  end

end


## driver code

animal_types = [Zebra, Giraffe, Lion, Pigeon, Eagle, Flamingo, Iguana, Alligator]
habitat_carnivore = []
habitat_herbivore = []

def gender_picker(animal)
  if rand(1000).even?
    animal.new("male")
  else
    animal.new("female")
  end
end



animal_types.each do |animal|
  count = rand(10)
  count.times do |x| 
    new_animal = gender_picker(animal)
      if new_animal.carnivore
        habitat_carnivore << new_animal
      else
        habitat_herbivore << new_animal
      end
  end
end

p habitat_herbivore
p habitat_carnivore










