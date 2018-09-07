require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      pirate = params[:pirate]
      @pirate = Pirate.new(pirate)
      @ship1 = Ship.new(pirate[:ships][0])
      @ship2 = Ship.new(pirate[:ships][1])

      erb :"pirates/show"
    end

  end
end
