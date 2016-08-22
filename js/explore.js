//Write a reverse function in js

//Input: string
//Steps:
//	Create an empty string and a string with the word in it
// Take the last latter of the string and put it in the new, formerly empty
//string
//Output: reversed string

var str = "hello";
var reversedStr = "";

//how to take the last letter out of the string and put it in reversedStr?????

var strLength = str.length;
var counterLength = strLength;

for (var i=0; i < counterLength; i++){
	var reversedStr = reversedStr + str.substr(strLength-1, 1);
	strLength = strLength-1;
}

console.log("The string: " + str + " \nBecomes: " + reversedStr);