# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Break up the string at the ' '
  # Feed that string into a HASH
  # set default quantity to 1
  # print the list to the console [Print to pretty method]
# output: hash item as the key and quantity as the value

def create_list(input_string)
  input_arr = input_string.split(" ")
  new_shopping_list = Hash.new
  new_shopping_list = Hash[input_arr.collect{|item, | [item, 1]}]
end  

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # check if item is already in the hash list
  # add item to list (.push)
# output: updated hash with new item and quantity

def add_or_update_item_qty(shopping_list, item, quantity)
    shopping_list[item] = quantity
end



# Method to remove an item from the list
# input: item name to be removed
# steps:
  # check if item is on the list
  # use delete method to remove item
# output: updated hash without item

def remove_item(shopping_list, item)
    shopping_list.delete(item)
end




# Method to update the quantity of an item
# input: item name and updated quantity
# steps:
  # locate the key
  # push new information in
# output: updated hash with new quantity value

#def update_qty(shopping_list, item, quantity)
#
#
#    shopping_list[item] = quantity
#end





# Method to print a list and make it look pretty
# input: hash list
# steps: 
  # iteration through the hash to print each item in a sentence that is interpolated with items
# output: user readable list

def print_list(shopping_list)
    puts "SHOPPING LIST:"
  shopping_list.each do |item, qty|
      puts "-#{item} ---> #{qty}"
  end

end






## TEST CODE
item = "cookie"

p shopping_list = create_list("carrots apples cereal pizza")


puts "how many #{item}s would you like to add/update?"
quantity = gets.chomp.to_i

add_or_update_item_qty(shopping_list, item, quantity)

p shopping_list

remove_item(shopping_list, item)

p shopping_list

print_list(shopping_list)



