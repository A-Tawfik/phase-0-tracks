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

