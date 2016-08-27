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
		// use the index in the array and the length of that word to in an IF statement to know if they are greater than or equal to 6 letters
		// IF the word is greater than or equal to 6 letters it gets pushed to a new array
			// IF the new array is equal to two words and IF the index 0 of the new array is equal to index 1 say there is a tie
			// ELSE IF index 0 length is greater than index 1 length
				// PRINT "The longest word is + the new array index 0 or 1"
// Output: longest word will be printed to the screen

var longest = function(array) {

	var words = array;
	var tie_array = [];

	console.log(words)

	for (var i = 0; i < words.length; i++) {
		if (words[i].length >= 1) {
			tie_array.push(words[i]);
			//only works if there are two words greater than or equal to 6 letters long
			if (tie_array.length === 2) { 
				if (tie_array[0].length === tie_array[1].length) {
					console.log("There was a tie between: " + tie_array[0] + " and " + tie_array[1]);
				}	else if (tie_array[0].length > tie_array[1].length) {
					console.log("The longest word is: " + tie_array[0]);
				} else if (tie_array[0].length < tie_array[1].length) {
					console.log("The longest word is: " + tie_array[1]);
				}
			}
		}
	}
}

// var words_array = ["apple", "gold", "building", "house", "screw", "sanctuary"];
// var another_array = ["tent", "golf", "high", "five", "secret", "garden"];
// longest(words_array);
// longest(another_array);
// console.log();

//--------------------------------------------------------------
// Release 1
//--------------------------------------------------------------

// Write a function that takes two objects and checks to see if the objects share at least one key-value pair
// Input: objects of key/value pairs
// Steps: 
	// Create three different obects with key/value pairs
		// Assign name, age, or pets as the object keys
		// Write a function that iterates through each of the objects and compares the results with each other
			//IF each object has the same keys, then return true
			//ELSE return false


var compareObjects = function(object1, object2) {
	var compare1 = object1;
	var compare2 = object2;
	
	var compare1Keys = Object.keys(compare1);
	var compare2Keys = Object.keys(compare2);
	
	for (var i = 0; i < compare1Keys.length; i++) {
		if (compare1Keys[i] === compare2Keys[i]) {
			return true;
		}	
		else {
			return false;
		}
	}
}

var object1 = {
	name: "Bill",
	age: 23,
	phone: "555-555-2424"
}

var object2 = {
	name: "Fred",
	books: 35,
	address: "1234 Any Street"
}

var object3 = {
	pets: 3,
	spouse: true
}

// console.log(compareObjects(object1, object2));
// console.log(compareObjects(object1, object3));

//--------------------------------------------------------------
// Release 2
//--------------------------------------------------------------


// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length
// Input: an integer into the function 
// Steps:
	// create function that allows one integer parameter
	// create an array with a word that is equal to or longer than 10 letters
	// iterate through the array to randomly pick words of random variance between 1 and 10 letters
	// add array to longest word function 10 times
// Output: longest word  function output

// var randomNumber = Math.floor(Math.random()*27);
//console.log(randomNumber);

var randomWordInsertion = function(num) {
	var words_array = [];
	
	var word = "efmlsmdgkl"; // chop this up into new words of varying length
	
	for (var i = 0; i < num; i++) {
		random_number_end = Math.floor(Math.random()*10)+1;
		word = word.slice(0, random_number_end);
		words_array.push(word);
	}

	return words_array;
	//console.log(word.slice(0, random_number));
}

for (var i = 0; i < 10; i++) {
	rand_num = Math.floor(Math.random()*10)+1;
	//console.log(rand_num);
	rand_word = randomWordInsertion(rand_num);
	longest(rand_word);
}



