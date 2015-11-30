#Attr Methods

# I worked on this challenge by myself

# I spent [#] hours on this challenge.

# Pseudocode
#create name class and initialize
#create greeting class initialize
#make name an instance variable
#persons name needs to be an instance variable

# Input: a persons name
# Output: sentence with a persons name
# Steps:

class NameData
  attr_reader :name
  def initialize(name)
    @name=name
  end
end

class Greetings
  def initialize()
  @person = NameData.new("name")
  end
  def hello
    p "hello #{person.name}! How wonderful to see you today."
  end
end



# Reflection
=begin
Release 1
What are these methods doing?
  these methods are creating a profile and allowing a user to change their account information
How are they modifying or returning the value of instance variables?
  they set the new information to the method class name and set instance of profile to a new

Release 2
What changed between the last release and this release?
  they added the attr_reader method to the code which cancelled the need for the what is age method
What was replaced?
  attr_reader method to the code which cancelled the need for the what is age method
Is this code simpler than the last?
  yes.

Release 3
What changed between the last release and this release?
  attr_writer was added
What was replaced?
  change_my_are was replaced.
Is this code simpler than the last?
  yes this is simpler because we were able to take out another method and when we called age at the bottom we simply needed to call age and not the method.

Release 4
  https://github.com/Ororophoenix/phase-0/blob/master/week-6/attr/release_4.rb
Release 5
  https://github.com/Ororophoenix/phase-0/blob/master/week-6/attr/release_5.rb

Reflection
What is a reader method?
  Creates instance variables and corresponding methods that return the value of each instance variable.
What is a writer method?
  Creates an accessor method to allow assignment to the attribute symbol.
What do the attr methods do for you?
  it is a easy way to share instance variables and cuts out a lot of the repetition
Should you always use an accessor to cover your bases? Why or why not?
  I dont think you should always use any one thing. I think they are useful in some situations but in others it may be important to break your code up if you need to have some variation.
What is confusing to you about these methods?
  I am still a little fuzzy on why they work I think I understand how to use them though.
=end