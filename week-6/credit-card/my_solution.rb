# Class Warfare, Validate a Credit Card Number


# I worked on this challenge Lindsey Stevenson
# I spent [4] hours on this challenge.

# Pseudocode

# Input: a credit card number (string)
# Output: true / false

# Steps:

# Initialize a method to accept a credit card number passed as a string
# define a check card method to return true for a valid card and false for an invalid card
  # If the card number is not 16 digits
# raise an ArgumentError
  # Elsif the card number is 16 digits
  # start at 2nd to last number and double it
  # repeat for every other number in the card number (going backwards) until the first digit (including the first digit)
  # sum all the digits in the card number but break out double digits
  # the total must be evenly divisible by 10
# return true
  # else - return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_number)
    if card_number.to_s.size != 16
      raise ArgumentError.new("Please enter 16 digit credit card number")
    else @card_number=card_number.to_s
    end
  end

  def check_card

    split_numbers=@card_number.reverse.split(//).map(&:to_i)

    doubled_numbers = split_numbers.each_with_index.map{|number, index|
      if (index % 2 != 0)
        product = number * 2
          if product >= 10
          product.to_s.split(//)
          else product
          end
      else
        number
      end }

    doubled_numbers.flatten!.map!(&:to_i)
    sum = doubled_numbers.inject{|sum,number| sum + number }

    if ( sum % 10 == 0)
      true
    else
      false
    end
  end
end

my_card=CreditCard.new(4567876898678394)
p my_card.check_card





# Refactored Solution

=begin
    class CreditCard
  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new("Please enter 16 digit credit card number")
    else @card_number=card_number.to_s
    end
  end
  def check_card
    split_numbers=@card_number.reverse.split(//)
    count_odd=1
    while
      each_with_index { |digit, index| if index odd? digit.to_i * 2 }
  end
end
=end






# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
  We had a difficult time figuring out how to sum up the array
What new methods did you find to help you when you refactored?
  I did not use any new methods for refactoring
What concepts or learnings were you able to solidify in this challenge?
  I got a lot more experience with if and else. we had so many layers to the original solution to make surei t worked properly.
=end