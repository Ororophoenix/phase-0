# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#define assert
#raise error unless yield is returned
#assert does not have arguments
#billybob is not equal to name

# 3. Copy your selected challenge here
require_relative 'my_solution'

describe CreditCard do
  describe '#initialize' do
    it 'Expects a single argument for the card' do
      expect(CreditCard.instance_method(:initialize).arity).to eq 1
    end

    it 'raises ArgumentError on card > 16' do
      expect { CreditCard.new(11111111111111112) }.to raise_error(ArgumentError)
    end

    it 'raises ArgumentError on card < 16' do
      expect { CreditCard.new(1) }.to raise_error(ArgumentError)
    end
  end

    it 'returns true for a valid card' do
      card = CreditCard.new(4408041234567901)
      expect(card.check_card).to eq true
    end

    it 'returns false for a bad card' do
      card = CreditCard.new(4408041234567906)
      expect(card.check_card).to eq false
    end
  end
end



# 4. Convert your driver test code from that challenge into Assert Statements

assert([object, :message, args])


assert(
  (CreditCard()===true)
  'Expects a single argument for the card'
  "1. "
  )

assert(
    (CreditCard.new===16),
    "CreditCard should have 16 digits",
    "2. "
    )

assert(
  CreditCard.new(4408041234567901)===true
  'returns true for a valid card'
  "3. "
  )

assert(
  CreditCard.new(4408041234567906)===false
  'returns false for a bad card'
  "4. "
  )



# 5. Reflection
#What concepts did you review or learn in this challenge?
  #I learned how to write test statements.
#What is still confusing to you about Ruby?
  #I am still confused about ways to identify what I want to select. I think I need to do more research on syntax.
#What are you going to study to get more prepared for Phase 1?
  #Syntax and i want to do some of the bonus challenges if I will have time before the program starts.