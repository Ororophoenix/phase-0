#  Pseudocode
#  create array for names
#  put names into array
#  randomize the list
#  split the list up into groups or create hash with names as keys and group number as value



include Enumerable
def acct_groups(array)
  names_array=[]
  array.shuffle.each_slice(3) do |group|
    names_array<<group
  end
  names_array
end
p acct_groups(cohort)

#refactor
def acct_groups(array)
  array.shuffle.each_slice(3).each_with_object([]) do |group, collection|
  collection<<group
  end
end


#What was the most interesting and most difficult part of this challenge?
  #The most difficult parts of the challenges for me is knowing what I want to happen but not knowing exactly how to make it happen but I always thinkit is fun digging through ruby docs
#Do you feel you are improving in your ability to write pseudocode and break the problem down?
  #Yes but sometimes I do not follow my psuedocode. while I was trying to figure out how to complete my original idea I came across slice and decided to use that instead
#Was your approach for automating this task a good solution? What could have made it even better?
  #Yes I think it was a good solution.
#What data structure did you decide to store the accountability groups in and why?
  #I stored them in subarrays
#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  #My initial code ended up being fairly simple so I did not refactor much. Yes I used an enumerator for the first time and I used slice.