require 'sinatra/base'

class Application < Sinatra::Base
  set :bind, '0.0.0.0'

  get '/' do
    'Hello World'
  end
end
