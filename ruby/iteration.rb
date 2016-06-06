##### RELASE 0 ### 
#
#def complimentor_hater
# puts "You are amazing!"
# yield("Billy")
#end
#
#
#complimentor_hater { |name| puts "Except you, #{name}!"}



### RELASE 1 ###

#Array

#animals = ["pig", "horse", "monkey", "sloth", "kangaroo", "raccoon"]

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
#animal_legs = { pig: 4, horse: 4, monkey: 2, sloth: 2, kangaroo: 2, raccoon: 4}


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


### RELEASE 2 ###


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers_letters = {1 => "a", 2 => "b", 3 => "c", 4 => "d" , 5=> "e"}

#delete_if for array
#p numbers
#
#numbers.delete_if {|x| x<5}
#p numbers



#delete_if for hash
#p numbers_letters
#numbers_letters.delete_if {|num, let| num==4}
#p numbers_letters


#keep_if for array
#p numbers
#numbers.keep_if {|x| x<5}
#p numbers

#keep_if for hash
#p numbers_letters
#numbers_letters.keep_if {|num, let| num==4}
#p numbers_letters

#Select! for array (without the ! it does not change array)
#p numbers
#p numbers.select {|x| x.even?}
#p numbers
#numbers.select! {|x| x.even?}
#p numbers

#select and select! for hash (without the ! does not change hash)
#p numbers_letters
#p numbers_letters.select {|num, let| num.odd?}
#p numbers_letters
#numbers_letters.select! {|num, let| num.odd?}
#p numbers_letters

#take_while for array
#p numbers
#p numbers.take_while { |i| i < 7 }
#p numbers

#reject and reject! for hash (does not change hash without !.. not dangerous)
p numbers_letters
p numbers_letters.reject {|num, let| num > 3}
p numbers_letters
numbers_letters.reject! {|num, let| num > 3}
p numbers_letters


































