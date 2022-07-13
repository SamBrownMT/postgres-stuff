ENV['APP_ENV'] = 'test'

require './server'
require 'rack/test'

describe 'server' do 
	require Rack::Test::Methods

	def app 
		Sinatra::Application
	end

end