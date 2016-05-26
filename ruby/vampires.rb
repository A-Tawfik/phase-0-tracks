#ask name
puts "Whats your name?"
name = gets.chomp
#ask age
puts "How old will you be by the end of this year?"
age = gets.chomp.to_i
#ask birth_year
puts "What year were you born?"
birth_year = gets.chomp.to_i
#Ask garlic bread
puts "Would you like some garlic bread?(y/n)"
garlic_ok = gets.chomp
#ask Health insurance
puts "Would you like to enroll in the company's health insurance?(y/n)"
insurance_ok = gets.chomp

if (age == 2016 - birth_year) && ((garlic_ok == "y") || (insurance_ok == "y"))
  puts "Probably not a vampire."
elsif !(age == 2016 - birth_year) && (garlic_ok != "y") && (insurance_ok != "y")
  puts "Almost certainly a vampire."
elsif !(age == 2016 - birth_year) && (garlic_ok != "y") || (insurance_ok != "y")
  puts "Probably a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Result inconclusive."
end
