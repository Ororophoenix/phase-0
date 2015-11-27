# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

#attempts:p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

#attempts: p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

#attempts: p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
=begin
number_array.map! {|element|
  if element.kind_of?(Integer)
    element += 5
  else
    element.map! {|number| number + 5}
  end
  }
=end



# Refactored:

number_array.map! {|element|

  element.kind_of?(Integer) ? element += 5 : element.map! {|number| number + 5}
  }

p number_array
=begin
What are some general rules you can apply to nested arrays?
  they esentially work like regular arrays but it is important to make sure evrything is opened and closed properly
What are some ways you can iterate over nested arrays?
  you can use map or each
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We used map! which we both had used before. We decided that map! was the best option because we needed the code to be destructive and map would iterate through each elementwhile executing the code.
=end
