# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to use the file data in the same relative path directory that your are in, downloading or importing all of the information in the file making it available in the current file
# require requires you to state the full path of the file that you are accessing
require_relative 'state_data'

class VirusPredictor

# intialize our class and allow us to use and state the parameters, setting input values to instance variables to be used acrossed class methods
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# virus_effects is a method calling two other methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
# methods above are normal, methods below are private, public methods can be called outside of class, cannot call private methods outside of class but can still be called within class
  private
# takes three arguments with diff levels of pop dens and performing calc based on density of each state, then outputs result
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# takes three arguments with diff levels of pop dens and performing calc based on density of each state, then outputs result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do | state_name, pop_info |
  new_virus = VirusPredictor.new(state_name, pop_info[:population_density], pop_info[:population])
  new_virus.virus_effects
end




#=======================================================================
# Reflection Section