# Calculate the mode Pairing Challenge

# I worked on this challenge with Nicollete Chambers

# I spent 3 hours on this challenge.

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
#Which data structure did you and your pair decide to implement and why?
  #
#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  #Not really. We understood what we wanted to happenbut did not really know good ways to make it happen so in the sense of understanding the problem better yes that was good but in the sense of psuedocode that could help us move forward in our actual code I dont think it really helped.
#What issues/successes did you run into when translating your pseudocode to code?
  #We had to start all the way over. At first we were using a hash and we had goteen it to the point where the values listed the frequency and we needed to return the key. We tried a ton of different methods before switching to using counter instead.
#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  #We used counter at the end. I think counter was probably the easiest. The other methods we used were fairly difficult.