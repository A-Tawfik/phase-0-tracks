#get string input
  puts "write a thing"  
  password = gets.chomp

#encryption method
def encrypt(str)
  #define loop variables
  times = 0
  encrypted = ""
  #loop 'string length' number of times
  until times == str.length
    #add next letter to encrypted string
    encrypted += str[times].next
    times += 1
  end
  return encrypted
end

#print result string
puts encrypt(password)

  puts "write a thing"  
  password = gets.chomp

def decrypt(str)
  times = -(str.length)
  decrypted = ""
  
  until times == 0
    decrypted += (str[times].ord-1).chr
    times += 1
  end
  
  puts decrypt(password)