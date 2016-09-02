require 'sqlite3'

tools_db = SQLite3::Database.new("tools_locator.db")
tools_db.results_as_hash = true

create_table_cmd = <<-SQL
 CREATE TABLE IF NOT EXISTS Tools(
 	ID INTEGER PRIMARY KEY,
  Name VARCHAR(255),
 );
SQL

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS Garage(
  Location VARCHAR(255),
  Tool_ID INT,
  FOREIGN KEY (Tool_ID) REFERENCES tools(ID)
 );
SQL

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS Shed(
  Location VARCHAR(255),
  Tool_ID INT,
  FOREIGN KEY (Tool_ID) REFERENCES tools(ID)
 );
SQL

tools_db.execute(create_table_cmd)