
#Methods

def name_swap(name)
  #Swap first and last name and downcase everything
  name_array= name.split.reverse
  swap_name = name_array.join(' ')
  letters = swap_name.chars
  #list vowels in an array and consonants in array and define new name array
  vowels = "aeiou".chars
  consonants = "bcdfghjklmnpqrstvwxyz".chars
  new_name = []
  
  
  letters.each do |letter|
  current_letter = letter
  d_letter = letter.downcase
  #ignore blanks
    if d_letter == " "
      new_letter = " "
  #edge cases return to first
    elsif d_letter == consonants.last
      new_letter = consonants.first
    elsif d_letter == vowels.last
      new_letter = vowels.first
  #change current vowel to next vowel
    elsif vowels.include?(d_letter)
      vow_index = vowels.index(d_letter) + 1
      new_letter = vowels[vow_index]
  #change current consonant to next
    elsif consonants.include?(d_letter)
      con_index = consonants.index(d_letter) + 1
      new_letter = consonants[con_index]
    end
  #Upcase if it was upcase
    if d_letter == current_letter
       new_letter 
    else
        new_letter.upcase!
    end
    new_name << new_letter
  end
    return new_name.join('').split.join(' ').to_s
end

#User input
name = ""
names_hash = {}
until name == "quit"
  puts "Type in a name:"
  name = gets.chomp
  if name == "quit"
#something with the array.each
  names_hash.each {|old_name, new_name| puts "#{new_name} is actually #{old_name}"}
  else
  puts name_swap(name)
  names_hash[name] = name_swap(name)
  end
end
