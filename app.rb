require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      @pirate_ships = params[:pirate][:ships]

      @pirate_ships.each do |ship_attributes|
        Ship.new(ship_attributes)
      end

      @ships = Ship.all

      erb :'pirates/show'

    end

  end
end
