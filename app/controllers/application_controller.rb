require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :home
    end

    post '/teams' do
      @member1 = params["team"]["members"][0]
      @member2 = params["team"]["members"][1]
      @member3 = params["team"]["members"][2]
      @members = [@member1, @member2, @member3]
      @team = params["team"]
      erb :team
    end
end
