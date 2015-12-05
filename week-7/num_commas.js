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