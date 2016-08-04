#encrypt method
#set index variable
#define encrypt method
#ask user for a string
#store the string in a variable
#advance each letter of the string one letter forward
#keep space character a space character, assume lowercase
#print the new string to the screen
#end the method

#decrypt method
#define decrypt method
#ask user for a string
#store the string in a variable
#reverse each letter of the string one letter backward
#keep space character a space character, assume lowercase
#print the new string to the screen
#end the method



def encrypt(x)
	index = 0
	string = x
	while index < string.length
		if string[index] == " "
			index += 1
		else
		string[index] = string[index].next
  		index += 1
  	end
	end
	puts string
end

encrypt("one two")

