require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  
  get '/names' do
    return "Julia"
  end

  
  configure :development do
    register Sinatra::Reloader
  end

  
end