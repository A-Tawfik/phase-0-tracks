# module Shout
#   def self.yell_angrily(words)
#     words + "!!!!" + ":("
#   end
# 
#   def self.yell_happily(words)
#     words + "!" + ":D"
#   end
# end
# 
# puts Shout.yell_happily("I love pie")
# puts Shout.yell_angrily("i HATE pie")

module Shout
  def yell_angrily(words)
    words + "!!!!!" + ":["
  end

  def yell_happily(words)
    words + "!" + "YIPPY!" + ":D"
  end
end

class Girlfriend
  include Shout
end

class Pirate
  include Shout
end

black_beard = Pirate.new
puts black_beard.yell_angrily("ARRRRR")

gf = Girlfriend.new
puts gf.yell_happily("You got me cookies?")

