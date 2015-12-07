# Virus Predictor

# I worked on this challenge by myself
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'


class VirusPredictor
#initializing the method, defines class variables for stata, pop, and podensity
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#gives predicted death the arguments of popdensity, pop and state
#gives speed of spread arguments of popdensity and state
 def virus_effects
  p "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months."
  end

  private

#creates equation to determine how many will die in an outbreak
#uses if/else statements based on popdensity
#creates equation for num of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200; number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150; number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100; number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50; number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end
  end

#define speed
#use if/else statement based on popdensity to increase how fast disease will spread

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
  end
end

def state_reports(states)
  states.each do |k,v|
  VirusPredictor.new(k, v[:population_density], v[:population]).virus_effects
  end
end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", ::STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


state_reports(STATE_DATA)
#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
  #One uses hash rockets to distinguish between keys and values and the other uses symbols to do it
#What does require_relative do? How is it different from require?
  #require relative links the info in a file to another so that the data is accessible
#What are some ways to iterate through a hash?
  #I used each to iterate through the hash
#When refactoring virus_effects, what stood out to you about the variables, if anything?
  #the refactor was kind of difficult for me because I kept thinking. I feel like I dont need any of this but I didn't know exactly how to go about deleting a whole method without destroying everything. I did a bit of reading and figured out that I could move state_report method to the code to assist.
#What concept did you most solidify in this challenge?
  #It helped solidify hashes