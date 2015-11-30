# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #give it a range of letters in a array and a range of numbers
  #shuffle, join, and print

# Check the called column for the number called.
  #somehow set all index 0 to B all index 1 set to I etc...
  #use find to look for the number

# If the number is in the column, replace with an 'x'
  #use replace to swap the number for 'X'

# Display a column to the console
  #????

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters=['B','I','N','G','O']
    @numbers=(1..100).to_a
    @sample_number= @numbers.sample
    @sample_letter= @letters.sample

  end


  def check
    @bingo_board.transpose
    if @sample_letter=='B'
      return @bingo_board[0].index(@sample_number).replace('X')
    elsif @sample_letter == 'I'
      return @bingo_board[1].index(@sample_number).replace('X')
    elsif @sample_letter == 'N'
      return @bingo_board[2].index(@sample_number).replace('X')
    elsif @sample_letter == 'G'
      return @bingo_board[3].index(@sample_number).replace('X')
    elsif @sample_letter == 'O'
      return @bingo_board[4].index(@sample_number).replace('X')
    else
      return "Bingo call is not on this board"
    end
  end

end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters=['B','I','N','G','O']
    @numbers=(1..100).to_a
    @sample_number= @numbers.sample
    @sample_letter= @letters.sample

  end


  def check
    @bingo_board.transpose
    if @sample_letter=='B'
      return @bingo_board[0].index(@sample_number).replace('X')
    elsif @sample_letter == 'I'
      return @bingo_board[1].index(@sample_number).replace('X')
    elsif @sample_letter == 'N'
      return @bingo_board[2].index(@sample_number).replace('X')
    elsif @sample_letter == 'G'
      return @bingo_board[3].index(@sample_number).replace('X')
    elsif @sample_letter == 'O'
      return @bingo_board[4].index(@sample_number).replace('X')
    else
      return "Bingo call is not on this board"
    end
  end

end
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.check

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  My pseudocoding style is really informal. I really just use it to talk the probelm out to myself before starting. I dont usually follow my pseudocode step by step
What are the benefits of using a class for this challenge?
  You need to use the instance variables in different methods and you need to have access to them all.
How can you access coordinates in a nested array?
  you can access them like you would a regular array for example if you want the second thing in the third array you would write array=[2][1]
What methods did you use to access and modify the array?
  I used index, replace and transpose.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I used transpose to modify the array. Transpose puts all the numbers for B in its own array so I did not have to try to access the first element in each array.
How did you determine what should be an instance variable versus a local variable?
  I turned everything into an instance variable.
What do you feel is most improved in your refactored solution?
    I did not do much refactoring to my code. I honestly could not think how to make it more readable and I couldn't find any methods that could replace the ones I used to make the code function better.
=end