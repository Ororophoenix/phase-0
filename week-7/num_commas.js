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
function separateByComma(number) {
  var stringNumber = number.toString().split("");
  var indexOfLastNumber = stringNumber.length;

  for (var counter = 3; counter <= indexOfLastNumber ; counter += 3 ) {
    var slices = indexOfLastNumber - counter;
    var numWithCommas = stringNumber.splice(slices, 0 ,",");
  };
  console.log(stringNumber.join(""));
};

separateByComma(1569743);


// Your Own Tests (OPTIONAL)




// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  //We approached the problem differently. In my first solution I reversed the number before inserting the commas and reversing it back. With this solution that was unecessary this time with the solution we created.
//What did you learn about iterating over arrays in JavaScript?
  //This was a concept that kind of confused me at first but my pair helped me understand how each piece worked and why it was structured that way.
//What was different about solving this problem in JavaScript?
  //It was really difficult because we could not use JavaScript documentation to look up different methods so we would think of ruby methods and try to find an equivalent in Javascript.
//What built-in methods did you find to incorporate in your refactored solution?
  //I actually didn't use any more built-in methods. I think our initial code was pretty great if I do say so myself. But I did take out or returnToString variable as it was redundant.