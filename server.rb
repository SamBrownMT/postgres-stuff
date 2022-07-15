require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

connection = PG.connect(ENV['DATABASE_URL'])

get '/number-of-pets' do 
	number_of_pets = connection.exec_params("select name from pets").values.count
	"#{number_of_pets}"
end