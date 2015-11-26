# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new ("Number needs to be bigger than 0")
    else @sides = sides
  end
end
  def sides
    return @labels
  end

  def roll
    return ('A'...'Z').to_a.shuffle
  end
end


# 3. Refactored Solution
#I wont lie I dont know how to refactor this






# 4. Reflection
#What is an ArgumentError and why would you use one?
  #You can use it to notify users of your class
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  #I used argument error for the first time in a code which is weird because I am normally trying to get rid of that.
#What is a Ruby class?
  #Class is a first class object in ruby. when you call a class it allows you to call all of the methods in that class
#Why would you use a Ruby class?
  #You would use a ruby class if you wanted to be able to access different methods thoughout the class.
#What is the difference between a local variable and an instance variable?
  #Local variables are the variable that are defined in a method and cannot be used outside of that method. An instance variable is available across methods.
#Where can an instance variable be used?
  #anywhere in a class.