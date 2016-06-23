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
 #  if @population_density >= 50
 #    @population_density.floor.times do |i|
 #      if i>200
 #        break
 #      elsif i != 0 && i%50 == 0
 #        multiplier += 0.1
 #      end
 #    end
 #  else
 #    multiplier = 0.05
 #  end
    if @population_density < 50
      multiplier = 0.05
    elsif @population_density > 200
      multiplier = 0.4
    else
      multiplier = (@population_density.to_i / 50) /10.0
    end
#
#
    number_of_deaths = (@population * multiplier).floor
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    return number_of_deaths
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

     #for every 50 population_desity, subtract .5 to speed
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
#What are the differences between the two different
# hash syntaxes shown in the state_data file?
#
#one uses a string as the key making each and the other uses symbols. 
#This allows the major hash to have an unlimited variety in key values while each 
#sub has had a specific key to be called.
#Also, the => is used instead of = in the sub hash because we are assiging the 
#string key the value of the sub hash.
#
#What does require_relative do? How is it different from require?
#
#requre_relative allows you to point to a file in the relative directory of the
#file containing this argument. require must be something within the project library
#or have its path called upon from the root directory
#
#What are some ways to iterate through a hash?
#you can use .each where the key and the value are available to you.
#
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#
#all the variables listed in virus_effects were already listed as instance variables
#during the initialize method. They were not needed as an input parameter for any other
#method in that class.

#What concept did you most solidify in this challenge?
#concepts of methods calling other methods. Also the idea of a private method and when it 
#should be used.

