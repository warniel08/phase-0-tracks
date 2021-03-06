#--------------------------------------------------------
# 6.4 Solo Challenge
# Warner Nielsen
#--------------------------------------------------------

#--------------------------------------------------------
# Pseudocode
#--------------------------------------------------------

# Class that represents 7 dwarves called Dwarf
# it will contain the attributes of :age, :name, :working(random boolean that states true or false if they are working or not)
# initialize each new Dwarf with these three attributes
# => (save this bit of code when I need it: -->random_boolean = [true, false].sample)
# => just create 7 different dwarves, make an array of each dwarves name
# => randomize age in driver code so each dwarves age will be different 

# 3 methods and initialize method:

# intialize method(arguments of age, name, out_working boolean)
# => input: new class
# => steps:
			# PRINT "Creating new dwarf"
			# age attribute
			# name attribute
			# out_working attribute
# => output: all arguments

# method_one loads_mined(argument of number_of_loads)
# => input: integer
# => steps:
			# => IF loads < 3
				# => PRINT "Get back out there and work"
			# => ELSIF loads >= 3
				# => PRINT "Great day of work. Go rest!"
# => output: depends on conditional

# method_two is for hours_worked(argument of hours_integer)
# => input: integer
# => steps:
			# => take hours integer and multiply by 7
			# => PRINT the dwarf name and how many dwarf hours he worked today
# => output: string

# method_three whistle
# => input: no input
# => steps: PRINT "Just whistle while you work..."
# => output: string

class Dwarf

	attr_accessor :name, :out_working

	attr_reader :age

	def initialize(age, name, out_working)
		puts "\nCreating new dwarf..."
		sleep 2
		@age = age
		@name = name
		@out_working = out_working
	end

	def age
		@age
	end

	def name=(new_name)
		@name = new_name
	end

	def out_working=(working)
		@out_working = working
	end

	def loads_mined(number_of_loads)
		if number_of_loads < 7
			puts "\n#{@name} has only mined #{number_of_loads} loads today. \nI don't care that you are #{@age} years old. \nGet back out there and work. "
		elsif number_of_loads >= 7
			puts "\n#{@name} has mined #{number_of_loads} loads today. Great day of work.\nEspecially for a #{@age} year old."
		end
	end

	def hours_worked(hours_integer)
		hours_integer = hours_integer * 7
		if hours_integer < 49
			print "#{@name} claims he has worked #{hours_integer} dwarf hours today. \nWhere is #{@name}? Is he working?"
			if @out_working == true
				puts " Yes"
			else
				puts " No"
			end
		elsif hours_integer >= 49
			print "#{@name} has worked #{hours_integer} dwarf hours today. \nIs #{@name} still out working?"
			if @out_working == true
				puts " Yes"
			else 
				puts " No"
			end
		end
	end 

	def whistle
		puts "Just whistle while you work..."
	end

end

# Your user should be allowed to create as many instances of your class as they like.
# Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.
# When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.

#--------------------------------------------------------
# 6.4 Driver code
#--------------------------------------------------------

puts "\nWelcome to the Dwarf Generator"
puts "\nI will prompt you to input some information"
puts "into the dwarf generator. Have fun!"

puts "\nType 'exit' if you want to exit the Dwarf Generator."
puts "Hit 'Enter' if you would like to continue..."
user_input = gets.chomp
my_dwarf_array = []

until user_input == 'exit'

	user_data = []
	dwarves_names = ["Doc", "Grumpy", "Happy", "Sleepy", "Bashful", "Sneezy", "Dopey"]
	puts "\n#{dwarves_names.join(" ")}"
	puts "\nI will randomly assign your dwarf a name."
	puts "Your dwarf is #{user_name = dwarves_names.sample}. Hello #{user_name}!"
	user_data << user_name
	
	print "How old is #{user_name}? "
	user_age = gets.chomp
	user_age = user_age.to_i
	puts "Wow, #{user_name} is #{user_age}. Good for him."
	user_data << user_age

	print "\nHow many human hours did #{user_name} work today? (Dwarves multiply human hours \nby 7 hours when they calculate how many hours they've worked) "
	user_hours = gets.chomp
	user_hours = user_hours.to_i
	puts "#{user_name} worked #{user_hours} human hours today."
	user_data << user_hours

	print "\nHow many loads of jewels has #{user_name} mined today? "
	user_number_of_loads = gets.chomp
	user_number_of_loads = user_number_of_loads.to_i
	puts "#{user_name} has mined #{user_number_of_loads} loads today."
	user_data << user_number_of_loads

	print "\nIs your dwarf still working? (y/n) "
	user_still_working = gets.chomp
		if user_still_working == "y"
			user_still_working = true
			puts "#{user_name} is still working."
		else
			user_still_working = false
			puts "#{user_name} is not working."
		end
	user_data << user_still_working

	puts "\nName: #{user_data[0]}\nAge: #{user_data[1]}\nHours: #{user_data[2]}\nLoads: #{user_data[3]}\nWorking: #{user_data[4]}"

	puts "\nHit 'enter' to generate your new dwarf."
	puts "Type 'exit' if you would like to exit the Dwarf Generator."
	user_input = gets.chomp

	if user_input == ""
		my_dwarf = Dwarf.new(user_age, user_name, user_still_working)
		my_dwarf.loads_mined(user_number_of_loads)
		my_dwarf.hours_worked(user_hours)
		my_dwarf.whistle
		print "\nChange your Dwarf's name to something else: "
		my_dwarf.name = gets.chomp
		puts "Dwarf's old name: #{user_name}\nDwarf's new name: #{my_dwarf.name}"
		my_dwarf_array << my_dwarf.name
		my_dwarf_array << my_dwarf.age
		my_dwarf_array << my_dwarf.out_working
		print "\nWould you like to enter input for a new dwarf? (y/n) "
		user_again = gets.chomp
			if user_again == "y"
				puts "\nAlright.....\n"
			else
				break
			end
	elsif user_input == "exit"
		break
	end

end

puts "\n"
my_dwarf_array.each { | item | puts "#{item}" }

#--------------------------------------------------------
# Test Code
#--------------------------------------------------------

# Driver code
# Variables test
# out_working = [true, false].sample
# dwarves_names = ["Doc", "Grumpy", "Happy", "Sleepy", "Bashful", "Sneezy", "Dopey"].sample
# age = rand(40..150)
# num_loads = rand(0..14)
# num_hours = rand(0..24)

# New instance test
# new_dwarf = Dwarf.new(age, dwarves_names, out_working)
# new_dwarf.loads_mined(num_loads)
# new_dwarf.hours_worked(num_hours)
# new_dwarf.whistle
# new_dwarf.name = "The Dwarf Formerly Known as #{new_dwarf.name}"
# new_dwarf.out_working = "out sourced his work"
# puts "#{new_dwarf.name} is still #{new_dwarf.age} but has #{new_dwarf.out_working}."


