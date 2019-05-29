require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )

require_relative( './models/student')
also_reload( './models/*' )

get '/students' do
  @students = Student.all()
  erb(:index)
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end