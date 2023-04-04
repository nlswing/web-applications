require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  
  get '/names' do
    name = params[:name]

    return "#{name}"
  end

  
  configure :development do
    register Sinatra::Reloader
  end

  
end