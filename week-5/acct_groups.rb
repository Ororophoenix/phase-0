=begin
  Pseudocode
  create array for names
  put names into array
  randomize the list
  split the list up into groups or create hash with names as keys and group number as value
  need to create condition that makes the minimum amount of group members 3
=end

include Enumerable
def acct_groups(array)
  names_array=[]
  names_array.shuffle.each_slice(3) do |a, b, c|
    put [a+b+c]
  end
end

p acct_groups(["monique", "carina", "marisa", "siobahn", "arushi", "lonnie"])