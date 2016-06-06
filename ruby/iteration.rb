#  
#
#def complimentor_hater
# puts "You are amazing!"
# yield("Billy")
#end
#
#
#complimentor_hater { |name| puts "Except you, #{name}!"}

#Array

animals = ["pig", "horse", "monkey", "sloth", "kangaroo", "raccoon"]

#block code on each array

#puts "this is before the #each:"
#p animals
#
#animals.each {|animal| puts "This #{animal} lives in our house"}
#
#puts "this is after the #each:"
#p animals
#

#block code on map array
#puts "this is before the #map:"
#p animals
#
#animals.map {|animal| puts "This #{animal} lives in our house"}
#
#puts "this is after the #map:"
#p animals

#block code for map! in array
#puts "this is before the #map!"
#p animals
#
#animals.map! {|animal| animal + "s are the best"} 
#
#p animals



#HASH
animal_legs = { pig: 4, horse: 4, monkey: 2, sloth: 2, kangaroo: 2, raccoon: 4}


#block code EACH on a hash
#puts "before each:"
#p animal_legs
#
#animal_legs.each {|animal, legs| puts "We THINK a #{animal} has #{legs} legs." }
#
#puts "after each:"
#p animal_legs

#block code on MAP on a hash
#puts "Before map:"
#p animal_legs
#
#animal_legs.map { |animal, legs| puts "We THINK a #{animal} has #{legs - 1} legs"  }
#
#puts "after map:"
#p animal_legs





































