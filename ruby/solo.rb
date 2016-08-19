#--------------------------------------------------------
# 6.4 Solo Challenge
# Warner Nielsen
#--------------------------------------------------------

# Class that represents 7 dwarves called Dwarf
# it will contain the attributes of :age, :name, :working(random boolean that states true or false if they are working or not)
# initialize each new Dwarf with these three attributes
# => (save this bit of code when I need it: -->random_boolean = [true, false].sample)
# => just create 7 different dwarves, make an array of each dwarves name
# => randomize age in driver code so each dwarves age will be different 

# 3 methods:

# method_one loads_mined(argument of number_of_loads)
# => input: integer
# => steps:
			# => IF loads < 3
				# => PRINT "Get back out there and work"
			# => ELSIF loads >= 3
				# => PRINT "Great day of work. Go rest!"
# => output:

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

	def initialize(age, name, out_working)
		puts "Creating new dwarf..."
		sleep 2
		@age = age
		@name = name
		@out_working = out_working
	end

	def loads_mined(number_of_loads)
		if number_of_loads < 3
			puts "#{@name} has only mined #{number_of_loads} loads today. Get back out there and work."
		elsif number_of_loads >= 3
			puts "#{@name} has mined #{number_of_loads} loads today. Great day of work. Go rest!"
		end
	end

	def hours_worked(hours_integer)
		hours_integer = hours_integer * 7
		puts "#{@name} has worked #{hours_integer} dwarf hours today."
	end 

end

dwarves_names = ["Doc", "Grumpy", "Happy", "Sleepy", "Bashful", "Sneezy", "Dopey"]
rand_dwarf = dwarves_names.sample
new_dwarf = Dwarf.new(45, rand_dwarf, true)
new_dwarf.loads_mined(3)
new_dwarf.hours_worked(4)







