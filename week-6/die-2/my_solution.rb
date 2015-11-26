# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:array of strings for sides
# Output:return randomized strings
# Steps: if/else statement for argument error
#create


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
    # choose a random index
    # lowest number index could be is 0
    # highest number index could be is @labels.size - 1
    index = rand(0..@labels.size-1)
    @labels[index]
    # return the string at the index
  end

end



# Refactored Solution


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
    # choose a random index
    # lowest number index could be is 0
    # highest number index could be is @labels.size - 1
    @labels.sample
    # return the string at the index
  end

end





# Reflection