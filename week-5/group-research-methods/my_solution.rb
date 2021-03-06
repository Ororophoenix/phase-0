# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

=begin
pseudocode
array
research "contains" method
create a blank array
iterate through array to find words to keep
return the new altered and duplicated array
research:
.include? will determine if a given string contains a string or character
  "hello".include? "lo"   #=> true
hash
create a blank hash? or array?
iterate through the source to find pets of a given age
return new altered and duplicated hash or array
=end

def my_array_finding_method(source, thing_to_find)
  output = []
  source.each do |x|
    if "#{x}".include? "#{thing_to_find}"
      output << "#{x}"
    end
  end
  return output
end

def my_hash_finding_method(source, thing_to_find)
  output = []
  source.each do |key,value|
    if value == thing_to_find
      output << "#{key}"
    end
  end
  return output
end

#Identify and describe the Ruby method(s) you implemented.
=begin
  my_array_finding_method
    - iterate through source array
    - if element matches what we're looking for
    - add it to the new array
  my_hash_finding_method
    - iterate through source hash
    - if a value matches what we're looking for
    - add corresponding key to new array
=end

# Person 2

# Input: source array, change to make
# Output: permanently changed source array
# Steps
# 1. find location of integers in array
# 2. IF element (at a location in array) is an integer
# 3. (THEN) add change to element (at that location)
# 4. return array

def my_array_modification_method!(source, thing_to_modify)
  source.each_index do |x|

    if source.at(x).is_a?(Integer)
      source[x] = source[x] + thing_to_modify
    end

  end

  source
end

# Input: source hash, change to make
# Output: permanently changed source array
# Steps
# 1. access values in hash
# 2. apply change to each value in hash
# 3. return hash

def my_hash_modification_method!(source, thing_to_modify)

  source.each_pair { |key, value| source[key] = value + thing_to_modify}

  return source

end

# Identify and describe the Ruby method(s) you implemented.

# For the array method:
# I iterated through the indices of the array using `.at(index)`,
# and used the `.is_a?(ObjectType)` to determine if the array
# element at each index was an Integer. (You can also use
#   `is_a?()` on other objects, Strings, Arrays, Hashes.)

# For the hash method:
# I used the iterator `.each_pair` (just like `.each`, but
# takes two parameters— one for the key and one for value)
# to access each key-value pair in the pets hash, and added
# the modifying argument to the value (using the parameter
# for value).

# For reading through the Ruby Docs:
# GOOD LUCK. Ugh. Seriously, the docs are so dense and
# unhelpfully arranged/explained. It took me a good hour into
# this challenge to remember/figure out that you can use all the
# Object methods on Arrays, Hashes, Strings, whatever, so the
# toolbox widened considerably. (Link just in case:
# http://ruby-doc.org/core-2.2.3/Object.html) I also had better
# luck understanding how other built-in methods work when bloggers
# explained it. Here are a few blogs I learned from:
# http://www.globalnerdy.com/tag/enumerating-enumerable/ &
# http://www.eriktrautman.com/posts?tag_filter=Ruby+Explained

# Person 3
=begin
pseudocode -Array
iterate through source array
sort array by numerical and alphabetical order

-Hash
sort through array by value
place in numerical order
=end
def my_array_sorting_method(source)
    source.sort {|first_element, second_element|first_element.to_s<=>second_element.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by { |key, value|  value }
end

# Identify and describe the Ruby method(s) you implemented.


=begin
Identify and describe the Ruby method you implemented
  I used sort to place the array in alphabetical order. I also used .to_s to convert the numbers in to strings so they could be sorted.
  I ysed sort_by for the hash to specify that I wanted the sort to be conducted by the value instead of the key.
Teach your accountability group how to use the methods
  to sort the array you needed to call sort on the argument source. I set the block parameters to first and second element because it is easier for me to understand instead of a and b. (a and be always make me feel like they are other variables) First and second element need to be compared with the space ship to tell the array what way it should sort it. They also had to be set as strings so the numbers could be sorted as well.
Share any tricks you used to find and decipher the Ruby Docs
  this may seem simple but i just realized there is a search bar at the top of classes and methods and since the list is no in alphabetical order it helps with finding things.
=end

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#