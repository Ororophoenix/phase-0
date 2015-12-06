// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Nicolette Chambers

// Pseudocode
/*def seperate comma function which will take a integer as a argument
transform to a string
count from last number
use a for loop to insert comma at every three numbers
should only include corrent number of commas
*/

// Initial Solution
function seperateComma(number) {
  var stringNumber = number.toString().split("");
  var indexOfLastNumber = stringNumber.length;

  for (var counter = 3; counter <= indexOfLastNumber ; counter += 3 ) {
    var slices = indexOfLastNumber - counter;
    var numWithCommas = stringNumber.splice(slices, 0 ,",");
    var returnToString = numWithCommas.join();
  };
  console.log(stringNumber.join(""));
};

seperateComma(1569743);



// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection
/*What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  We did approach this differently than the original problem.Originally I reversed the number and turned it to a string and went throguh this whole complicated process with this version it was simpler and to just use a counter and increase it.
What did you learn about iterating over arrays in JavaScript?
  I learned to check syntax! I had to make sure the colons and semi colons were in the right spaces.
What was different about solving this problem in JavaScript?
  I kept thinking of ruby methods and had to stop doing that. It was also harder because we weren't allowed to look at javadocumentation until the refactor so we had to go off of things we guessed would work and then google.
What built-in methods did you find to incorporate in your refactored solution?

*/
