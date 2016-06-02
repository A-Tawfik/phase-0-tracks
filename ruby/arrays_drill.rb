#Release 2

def insert_array(arr, value)
  arr << value
end

def build_array(a, b, c)
  boy_band = [a, b, c]
end


#Release 1
#intialize an array
cars = []

#print array
p cars

#add items to array
cars += ["BMW", "Ford", "Toyota", "Chevy", "Kia"]
p cars

#delete the item at index 2
cars.delete_at(2)
p cars

#insert new item at 2
cars.insert(2, "Fiat")
p cars

#Remove first item
cars.shift
p cars

#ask if includes and print in statement
p "does this include Fiat? #{cars.include?("Fiat")}"

#Initialize another array
people = ["Billy", "Jeff", "Jill", "Marry", "Joe"]

#Add arrays together
people_cars = cars + people
p people_cars

p build_array("Billy", "Bobby", "Joey")

p insert_array([1, 2, 3, 4], "a")
p insert_array(["guitar", 1.4, true], "b")

instruments = ["guitar", "drums", "banjo"]

instruments = insert_array(instruments, "violin")
instruments = insert_array(instruments, "fiddle")

p instruments 