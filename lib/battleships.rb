require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'opponent_board'
require_relative 'player_board'
require_relative 'cell'
require_relative 'board'

class BattleShips < Sinatra::Base
	set :views, Proc.new{File.join(root, '..', "views")}
	enable :sessions

  GAME = Game.new
  

  get '/' do
    @player1name = session[:player1name]
    @player2name = session[:player2name]
  	erb :index
  end

  post '/' do
    
    session[:player1name] = params[:player1name]
    @player1name = session[:player1name]
    @player1 = Player.new
    GAME.add_player(@player1)
    @player1.name = session[:player1name]

    session[:player2name] = params[:player2name]
    @player2name = session[:player2name]
    @player2 = Player.new
    GAME.add_player(@player2)
    @player2.name = session[:player2name]

    erb :index
  end

  get '/new_player' do
    erb :new_player
  end

  # post '/new_player' do
  #   session[:player1] = params[:player1]
  # 	session[:player2] = params[:player2]
  #   erb :index
  # end

  get '/game' do
  @player_board1 = PlayerBoard.new
  @opponent_board1 = OpponentBoard.new
    erb :game
  end 


  # start the server if ruby file executed directly
  run! if app_file == $0
end
