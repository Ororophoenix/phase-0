# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    answer.to_i
     if answer==()
      raise solved?
    else
      @answer=answer
    end
  end

def guess(integer)
  if integer==@answer
    return :correct
  elsif integer>@answer
    return :high
  else
    return :low
  end
end
def solved?
  if @integer==@answer
    return true
  else
    return false
  end
end
  # Make sure you define the other required methods, too
end




# Refactored Solution






# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#When should you use instance variables? What do they do for you?
#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#Why do you think this code requires you to return symbols? What are the benefits of using symbols?