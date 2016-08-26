//--------------------------------------------------------------
// Release 0
//--------------------------------------------------------------

// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// Input: take words or phrases and put them into an array
// Steps: 
	// create empty array
	// PRINT the array to the screen to show what the words are
		// use FOR loop to iterate through the array
		// use array.length to record the length of the array for the iteration to use to compare to eachother
		// use the index in the array and the length of that word to in an IF statement to know if they are greater than 5 letters
		// IF the word is greater than 5 letters it gets pushed to a new array
			// IF the new array is equal to two words and IF the index 0 of the new array is larger than index 1
				// PRINT "The longest word is + the new array index 0 or 1"
// Output: longest word will be printed to the screen

var longest = function(array) {

	var words = array;
	var tie_array = [];

	console.log(words)

	for (var i = 0; i < words.length; i++) {
		if (words[i].length >= 6) {
			tie_array.push(words[i]);
			//only works if there are two words greater than 5 letters long
			if (tie_array.length === 2) { 
				if (tie_array[0].length === tie_array[1].length) {
					console.log("There was a tie between: " + tie_array[0] + " and " + tie_array[1]);
				}	else if (tie_array[0].length > tie_array[1].length) {
					console.log("The longest word is: " + tie_array[0]);
				} else {
					console.log("The longest word is: " + tie_array[1]);
				}
			}
		}
	}
}

var words_array = ["apple", "gold", "building", "house", "screen", "sanctuary"];
var another_array = ["tent", "golf", "high", "five", "secret", "garden"];
longest(words_array);
longest(another_array);

//--------------------------------------------------------------
// Release 1
//--------------------------------------------------------------



