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

print "\nPlease enter your first and last name: "
full_name = gets.chomp

print "How many children do you have? "
number_of_children = gets.chomp.to_i

print "What is your preferred decor theme? "
decor_theme = gets.chomp

print "What is your favorite shade of green? "
shade_of_green = gets.chomp

print "How many rooms do you have in your home? "
number_of_rooms = gets.chomp.to_i

print "How many years have you lived in your home? "
number_of_years = gets.chomp.to_f

print "Do you watch HGTV (y/n)? "
watch_hgtv = gets.chomp


user = {
	name: full_name,
	children: number_of_children,
	theme: decor_theme,
	shade: shade_of_green,
	rooms: number_of_rooms,
	years: number_of_years,
	hgtv: watch_hgtv,
}

puts "\n"
user.each do |question, answer|
	puts "#{question}: #{answer}"
end

puts "\nWould you like to udpate any information?"
puts "	Enter 'name' to change your name."
puts "	Enter 'children' to change the number of children."
puts "	Enter 'theme' to change decor theme."
puts "	Enter 'shade' to change shade of green."
puts "	Enter 'rooms' to change number of rooms."
puts "	Enter 'years' to change number of years."
puts "	Enter 'watch' to change if you watch HGTV or not."
puts "	Enter 'none' if you don't want to update anything."

puts "\n"
choice = gets.chomp.downcase
case choice
	when "name"
		print "\nPlease enter correct name: "
		name_change = gets.chomp
			user[:name] = name_change
			puts "\nThank you, #{name_change}."
	when "children"
		print "\nPlease enter correct number of children: "
		children_change = gets.chomp
			user[:children] = children_change
			puts "\nThank you, you entered #{children_change} children."
	when "theme"
		print "\nPlease enter correct decor theme: "
		theme_change = gets.chomp
			user[:theme] = theme_change
			puts "\nThank you, your preferred decor theme is: #{theme_change}."
		when "shade"
			print "\nPlease change your favorite shade of green: "
			shade_change = gets.chomp
				user[:shade] = shade_change
				puts "\nThank you, your favorite shade of green is: #{shade_change}."
		when	"rooms"
			print "\nPlease enter correct number of rooms in your home: "
			rooms_change = gets.chomp
				user[:rooms] = rooms_change
				puts "\nThank you, the correct number of rooms in your home is: #{rooms_change}."
		when "years"
			print "\nPlease enter the correct number of years you've lived in your home: "
			years_change = gets.chomp
				user[:years] = years_change
				puts "\nThank you, the correct number of years you've lived in your home is: #{years_change}."
		when "watch"
			print "\nPlease enter (y/n) if you watch HGTV: "
			hgtv_change = gets.chomp
				user[:hgtv] = hgtv_change
				puts "\nThank you, for updating your HGTV response to: #{hgtv_change}."
		when "none"
			puts "\nThank you, you chose to leave your input the same."
end

puts "\n"
user.each do |question, answer|
	puts "#{question}: #{answer}"
end
		











