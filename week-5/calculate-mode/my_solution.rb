# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
#1. define method -Mode
#2. create array
#3. method takes objects, strings, or integers
#4. if all values are unique return array
#5. most frequent value(s) returned

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def mode (arrays)
  most_frequent = Hash.new(0)
  arrays.each do |i|
    most_frequent[i] += 1
  end
  mode_arrays =[]
  most_frequent.each do |k,v|
    if v ==most_frequent.values.max
      mode_arrays << k
end
end
mode_arrays.sort
end


# 3. Refactored Solution
include Enumerable
def mode (arrays)
  most_frequent = Hash.new(0)
  arrays.each {|i| most_frequent[i] += 1}
  mode_arrays = []
  most_frequent.each do |k,v|
    most_frequent_values = most_frequent.values.max
    if v == most_frequent_values
      mode_arrays << k
    end
  end
p mode_arrays.sort
end





# 4. Reflection