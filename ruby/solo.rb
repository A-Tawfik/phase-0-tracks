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
2 - Select existing Harness to EDIT
3 - View all Harness data (short history)
4 - View all Harness age
5 - Remove Harness
6 - Exit"

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
      new_harnesses
    when 2
      select_harness
    when 3
      view_all_history
    when 4
      view_all_age
    when 5
      remove_harness
    when 6
      exit
  end
end

def new_harnesses
  puts "++ NEW HARNESSES++
++++++++++++++++++"
  number = ""
  until number.class == Fixnum
    puts "How many Harnesses would you like to create?"
    number = gets.chomp.to_i
  end
  counter = 0
  while number > 0
    counter += 1
    puts "Harness #{counter} input ==============="
    puts "Input a harness number: (standard format of one letter and 2 number eg. A99)"
    harness_number = gets.chomp

    puts "Input a harness Type:(1 wire, 2 wire, double-single, jerk, ballet, garden...etc.)"
    harness_type = gets.chomp

    puts "Input Year harness was built:"
    harness_year = gets.chomp.to_i

    harness_number = Harness.new(harness_number, harness_type, harness_year)
    $all_harnesses << harness_number

    harness_number.print
    number = number - 1
  end
  return $all_harnesses
end

def select_harness
  p "select harness"
end

def view_all_history
  p "view all history"
end

def view_all_age
  p "view all age"
end

def remove_harness
  p "remove harness"
end

loop do
main_menu
end




# USER INPUT









#TEST CODE






#harness = "h55"
#harness = Harness.new(harness.upcase, "2w", 2016)
#
#all_harnesses << harness.serial_number
#h55 = harness
#p h55.class
#p harness
#p h55.current_location
#harness.new_location("White Plains, NY", "1/2/14")
#harness.new_location("Kingston, NY", "8/16/32")
#harness.new_location("Albany, NY", "6/4/12")
#harness.new_location("Memphis, TN", "6/4/16")
##p harness.inspection_modification_history
#harness.inspection("6/6/16", "This harness is great")
#harness.change_condition("Good", "6/6/16", "Harness has been used")
#harness.print
#harness.history
#
#
#
#
#harness = gets.chomp
##is it unique
#if all_harnesses.include?(harness.upcase)
#  puts "Sorry, that Harness already exists. Please input a unique ID"
#else
#harness = Harness.new(harness.upcase, "2w", 2016)
#all_harnesses << harness.serial_number
#harness.current_location
##p harness.inspection_modification_history
#harness.inspection("6/6/16", "This harness is not great")
#harness.change_condition("Good", "6/6/16", "the 2nd try")
#harness.print
#harness.history
#end