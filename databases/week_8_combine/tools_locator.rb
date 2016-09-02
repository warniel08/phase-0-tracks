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
  FOREIGN KEY (Tool_ID) REFERENCES tools(ID)
 );
SQL

create_shed_table = <<-SQL
	CREATE TABLE IF NOT EXISTS Shed(
  Location VARCHAR(255),
  Tool_ID INT,
  FOREIGN KEY (Tool_ID) REFERENCES tools(ID)
 );
SQL

tools_db.execute(create_tools_table)
tools_db.execute(create_garage_table)
tools_db.execute(create_shed_table)

#----------------------------------------------
# Methods
#----------------------------------------------

def create_tool(tools_db, name)
	tools_db.execute("INSERT INTO Tools (name) VALUES (?)", [name])
end

def create_garage_location(tools_db, location)
	tools_db.execute("INSERT INTO Garage (location) VALUES (?)", [location])
end


#----------------------------------------------
# Driver code to ask user for information
#----------------------------------------------

print "What tool would you like to add to your inventory? "
tool_user_input = gets.chomp
print "Where is the tool located (shed/garage)? "
location_picker = gets.chomp
if location_picker == "garage"
	location_garage_input = gets.chomp
elsif location_picker == "shed"
	

create_tool(tools_db, tool_user_input)
create_garage_location(tools_db, location_garage_input)




