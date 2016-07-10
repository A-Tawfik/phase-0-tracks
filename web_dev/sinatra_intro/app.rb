# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  p params
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

# Get route that displays address

get '/contact' do
 "<h2>Dev Bootcamp New York</h2><br>
  <a href='https://www.google.com/maps/place/Dev+Bootcamp/@40.706551,-74.009039,17z/data=!3m1!4b1!4m5!3m4!1s0x89c25a1656cee131:0x635795304f09ff55!8m2!3d40.706551!4d-74.009039'>48 Wall St<br> 
  New York, NY 10005</a>"
end

# Great job Get route if query params person available
get '/great_job' do
  person = params[:person]
  if person 
    "Great job, #{person}!"
  else
    "Good Job!"
  end
end



# GET route to add 2 numbers
get '/add/:num1/:num2' do
  p params
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  (num1+num2).to_s
end


# GET to search students in some way
get '/search/students' do
  p params
  name = params[:name]
  id = params[:id]
  age = params[:age]
  campus = params[:campus]
  response = ""
  sql_statment = "SELECT * FROM students "
  
  if params.length > 0
    sql_statment << "WHERE "
    if name
      sql_statment << "name='#{name}' AND "
    end
    if id
      sql_statment << "id='#{id}' AND "
    end
    if age
      sql_statment << "age='#{age}' AND "
    end
    if campus
      sql_statment << "campus='#{campus}' AND "
    end
    sql_statment << "ID>'0'"
  end

  students = db.execute(sql_statment)
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end






