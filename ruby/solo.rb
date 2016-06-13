## HARNESS (item with unique serial number) TRACKING
###Tracks location and changes in condition of harnesses based on serial number


# Add a new harness
  #initialize
    # harness needs a serial number, type, and year created
    # Give default values for location, condition, date inspected, date modified
  # other methods
    # Change current location
      # save old location in array of previous locations
      # make current location available
    # Change "condition"
      # save old condition with note and date modified in hash
        # ask for note
      # save current condition as string
    # Date inspected with note. save both in hash
      # ask for note
    #Pretty print method
    #Full History Print

# BUSINESS END

class Harness
  attr_reader :serial_number, :type, :year_built, :inspection_modification_history
  attr_accessor :current_location, :last_inspected, :current_condition, :date_modified

  def initialize(serial_number, type, year_built)
      @serial_number = serial_number
      @type = type
      @year_built = year_built
      @current_location = "Build Shop"
      @last_inspection = year_built
      @current_condition = "Initial add"
      @date_modified = year_built
      @previous_locations = ["Build Shop"]
      @history_id = 0
      @inspection_modification_history = { @history_id => [year_built, "New", "built in #{year_built}"]}
  end

  def new_location(location, date)
    @history_id += 1
    @inspection_modification_history[@history_id] = [date, location, "#{@serial_number} was sent to #{location}"]
    @current_location = location
  end

  def change_condition(cond, date, note)
    @history_id += 1
    @inspection_modification_history[@history_id] = [date, "Condition: #{cond}", note]
    @current_condition = cond
  end

  def inspection(date, note)
    @history_id += 1
    @inspection_modification_history[@history_id] = [date, "Inspection" , note]
    @last_inspection = [date, note]
  end

  def print
    previous_id = @history_id -1
    puts "==================="
    puts "#{serial_number} : #{@type} : #{@year_built}"#type : #year
    puts "HISTORY(last 2):"
    # History from inspection_modification_history of index -1 and -2
    puts "#{@inspection_modification_history[@history_id][0]}
          --#{@inspection_modification_history[@history_id][1]}
          ---#{@inspection_modification_history[@history_id][2]}"
    if previous_id > 0
      puts "-------------------"
      puts "#{@inspection_modification_history[previous_id][0]}
            --#{@inspection_modification_history[previous_id][1]}
            ---#{@inspection_modification_history[previous_id][2]}"
    end  
    puts "==================="
  end

  def history
    puts "==================="
    puts "#{serial_number} : #{@type} : #{@year_built}"
    puts "FULL HISTORY:"
    (@history_id+1).times do |i|
      puts "#{@inspection_modification_history[i][0]}
          --#{@inspection_modification_history[i][1]}
          ---#{@inspection_modification_history[i][2]}"
      puts "-------------------"
    end
  end
end

##### outside of class definitions
  # Show Menu of Things to do [method]
    # 1 - Create new harness [method]
    # 2 - Select existing Harness to edit [method]
    # 3 - View all harness data (short history) [method]
    # 4 - View all harness age (year - year_built) [method]
    # 5 - Remove harness [method]
    # 6 - Exit 
  # CREATE new harness [method]
  # SELECT existing harness menu [method]
    # Ask for harness number
      # print short history
    # Open menu
      # 1 - Add location
      # 2 - Add inspection note
      # 3 - Add/update condition note
      # 4 - Remove harness
      # 5 - View full history
      # 6 - View Age of harness
      # 7 - Go back
      # 8 - Exit program (all data lost)
  # VIEW ALL DATA (short) [method]

$all_harnesses = []

def main_menu
  # User display of main menu
  puts "++++++ MENU ++++++
++++++++++++++++++
1 - Create new Harnesses
2 - EDIT existing Harness
3 - View all Harness data (short history)
4 - View all Harness age
5 - Exit"

  # loop to insure correct selection
  selection = -1
  until selection.class == Fixnum && selection > 0 && selection < 7
    puts "++++++++++++++++++
+ Select a NUMBER+
++++++++++++++++++"
    selection = gets.chomp.to_i
  end
  # case statement to run correct method
  case selection
    when 1
      system("clear")
      new_harnesses
    when 2
      system("clear")
        edit_harness(select_harness)
    when 3
      system("clear")
      view_all_history
    when 4
      system("clear")
      view_all_age
    when 5
      exit
  end
end

## Create 'n' number of new Harness (class) with parameters 
def new_harnesses
  puts "++ NEW HARNESSES++
++++++++++++++++++"
  number = ""
  until number.class == Fixnum
    puts "How many Harnesses would you like to create?"
    number = gets.chomp.to_i
  end
  counter = 1
  while number > 0
      puts "-------- Harness #{counter} input --------"
      puts "Input a harness NUMBER: (standard format of one letter and 2 number eg. A99)"
      harness_number = gets.chomp

    if $all_harnesses[0..$all_harnesses.length].include?(harness_number.upcase)
      puts "Sorry, that Harness already exists. Please input a unique ID"
    
    else

      puts "Input a harness TYPE: (single, 2-point, 3-point, jerk, ballet, garden...etc.)"
      harness_type = gets.chomp
  
      puts "Input YEAR #{harness_number} was built:(yyyy)"
      harness_year = gets.chomp.to_i

      harness = Harness.new(harness_number, harness_type, harness_year)
      $all_harnesses << harness
      harness.print
      number = number - 1
      counter += 1
    end
  end
  return $all_harnesses
end

 
#saves selected harness in 'current_harness'
def select_harness
  all_harness_str = ""
  $all_harnesses.each_with_index do |harness, index|
    new_harness = "   " + index.to_s + "- " +  harness.serial_number
    all_harness_str += new_harness
  end
  puts all_harness_str
      harness_input = -1
  until harness_input >= 0 && harness_input < $all_harnesses.length 
    puts "Which HARNESS to edit?(select number)"
    harness_input = gets.chomp.to_i
    current_harness = $all_harnesses[harness_input]
  end
  return current_harness
end

def edit_harness(current_harness)
  puts "+++EDIT HARNESS+++
++++++++++++++++++
# 1 - Add location
# 2 - Add inspection note
# 3 - Add/update condition note
# 4 - Remove harness
# 5 - View full history
# 6 - Go back
# 7 - Exit program (all data lost)"

  # loop to insure correct selection
  selection = -1
  until selection.class == Fixnum && selection > 0 && selection < 9
    puts "++++++++++++++++++
+ Select a NUMBER+
++++++++++++++++++"
    selection = gets.chomp.to_i
  end
  # case statement to run correct method
  case selection
    when 1
      system("clear")
      add_location(current_harness)
    when 2
      system("clear")
      add_inspection(current_harness)
    when 3
      system("clear")
      update_condition(current_harness)
    when 4
      system("clear")
      remove_harness(current_harness)
    when 5
      system("clear")
      view_history(current_harness)
    when 6
      system("clear")
      main_menu
    when 7
      exit
  end
end

def view_all_history
  $all_harnesses.each {|harness| harness.print}
end

def view_all_age
  $all_harnesses.each do |harness|
    puts "#{harness.serial_number} is #{2016 - harness.year_built} years old"
  end
end


# These methods change a harnesses attributes

def add_location(current_harness)
  current_harness.print
  puts "Location of #{current_harness.serial_number}? (City, State)"
  location = gets.chomp
  puts "Date sent?(mm/dd/yyyy)"
  date = gets.chomp
  current_harness.new_location(location, date)
  current_harness.print
end

def add_inspection(current_harness)
  current_harness.print
  puts "Date of inspection?(mm/dd/yyyy)"
  date = gets.chomp
  puts "Notes about #{current_harness.serial_number}?"
  notes = gets.chomp

  current_harness.inspection(date, notes)
  current_harness.print
end


def update_condition(current_harness)
  current_harness.print
  puts "Current condition?"
  cond = gets.chomp
  puts "Date condition took effect?(mm/dd/yyyy)"
  date = gets.chomp
  puts "Notes to add to current state of #{current_harness.serial_number}?"
  notes = gets.chomp

  current_harness.change_condition(cond, date, notes)
  current_harness.print
end

def remove_harness(current_harness)
  current_harness.print
  $all_harnesses.delete(current_harness)
end   

def view_history(current_harness)
  current_harness.history
end

def view_age(current_harness)
    current_harness.print
  "#{current_harness.serial_number} is #{2016 - current_harness.year_built} years old"
end



# SAMPLE CODE (DELETE WHEN WE LEARN HOW TO KEEP DATA STORED)

harness_input = "H55"
harness = Harness.new(harness_input.upcase, "2-point", 2013)
$all_harnesses << harness
harness.new_location("White Plains, NY", "1/2/14")
harness.inspection("1/15/14", "This harness is great")
harness.new_location("Kingston, NY", "8/16/14")
harness.inspection("8/26/14", "This harness is great")
harness.new_location("Albany, NY", "6/4/15")
harness.inspection("6/26/15", "This harness is good")
harness.new_location("Memphis, TN", "6/4/16")
#p harness.inspection_modification_history
harness.change_condition("fair", "6/6/16", "Harness has been worn out on straps")

harness_input = "H57"
harness = Harness.new(harness_input.upcase, "2-point", 2013)
$all_harnesses << harness
harness.new_location("White Plains, NY", "1/2/14")
harness.inspection("1/15/14", "This harness is great")
harness.new_location("Kingston, NY", "8/16/14")
harness.inspection("8/26/14", "This harness is great")
harness.new_location("Albany, NY", "6/4/15")
harness.inspection("6/26/15", "This harness is good")
harness.new_location("Memphis, TN", "6/4/16")
#p harness.inspection_modification_history
harness.change_condition("fair", "6/6/16", "Harness has been worn out on straps")

harness_input = "B52"
harness = Harness.new(harness_input.upcase, "3-point", 1991)
$all_harnesses << harness
harness.new_location("White Plains, NY", "1/2/14")
harness.inspection("1/15/14", "This harness is great")
harness.new_location("Kingston, NY", "8/16/14")
harness.inspection("8/26/14", "This harness is great")
harness.new_location("Albany, NY", "6/4/15")
harness.inspection("6/26/15", "This harness is good")
harness.new_location("Memphis, TN", "6/4/16")
#p harness.inspection_modification_history
harness.change_condition("fair", "6/6/16", "Harness has been worn out on straps")

harness_input = "A55"
harness = Harness.new(harness_input.upcase, "single", 2001)
$all_harnesses << harness
harness.new_location("White Plains, NY", "1/2/14")
harness.inspection("1/15/14", "This harness is great")
harness.new_location("Kingston, NY", "8/16/14")
harness.inspection("8/26/14", "This harness is great")
harness.new_location("Albany, NY", "6/4/15")
harness.inspection("6/26/15", "This harness is good")
harness.new_location("Memphis, TN", "6/4/16")
#p harness.inspection_modification_history
harness.change_condition("fair", "6/6/16", "Harness has been worn out on straps")
######################################################################################


# driver code
loop do
main_menu
end

