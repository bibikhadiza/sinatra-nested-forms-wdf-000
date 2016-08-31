require 'pry'

require './environment'

module FormsLab                 #ask ruchi about this module
  class App < Sinatra::Base
    get '/root' do
      erb :root
    end

    get '/' do
      erb :"pirates/response"
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      @all_ships = Ship.all

      erb :"pirates/show"
    end



  end
end
