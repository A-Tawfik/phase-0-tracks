#Get string input
  puts "write a thing"  
  password = gets.chomp

#encryption method
def encrypt(str)
  #define loop variables 
  times = 0
  encrypted = ""
  #loop "string length" number of times
  until times == str.length
    current_letter = str[times]
    #conditional edge cases and space
    if current_letter == "z"
      current_letter = "a"
    elsif current_letter == " "
      current_letter = " "
    else
      #find next letter
      current_letter = str[times].next
    end
    #add letters to string one by one
    encrypted += current_letter
    
    times += 1
  end
  return encrypted
end
#print
puts encrypt(password)


##DECRYPTION##
#get user input string
  puts "write a thing"  
  password = gets.chomp
#decryption method
def decrypt(str)
  #define loop variable
  times = -(str.length)
  decrypted = ""
  #loop "string length" number of times
  until times == 0
    current_letter = str[times]
    #conditional edge cases and space
    if current_letter == "a"
      current_letter = "z"
    elsif current_letter == " "
      current_letter = " "
    else
      #find previous letter 
      current_letter = (str[times].ord-1).chr
    end
    #add letters to string one by one
    decrypted += current_letter
    times += 1
  end
  return decrypted
end
 #print string
  puts decrypt(password)