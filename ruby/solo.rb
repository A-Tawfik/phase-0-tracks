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
  
# Harness age method (possibly outside of class)
  # apply method when program starts and when each harness is added


# put all in loop of "actions" to perform with 'exit' option




class Harness
  attr_reader :serial_number, :type, :year
  attr_accessor :current_location, :last_inspected, :current_condition, :date_modified

  def initialize(serial_number, type, year)
    #check if unique serial number
    if @all_harness.has_key?(serial_number)
      "#{serial_number} already exists. Please Modify existing Harness"
      print(serial_number)
    else
      @serial_number = serial_number
      @type = type
      @year = year
      @current_location = "Build Shop"
      @last_inspection = []
      @current_condition = "Initial add"
      @date_modified = ""
      @previous_locations = []
      @inspection_modification_history = { year => ["new", "built in #{year}"]}
      @all_harness = { serial_number => [type, year] }
      puts "Harness #{serial_number} added..."
    end
  end

  def new_location(location)
    @previous_locations << @current_location
    @current_location = location
  end

  def change_condition(cond, date_mod, note)
    @inspection_modification_history = { date_mod => [cond, note] }
    @current_condition = cond
  end

  def inspection(date_insp, note)
    @inspection_modification_history(:inspection) = [date_insp, note]
    @last_inspection = [date_insp, note]
  end

  def print(serial_number)
    # Query all needed items based on serial number
    puts "==================="
    puts "#{serial_number}: "#type : #year
    puts "HISTORY(last 2):"
    # History from inspection_modification_history of index -1 and -2
    puts "**History would go here**"
  end
end

