# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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
  p doubled_numbers.flatten.map(&:to_i)
  end
  def credit_card_check
    if check_card%10==0
      return true
    else
      return false
    end
  end
end
p my_card=CreditCard.new(4567876898678394)
my_card.check_card






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
