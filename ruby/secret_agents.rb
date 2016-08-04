#encrypt method
#define encrypt method
#set index variable
#set string variable
#create while loop that has index position less than string length
#set z character to a
#skip the space in the string, assume lowercase
#advance each letter of the string one letter forward
#end the method

#decrypt method
#define decrypt method
#set index variable
#set string variable
#set alpha variable
#create while loop that has index position less than string length
#skip the space in the string, assume lowercase
#subtact string one character backwards from alpha string save that in current string
#use letter variable to replace character
#end the method



def encrypt(x)
	index = 0
	string = x
	while index < string.length
		if string[index] == " "
			index += 1
		elsif string[index] == "z"
			string[index] = "a"
			index += 1
		else
			string[index] = string[index].next
  			index += 1
  		end
	end
	string
end




def decrypt(x)
	index = 0
	string = x
	alpha = "abcdefghijklmnopqrstuvwxyz"
	while index < string.length
		if string[index] == " "
			index += 1
		else
			letter = string[index]
			letter = alpha.index(letter)-1
			letter = alpha[letter]
			string[index] = letter
  			index += 1
  		end
	end
	string
end

#puts decrypt(encrypt("swordfish"))

# ask if the user wants to decrypt or encrypt a password
# ask user for password
# run password through desired method
# print results to screen 

puts "Would you like to encrypt or decrypt a password?"
question = gets.chomp

until question == "encrypt" || question == "decrypt"
	puts "Please enter encrypt or decrypt"
	question = gets.chomp
end

puts "What is the password?"
password = gets.chomp


if question == "encrypt"
		puts encrypt(password)
else 
		puts decrypt(password)
end









