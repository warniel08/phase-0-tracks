# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#------------------------------------------
# My Routes
#------------------------------------------ 

get '/contact' do
  "1234 Any Street<br>Anytown, AK 01234"
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/:number_one/:number_two' do
  first_num = params[:number_one]
  second_num = params[:number_two]
  total_num = first_num.to_i + second_num.to_i
  "#{first_num} + #{second_num} = #{total_num}" 
end

# Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.

#------------------------------------------
# Release 1: Research
#------------------------------------------

# 1. Is Sinatra the only web app library in Ruby? What are some others?
  # No Sinatra is not the only web app library. There are a bunch of others: Ruby on Rails, Rack 'n' Alternatives, Hobo, Padrino, Volt, etc.


# 2. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
  # No, some others include Cubrid, PostgreSQL, etc.

# 3. What is meant by the term web stack?
  # Web stack is the software used for web development. One popular stack is the LAMP stack which consists of an OS (Linux), a web server (Apache), database software (MySQL), and a programming language (PHP). It's the stack of software used to create and host a website. 








