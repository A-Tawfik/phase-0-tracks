# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# require_relative will using the file path of your current directory to allow you to use information from that file
# require is just like require_relative, except it will serch relative to the current directory 
require_relative 'state_data'
class VirusPredictor
  # This initializes a new instance of the Virus Predictor class and with include the state_of_origin, population_density, and population attributes with instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calling on the predicted_deaths and speed_of_spread methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  # Makes the object inaccessible to the user 
  private
  # This method returns the predicted_deaths of the VirusPredictor based on populatin_Density, 
  #population and state. Based on the population density it multiplies a number based on the population density 
  #and rounds down to the nearest integer, equaling the number of deaths. It then prints a
  #statement about the calculation of predicted deaths.
  def predicted_deaths
    # predicted deaths is solely based on population density
    multiplier = 0.0
    if @population_density >= 50
      @population_density.floor.times do |i|
        if i>200
          break
        elsif i != 0 && i%50 == 0
          multiplier += 0.1
        end
      end
    else
      multiplier = 0.05
    end

    number_of_deaths = (@population * multiplier).floor
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # This method looks at the population density for the state and uses this to
  #calculate the speed at which the virus spread. It will then print a 
  #statement that tells you how many months it will most likely take
  #for the virus to spread across the state.
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

     #for every 50 population_desity, add .5 to speed
    @population_density.floor.times do |i|
        if i>200
          break
        elsif i != 0 && i%50 == 0
          speed -= 0.5
        end
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_hash|
  new_state = VirusPredictor.new(state, pop_hash[:population_density], pop_hash[:population])
  new_state.virus_effects
end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
#=======================================================================
# Reflection Section