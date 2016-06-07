class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(count)
    count.times { |times| puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    age * 7
  end

  def high_five
    5
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

class Hotel_guest

  def initialize
    puts "New Guest added"
  end

  def bill(days)
    puts "Guest owes $#{days * 350}"
  end

  def wants_wakeup(time)
    puts "Its #{time}.....WAKE UP!"
  end
end

frank = Hotel_guest.new
frank.bill(3)
frank.wants_wakeup("7:30AM")

guest_arr = []

50.times do |x|
  x = Hotel_guest.new 
  guest_arr << x
end

p guest_arr

guest_arr.each do |guest|
  guest.bill(4)
  guest.wants_wakeup("8:00am")
end




Gizmo = Puppy.new
Gizmo.fetch("ball")
Gizmo.speak(3)
Gizmo.roll_over
p Gizmo.dog_years(3)
p Gizmo.high_five

