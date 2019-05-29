require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )

require_relative( './models/student')
require_relative( './models/house')
also_reload( './models/*' )

get '/students' do
  @students = Student.all()
  @houses = House.all()
  erb(:index)
end

get '/students/new' do
  erb(:new)
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

#Two stage to create new-

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/houses/:id' do
  @house = House.find(params[:id])
  erb(:showhouse)
end
