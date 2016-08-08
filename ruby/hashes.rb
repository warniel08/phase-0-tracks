# Ask user for information like: name, number of children, decor theme, 
# what's their favorite shade of green, how many rooms they have in their home,
# how many years they have lived in their home, do they watch HGTV?

# Convert the user information into the proper data type

# Print the hash to the screen after they have entered in all of the information

# If the user wants to update a key, then let them (no need for a loop)

# If designer says "none", skip the key update, if designer enters a statement 
# they want to change then ask for new value and update the key

# Assume user will enter the input correctly

# Print the latest version of the hash to screen, end


puts "\nWelcome to my Interior Design Program"

print "\nPlease enter your name: "
name = gets.chomp

print "How many children do you have? "
number_of_children = gets.chomp

print "What is your preferred decor theme? "
decor_theme = gets.chomp

print "What is your favorite shade of green? "
shade_of_green = gets.chomp

print "How many rooms do you have in your home? "
number_of_rooms = gets.chomp

print "How many years have you lived in your home? "
number_of_years = gets.chomp

print "Do you watch HGTV (y/n)? "
watch_hgtv = gets.chomp


user = {
	name: name,
	number_of_children: number_of_children,
	decor_theme: decor_theme,
	shade_of_green: shade_of_green,
	number_of_rooms: number_of_rooms,
	number_of_years: number_of_years,
	watch_hgtv: watch_hgtv,
}

print user