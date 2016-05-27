#ask how many employees to fill out
puts "How many employee surveys to fill out?"
times = gets.chomp.to_i

while times > 0
allergy = ""

  #ask name
    puts "What is your name?"
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
  #ask additional allergies
    until allergy == "done"
    puts "do you have additional allergies? (type 'done' when complete)"
      allergy = gets.chomp
      if allergy == "sunshine"
        break
      end
    end


puts "#{name} is:"
  if (name == "Drake Cula" || name == "Tu Fang")
    puts "Definitely a vampire."
  elsif (age == 2016 - birth_year) && ((garlic_ok == "y") || (insurance_ok == "y")) && allergy != "sunshine"
    puts "Probably not a vampire."
  elsif !(age == 2016 - birth_year) && (garlic_ok != "y") && (insurance_ok != "y")
    puts "Almost certainly a vampire."
  elsif ( !(age == 2016 - birth_year) && (garlic_ok != "y") || (insurance_ok != "y")) || allergy == "sunshine"
    puts "Probably a vampire"
  else
    puts "Result inconclusive."
  end


times = times-1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."