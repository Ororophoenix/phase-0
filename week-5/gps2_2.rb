# GPS 2-2 RUBY
# KB DiAngelo & Monique Williamson
# Guide: Matthew Higgins

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a hash
  # set default quantity to 1
  # break up the string with whitespace as the divider
  # put each of those items into the hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash - keys are grocery items, and the values are quantities

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add a key-value pair to the hash
# output: the hash, but with a new value added

# Method to remove an item from the list
# input: item name
# steps:
  # remove a key-value pair from the hash
# output: the hash, but with the value removed

# Method to update the quantity of an item
# input: item name and new quantity amount
# steps:
  # find key and update value
# output: the hash with updated quantities

# Method to print a list and make it look pretty
# input: the hash
# steps:
  # print out "Your Grocery List"
  # prints all hash items with values
# output: the complete hash


def make_list(grocery_string)
  groceries = Hash.new(1)
  grocery_array = grocery_string.split(" ")
  grocery_array.each do |item|
    groceries[item] = 1
  end
  #print with whatever method we choose later on
  print_list(groceries)
  return groceries
end

def add_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
end

def remove_item(grocery_list, item)
  grocery_list.delete(item)
end

def quantity_update(grocery_list, item, quantity)
  grocery_list[item]= quantity
  p grocery_list
end

def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item} ... #{quantity}"
  end
end


#fake grocery list
my_fake_list = "apples oranges pears bananas"
grocery_list = make_list("")
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
remove_item(grocery_list, "lemonade")
quantity_update(grocery_list, "ice cream", 1)
print_list(grocery_list)

#refactored version
def make_list(grocery_string)
  groceries = Hash.new(1)
  grocery_array = grocery_string.split(" ")
  grocery_array.each { |item| groceries[item] = 1 }
  print_list(groceries)
  return groceries
end

def add_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
 list.delete(item)
end

def quantity_update(list, item, quantity)
    list[item]= quantity
end

def print_list(list)
  list.each { |item, quantity| puts "#{item} ... #{quantity}" }
end

#What did you learn about pseudocode from working on this challenge?
 #After watching the pseudocode video and doing this challenge it was a lot easier. I realized it did not have to include actual code but I needed to talk myself through the steps.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
 #A hash is better becuase you can use it for key and value pairs but an arrya is useful when a string is needed.
#What does a method return?
  # A method returns the shopping list
#What kind of things can you pass into methods as arguments?
  #you can pass other methods, hashes and arrays as arguments.
#How can you pass information between methods?
  #You can either use class or you can set the list as a argument in the other methods.
#What concepts were solidified in this challenge, and what concepts are still confusing?
  #I understand hashes a lot more but I am still a little confused about the ways to switch them to and from arrays.