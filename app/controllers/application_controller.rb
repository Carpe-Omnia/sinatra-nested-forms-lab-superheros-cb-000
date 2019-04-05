require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      puts params["team"]
      @member1 = params["team"]["members"]["0"]
      puts @member1
      @member2 = params["team"]["members"]["1"]
      puts @member2
      @member3 = params["team"]["members"]["2"]
      puts @member3
      @team = params["team"]
      erb :team
    end

end
