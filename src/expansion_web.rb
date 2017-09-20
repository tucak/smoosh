require 'sinatra'

class ExpansionWeb < Sinatra::Base
  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
  end

  not_found do
    'Error 404 - Page Not Found'
  end

  error do
    'Error 500 - Sorry there was an error'
  end

  get '/' do
    "Hello #{settings.environment}!"
  end

  get '/expand' do
    erb :expansion_form
  end

  post '/expand/submit' do
  end
end
