# there will be two tables, the 'tools' table and the 'location' table

# create ‘tools’ table, when i ask the user for the tool name the program will store it in a db with the id of the tool (1, 2, 3, 4, etc) and the name of the tool (hammer, saw, broom, screws)

# the tools table will also contain the location_id as a reference to where the tool will be located

# the second table will be the ‘location’ table which will have the id of the location (1, 2, 3, 4, etc) and the name of the location inside the shed (workbench, wb_drawers, wb_shelves, wire_shelves, attic)

# the two tables will be linked by a foreign key in the tools table referencing the primary key of the location table



require 'sqlite3'

#----------------------------------------------
# Create Database
#----------------------------------------------

tools_db = SQLite3::Database.new("tools_locator.db")
tools_db.results_as_hash = true

#----------------------------------------------
# Create tables in database then execute 
#----------------------------------------------

create_tools_table = <<-SQL
 CREATE TABLE IF NOT EXISTS Tools(
 	ID INTEGER PRIMARY KEY,
  Name VARCHAR(255),
  Location_ID INTEGER,
  FOREIGN KEY (Location_ID) REFERENCES Location(ID)
 );
SQL

create_location_table = <<-SQL
	CREATE TABLE IF NOT EXISTS Location(
		ID INTEGER PRIMARY KEY,
  Name VARCHAR(255),
  UNIQUE (Name)
 );
SQL

tools_db.execute(create_tools_table)
tools_db.execute(create_location_table)

#----------------------------------------------
# Methods
#----------------------------------------------

def create_tool(tools_db, name, location_id)
	tools_db.execute("INSERT INTO Tools (Name, Location_ID) VALUES (?, ?)", [name, location_id])
end

def create_location(tools_db, loc_name)
	tools_db.execute("INSERT OR IGNORE INTO Location (Name) VALUES (?)", [loc_name])
end

#----------------------------------------------
# Driver code to ask user for information
#----------------------------------------------

user_choice_ary = []
tool_ary = []
location_ary = ["The Workbench Counter", "The Left WB Drawers", "The Right WB Drawers", "The WB Shelves", "The Wire Shelves", "The Attic"]

location_ary.each do |location|
	create_location(tools_db, location)
end

puts "\n---Welcome to the Tools/Things Storage Program---"
puts "\nThere are several different locations within \nthe shed that the tools/things will be stored in."

loop do 

	puts "\nChoose a location: "
	puts "---1--- The Workbench Counter"
	puts "---2--- The Left WB Drawers"
	puts "---3--- The Right WB Drawers"
	puts "---4--- The WB Shelves"
	puts "---5--- The Wire Shelves"
	puts "---6--- The Attic"
	puts "\nType 'done' when you are finished adding tools/things"
	print "Enter choice: "

	user_choice = gets.chomp
	
	if user_choice == "done"
		break
	elsif user_choice == "1"
		user_choice_ary << user_choice
		print "Please enter the tool/thing you would like to add? "
		user_tool = gets.chomp
		tool_ary << user_tool
		puts "\nYou entered: \nLocation: #{user_choice} \nItem: #{user_tool}"
		sleep 2
	elsif user_choice == "2"
		user_choice_ary << user_choice
		print "Please enter the tool/thing you would like to add? "
		user_tool = gets.chomp
		tool_ary << user_tool
		puts "\nYou entered: \nLocation: #{user_choice} \nItem: #{user_tool}"
		sleep 2
	elsif user_choice == "3"
		user_choice_ary << user_choice
		print "Please enter the tool/thing you would like to add? "
		user_tool = gets.chomp
		tool_ary << user_tool
		puts "\nYou entered: \nLocation: #{user_choice} \nItem: #{user_tool}"
		sleep 2
	elsif user_choice == "4"
		user_choice_ary << user_choice
		print "Please enter the tool/thing you would like to add? "
		user_tool = gets.chomp
		tool_ary << user_tool
		puts "\nYou entered: \nLocation: #{user_choice} \nItem: #{user_tool}"
		sleep 2
	elsif user_choice == "5"
		user_choice_ary << user_choice
		print "Please enter the tool/thing you would like to add? "
		user_tool = gets.chomp
		tool_ary << user_tool
		puts "\nYou entered: \nLocation: #{user_choice} \nItem: #{user_tool}"
		sleep 2
	elsif user_choice == "6"
		user_choice_ary << user_choice
		print "Please enter the tool/thing you would like to add? "
		user_tool = gets.chomp
		tool_ary << user_tool
		puts "\nYou entered: \nLocation: #{user_choice} \nItem: #{user_tool}"
		sleep 2
	else
		puts "\n***Please enter a valid option***"
	end

end

p user_choice_ary
p tool_ary









# def create_tool(tools_db, name)
# 	tools_db.execute("INSERT INTO Tools (Name) VALUES (?)", [name])
# end

# def create_shed_location(tools_db, location, tool_id)
# 	tools_db.execute("INSERT INTO Shed (Location, Tool_ID) VALUES (?, ?)", [location, tool_id])
# end


# create_tool(tools_db, "shovel")
# tool = tools_db.execute("SELECT * FROM Tools")

# tool_ary = []

# tool.each do |tool|
# 	tool_ary << "#{tool["ID"]}"
# end

# tool_ary.each do |tool_index|
# 	create_shed_location(tools_db, "west wall", tool_index)
# end

# tool_ary.each do |index|
# 	tool_num = tool_ary.split
# end

# p tool_num

#create_shed_location(tools_db, "west wall", tool_num)

#shed_location = tools_db.execute("SELECT * FROM Shed")



#----------------------------------------------
# Driver code to ask user for information
#----------------------------------------------

# print "What tool would you like to add to your inventory? "
# tool_user_input = gets.chomp
# print "Is the #{tool_user_input} in the garage or the shed? "
# location_picker = gets.chomp
# print "Where in the #{location_picker} is the #{tool_user_input} located? "
# garage_location = gets.chomp

# # if location_picker == "garage"
# # 	location_garage_input = gets.chomp
# # elsif location_picker == "shed"
# # 	location_shed_input = gets.chomp
# # else
# # 	puts "Please try again. Please enter the location 'shed' or 'garage'"
# # end

# create_tool(tools_db, tool_user_input)

# tool = tools_db.execute("SELECT * FROM Tools")
# gar_location = tools_db.execute("SELECT * FROM Garage")

# tool_ary = []
# tool_loc_ary = []

# tool.each do |tool|
# 	tool_ary << "#{tool["ID"]}"
# 	tool_ary
# end

# create_garage_location(tools_db, garage_location, tool_ary)

# gar_location.each do |location|
# 	tool_loc_ary << "#{location["Location"]}"
# 	p tool_loc_ary
# end






