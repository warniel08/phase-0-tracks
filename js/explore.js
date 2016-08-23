//Write a reverse function in js

//Input: string
//Steps:
//	Create an empty string and a string with the word in it
// Take the last latter of the string and put it in the new, formerly empty
//string
//Output: reversed string

var str = "hello"

function reverse(str) {
	var reversedStr = "";

	var strLength = str.length;
	var counterLength = strLength;

	for (var i=0; i < counterLength; i++){
		reversedStr = reversedStr + str.substr(strLength-1, 1);
		strLength = strLength-1;
	}
	return reversedStr
}


if (1 == 1) {
	console.log("The string: " + str + " \nBecomes: " + reverse(str));
}
