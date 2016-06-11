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


# put all in loop of "actions" to perform with 'exit' option

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
    @current_location = location
    @previous_locations << @current_location
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


# USER INPUT







all_harnesses = []

#TEST CODE
harness = gets.chomp
harness = Harness.new(harness.upcase, "2w", 2016)
p harness.serial_number
all_harnesses << [harness.serial_number]
p harness.current_location
#p harness.inspection_modification_history
harness.inspection("6/6/16", "This harness is great")
harness.change_condition("Good", "6/6/16", "Harness has been used")
harness.print
harness.history



harness = gets.chomp
#is it unique
if all_harnesses. (harness.serial_number)
  puts "nope"
else
harness = Harness.new(harness.upcase, "2w", 2016)
all_harnesses << [harness]
harness.current_location
#p harness.inspection_modification_history
harness.inspection("6/6/16", "This harness is not great")
harness.change_condition("Good", "6/6/16", "the 2nd try")
harness.print
harness.history
end