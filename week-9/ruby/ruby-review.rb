# I worked on this challenge by myself
# This challenge took me 3 hours.

# Pseudocode
=begin
create method that only takes a string
  IF there is no string return a empty string
  ELSE reverse each word in the sentence

=end



# Initial Solution
 def reverse_words(string)
   string_parts = string.split
   if string_parts.length == 0
     return string
   else
     string_parts.each {|word| word.reverse!}
       return string_parts.join(' ')
   end
 end





# Refactored Solution
def reverse_words(string)
  return string.split.each {|word| word.reverse!}.join(' ')
end

# Reflection
