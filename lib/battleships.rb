require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class BattleShips < Sinatra::Base
	set :views, Proc.new{File.join(root, '..', "views")}
	enable :sessions

	GAME = Game.new


  get '/' do
  	@name = session[:me]
  	erb :index
  end

  get '/new_player' do
    
  erb :new_player
  end


  post '/new_player' do
  	player = Player.new
  	player.name = params[:player_name]
  	session[:me] = params[:player_name]
  	Game.add_player player
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
