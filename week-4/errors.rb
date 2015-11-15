# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# The error occurs on line 8
# 3. What is the type of error message?
# This is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# The interpreter did not expect an expect an equals sign between
# 6. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#Error occurs on line 35
# 2. What is the type of error message?
# No name error
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# Name error
# 5. Why did the interpreter give you this error?
# the name is not defined as a variable

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# error occurs on line 50
# 2. What is the type of error message?
# No method error
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main
# 4. Where is the error in the code?
# in the parentheses
# 5. Why did the interpreter give you this error?
# the method has no parameters

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# error occurs on line 65
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
#cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# the interpreter did not expect a argument after cartmans_phrase
# 5. Why did the interpreter give you this error?
# there is no parameter set when the method was defined but there was a argument put in when it was called.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Fuck you, Kyle")

# 1. What is the line number where the error occurs?
# the error occurs on line 84
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# there is the wrong number of arguments for the method
# 4. Where is the error in the code?
# the interpreter did not recieve a argument after cartman_says
# 5. Why did the interpreter give you this error?
# the method is called but there is no argument entered



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Stan")

# 1. What is the line number where the error occurs?
# The error occurs on line 105
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# There are the wrong number of arguments for this method (1 for 2)
# 4. Where is the error in the code?
# The interpreter should have recieved two strings when cartmans_lie was called
# 5. Why did the interpreter give you this error?
# only one argument was called

# --- error -------------------------------------------------------

"Respect my authoritay!"*5

# 1. What is the line number where the error occurs?
# the error occurs on line 124
# 2. What is the type of error message?
#Type error
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
# the number is before the string.
# 5. Why did the interpreter give you this error?
# A number cannot be multiplied by a string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/4


# 1. What is the line number where the error occurs?
# the error occurs on line 139
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# Divided by 0
# 4. Where is the error in the code?
# after the local variable (20/0)
# 5. Why did the interpreter give you this error?
# the interpreter cannot set the local variable to 20/0 because ruby does not divide numbers by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# the error occurs on line 155
# 2. What is the type of error message?
#Load Error
# 3. What additional information does the interpreter provide about this type of error?
#require_relative: cannot load such file
# 4. Where is the error in the code?
# The whole thing
# 5. Why did the interpreter give you this error?
# This file does not exist on my computer in the place that ruby is searching for it.


# --- REFLECTION -------------------------------------------------------
#Write your reflection below as a comment.
#Which error was the most difficult to read?
  #I think all of the errors were pretty simple.
#How did you figure out what the issue with the error was?
  #I read the error prompt on the command line and compared it to the code.
#Were you able to determine why each error message happened based on the code?
  #Yes
#When you encounter errors in your future code, what process will you follow to help you debug?
#I started this exercise but did not finish it so I already used this method to help debug my code.



