// In algos.js, write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
//Add driver code that tests your function on a few arrays.

// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// Input: take words or phrases and put them into an array
// Steps: 
	// create empty array
	// use "some string".length to record the length of the string to use to compare to eachother
	// sort the lengths in the array from smallest to largest
		// sort these by comparing the first and second values
		// IF one or the other value is larger move it to the next index position
			// then compare the next two values and so on and so forth
	// once the sorting is done, use a method to take the last value in the array and PRINT it to the screen
// Output: longest phrase will be printed to the screen

var longest = function() {

	var words = ["apple", "gold", "building", "house", "tent", "screen"];
	var tie_array = [];

	for (var i = 0; i < words.length; i++) {
		if (words[i].length > 5) {
			tie_array.push(words[i]);
			if (tie_array.length > 1) {
				if (tie_array[0].length > tie_array[1].length) {
					console.log(tie_array[0]);
				} else {
					console.log(tie_array[1]);
				}
			}
		}
	}
}

longest()

