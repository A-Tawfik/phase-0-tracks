#ask hamster name
puts "Hamsters name?"
h_name = gets.chomp
#ask volume
puts "hamster volume? (1-10)"
volume = gets.chomp
#ask fur color
puts "hamster fur color?"
h_color = gets.chomp
#good or bad for adoption
puts "Hamster good for adoption? (y/n)"
adopt = gets.chomp
#estimated age
puts "Estimated age?"
age = gets.chomp

if age == ""
  age = nil
end