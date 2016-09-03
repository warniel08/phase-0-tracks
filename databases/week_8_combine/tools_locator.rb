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
  Name VARCHAR(255)
 );
SQL

create_garage_table = <<-SQL
	CREATE TABLE IF NOT EXISTS Garage(
  Location VARCHAR(255),
  Tool_ID INT,
  FOREIGN KEY (Tool_ID) REFERENCES Tools(ID)
 );
SQL

create_shed_table = <<-SQL
	CREATE TABLE IF NOT EXISTS Shed(
  Location VARCHAR(255),
  Tool_ID INT,
  FOREIGN KEY (Tool_ID) REFERENCES Tools(ID)
 );
SQL

tools_db.execute(create_tools_table)
tools_db.execute(create_garage_table)
tools_db.execute(create_shed_table)

#----------------------------------------------
# Methods
#----------------------------------------------

def create_tool(tools_db, name)
	tools_db.execute("INSERT INTO Tools (Name) VALUES (?)", [name])
end

def create_garage_location(tools_db, location, tool_id)
	tools_db.execute("INSERT INTO Garage (Location, Tool_ID) VALUES (?, ?)", [location, tool_id])
end


create_tool(tools_db, "shovel")
tool = tools_db.execute("SELECT * FROM Tools")

tool_ary = []

tool.each do |tool|
	tool_ary << "#{tool["ID"]}"
	tool_ary
end
p tool_ary

create_garage_location(tools_db, "west wall", tool_ary[1])
gar_location = tools_db.execute("SELECT * FROM Garage")

tool_loc_ary = []

gar_location.each do |location|
	tool_loc_ary << "#{location["Location"]}"
	tool_loc_ary
end

p tool_loc_ary




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






