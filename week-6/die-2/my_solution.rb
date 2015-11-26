# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:array of strings for sides
# Output:return randomized strings
# Steps: if/else statement for argument error
 # choose a random index
 # lowest number index could be is 0
# highest number index could be is @labels.size - 1
  # return the string at the index

# Initial Solution

class Die
  def initialize(labels)
    if labels==[]
      raise ArgumentError.new("Array cannot be empty")
    else
      @labels=labels
    end
  end
  def sides
    @labels
  end

  def roll
    index = rand(0..@labels.size-1)
    @labels[index]

  end

end



# Refactored Solution

 # choose a random index
    # lowest number index could be is 0
    # highest number index could be is @labels.size - 1
    # return the string at the index
class Die
  def initialize(labels)
    if labels==[]
      raise ArgumentError.new("Array cannot be empty")
    else
      @labels=labels
    end
  end

  def sides
    @labels
  end

  def roll

    @labels.sample

  end

end


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The idea was the same but I had to make sure I was using array methods and not integer methods.
What does this exercise teach you about making code that is easily changeable or modifiable?
  It was really important that I think of how the challenge was different and address those differences.
What new methods did you learn when working on this challenge, if any?
  I used sample which is similar to rand
What concepts about classes were you able to solidify in this challenge?
  I dont know if anything in particular stood out in this challenge but I do feel like I am slowly becoming more comfortable with classes.
=end