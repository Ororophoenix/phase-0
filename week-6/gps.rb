# Your Names
# 1)Monique Williamson
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #This wants to figure out if the food is in the library or not.
  if !library.has_key?(item_to_make)
   raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #this iterates through the list of food and determines if food matches the items to make


  #serving size returns array elements
  #remaining ingredients tells how much is left over
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  store_run= num_of_ingredients/serving_size
  #essentially this is just saying if we have enough ingredients or too much
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{store_run} of #{item_to_make}"
  else
    return "Calculations complete: Make #{store_run} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#reflection
=begin
What did you learn about making code readable by working on this challenge?
  I learned that I don't like refactoring someone elses code. Even though I knew this was a challenge where I would have to change things I was still hesitant to do it and felt like I had to keep some of the code from the original.
Did you learn any new methods? What did you learn about them?
  I didnt use any new methods in this challenge. But this was the first time i encoutered case and that was interesting to read about.
What did you learn about accessing data in hashes?
  I had to remember that everything isnt a trick question lol. I didnt learn anything new about accessing hashes.
What concepts were solidified when working through this challenge?
  I think this challenge just helped me read code and be able to picture what it does.
=end