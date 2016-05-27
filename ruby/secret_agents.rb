##METHOD DECLARATIONS

##ENCRYPTION##

#get user input
#puts "Type your word to be encrypted"
#password = gets.chomp

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
   elsif current_letter == "9"
     current_letter = "0"
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
#puts encrypt(password)
#print
#print string


##DECRYPTION##

#get user input
#puts "Type your word to be decrypted"
#password_de = gets.chomp

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
   elsif current_letter == "0"
       current_letter = "9" 
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
#puts decrypt(password_de)


#run the methods nested with a call
#puts decrypt(encrypt("swordfish"))

# Ruby is reducing the inner method before moving on to the outer method. 
# Taking the result from the inner and running on the outer method.

#dear agents,
#Type a word to be encrypted next type a word to be decrypted


##AGENT INPUT AND STUFF
##DRIVER CODE

is_agent = 0


#ask for password
puts "Enter password (letters only):"
password = gets.chomp

while is_agent == 0
 #ask what to do to password
puts "would you like to 'encrypt' or 'decrypt' a password?"
protection = gets.chomp
#conditionally run encrypt of decrypt method
 if protection == "encrypt"
   is_agent += 1
   puts encrypt(password)
 elsif protection == "decrypt"
   is_agent += 1
   puts decrypt(password)
 else
   puts "Try again"
 end
end
#print result