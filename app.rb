require "bundler/setup"
Bundler.require(:default)
require "sinatra/reloader"

class App < Sinatra::Base
  configure do
    register Sinatra::Reloader
  end

  configure do
    set :views, settings.root + "/views"
  end

  get "/contribute" do
    slim :index
  end
end
