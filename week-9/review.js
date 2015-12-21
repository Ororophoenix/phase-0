/*Pseudocode
create a method
must accept an argument that is an integer
  raise error if it is not a number
(instance method) create conditionals for the answer
  IF answer is to high return :high
  ELSE IF it is correct return :correct
  ELSE if its low return :low
END

check if the answer is correct
create method that
  if answer is :correct return boolean true/false
  create function that checks original method
  */

//Solution
var answer = 7

var guessingGame = function(answer) {
  if (answer == NaN)
    console.log("Answer must be a number");
}

var guess = function(number){
  if (number == answer)
    console.log("correct");
  else if (number < answer)
    console.log("low");
  else
    console.log("high");
}

var solved = function(number){
  if (number==answer)
    console.log(true);
  else
    console.log(false)
}

guess(7)
solved(7)

/*REFLECTION
What concepts did you solidify in working on this challenge?
  //I can create functions that work I just cant get them to talk to each other haha. I am going to do more research on this because this is a problem I have struggled with before in Ruby.
What was the most difficult part of this challenge?
  //trying to get the functions to work with each other. They work individually but not together.
Did you solve the problem in a new way this time?
  //not really. I was short on time so I didnt have time to look up a lot of new methods
Was your pseudocode different from the Ruby version? What was the same and what was different?
  //Yea I think my pseudcode improved a lot since that challenge.
*/