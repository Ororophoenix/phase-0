
# Pad an Array

# I worked on this challenge with Nick Davies

# I spent 1.25 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#   * An array to pad
#   * The size to pad it out to (positive integer)
#   * Default value for new nodes (default to nil)
# What is the output? (i.e. What should the code return?)
#   * Same array from input, but with new nodes added (Destructive)
#   * A copy of the array (non-destuctive) with new nodes
# What are the steps needed to solve the problem?
#   1. Define a method with parameters
#   2. (Non-destructive) Create a new array for output
#   3. Calculate current array size
#   4. If array is already large enough, then return it.
#   5. Until the array size is equal to the minimum, add another node node with the default value.
#   6. Return the array.
#


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.size >= min_size
    return array
  end
  while array.size < min_size do
    array << value
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  array_2 = Array.new(array)
  if array_2.size >= min_size
    return array_2
  end
  while array_2.size < min_size do
    array_2 << value
  end
  return array_2
end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
 array.insert(0, *Array.new([0,min_size-array.length].max,value))
end


def pad(array, min_size, value = nil) #non-destructive
  array+Array.new([0,min_size-array.length].max, value)
end

#Were you successful in breaking the problem down into small steps?
  #Yes
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  #I think we had a little difficulty knowing exactly what we should do differently for destructive vs non-destructive
#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  #no we had a couple of problem with our initial code. We were setting the array to a different variable that wasnt necessary. Our nondestructive code was not working originally either and we added the array.new(array) and that fixed it.
#When you refactored, did you find any existing methods in Ruby to clean up your code?
  #We used .insert .length .max
#How readable is your solution? Did you and your pair choose descriptive variable names?
  #Its good
#What is the difference between destructive and non-destructive methods in your own words?
  #