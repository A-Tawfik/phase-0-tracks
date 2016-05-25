#ask hamster name
puts "Hamsters name?"
h_name = gets.chomp
#ask volume
puts "hamster volume? (1-10)"
volume = gets.to_i
#ask fur color
puts "hamster fur color?"
h_color = gets.chomp
#good or bad for adoption
puts "Hamster good for adoption? (y/n)"
adopt = gets[0] == 'y'
#estimated age
puts "Estimated age?"
age = gets.to_i

if age == 0
  age = nil
end

if adopt
  adopt = "is"
else
  adopt = "is not"
end

puts "#{h_name} is #{age} years old and has #{h_color} fur.
#{h_name} has an estimated volume level of #{volume} and #{adopt} ready for adoption" 

p age