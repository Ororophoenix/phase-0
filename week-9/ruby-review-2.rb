# Drawer Debugger

# I worked on this challenge Nick Davies
# I spent 1 hours on this challenge.

# Original Code
class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item (item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents=[]
    return "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type,:clean

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean=true
  end
end

#REFACTORED

class Drawer

  attr_accessor :contents, :open

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def add_item (item)
    @contents << item
  end

  def remove_item(item = @contents[-1]) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents=[]
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type,:clean

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean=true
  end
end


# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon= Silverware.new("spoon")


silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE


spatula= Silverware.new("spatula")
silverware_drawer.add_item(spatula)
raise Exception.new ("You do not have a spatula to remove") unless silverware_drawer.contents.include?(spatula)
silverware_drawer.remove_item(spatula)
spatula.eat
puts spatula.clean
silverware_drawer.remove_item()
silverware_drawer.view_contents

silverware_drawer.open = false
puts silverware_drawer.open
silverware_drawer.open = true
puts silverware_drawer.open

#What concepts did you review in this challenge?
  #We reviewed attr, and debugging errors
#What is still confusing to you about Ruby?
  #I think I am taking to it slowly. If I have time by myself I can usually understand what is happening it just happens slower than most people.
#What are you going to study to get more prepared for Phase 1?
  #I know that I need to study iteration and algorithms more.