#Prompt the designer/user for all the information
#Convert any user input to the appropriate data type


puts "Name of client?"
name = gets.chomp

puts "Building address?"
address = gets.chomp

puts "Number of BEDROOMS?"
bdrms = gets.chomp.to_i

puts "Number of BATHROOMS?"
btrms = gets.chomp.to_f

puts "Clients Favorite color?"
color = gets.chomp

puts "Is in favor of knocking down walls? (y/n)"
down_walls = gets[0] == 'y'

#Print the hash back out to the screen when the designer has answered all of the questions
p new_design = {name: name, address: address, bdrms: bdrms, btrms: btrms, color: color, down_walls: down_walls}

#Ask user if changes need to be made
  puts "Do any changes need to be made?(y/n)"
    changes = gets[0] == 'y'
  if changes
    puts "Which value to change? (type 'none' to exit)"
    p new_design.keys
    change_key = gets.chomp
    if change_key != "none"
      puts "Change #{change_key} to what?"
      change_value = gets.chomp
      new_design[change_key.to_sym] = change_value
      p new_design
    end
  end
exit




