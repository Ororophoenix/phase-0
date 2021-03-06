# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# positive integers
# What is the output? (i.e. What should the code return?)
  #integer with commas in the correct position converted to a string
# What are the steps needed to solve the problem?
  #define method with argument
  #convert argument to number
  #convert to string (to_s)
  #conditional statements
  #every 3 numbers input a comma
  #break up string into 3 digit components
  #place "," in between and then push them back together



# 1. Initial Solution
def separate_comma(num)
  chars = num.to_s.split('')
  comma_count = chars.size/3
  return num.to_s if chars.size < 4

  if chars.size % 3 == 0
    comma_count -= 1
  end

  n = -4
  comma_count.to_i.times do |i|
    chars.insert(n, ',')
    n -= 4
  end
  chars.join("")
end



# 2. Refactored Solution
def alt_sep_comma(num)
  rev_split = num.to_s.split('').reverse.each_slice(3).to_a
  index = 1
  while index < rev_split.size
    rev_split.insert(index, ',')
    index += 2
  end
  p rev_split.flatten.reverse.join('')
end



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
  Mentally breaking the problem down was a bit difficult. I knew what I wanted but not exacly how to get there.
Was your pseudocode effective in helping you build a successful initial solution?
  Yes a little. I knew the things that I wanted I just had to figure out how to use them and fit them all together.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  I used join and split for the first time. Split was kind of difficult because I did not know how to implement it and the ruby docs instruction was kind of confusing
How did you initially iterate through the data structure?

Do you feel your refactored solution is more readable than your initial solution? Why?
=end