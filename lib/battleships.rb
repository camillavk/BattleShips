require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class BattleShips < Sinatra::Base
	set :views, Proc.new{File.join(root, '..', "views")}
	enable :sessions

	GAME = Game.new


  get '/' do
    @player1 = params[:player1]
    @player2 = params[:player2]
  	erb :index
  end

  post '/' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :index
  end

  get '/new_player' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :new_player
  end

  post '/new_player' do
  	@player1 = params[:player1]
    @player2 = params[:player2]
  	session[:me] = params[:player1]
  	GAME.add_player(@player1)
    GAME.add_player(@player2)
    redirect '/'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
