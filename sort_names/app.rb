require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  
  post '/sort-names' do
    names = params[:names]

    return names.split(",").sort.join(",")
  end

  

  

    

  
  configure :development do
    register Sinatra::Reloader
  end

  
end