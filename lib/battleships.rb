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
  # @cell = Cell.new 

  get '/' do
    @player1name = session[:player1name]
    @player2name = session[:player2name]
  	erb :index
  end

  post '/' do
    
    # session[:player1name] = params[:player1name]
    # @player1name = session[:player1name]
    # @player1 = Player.new
    # GAME.add_player(@player1)
    # @player1.name = session[:player1name]

    # session[:player2name] = params[:player2name]
    # @player2name = session[:player2name]
    # @player2 = Player.new
    # GAME.add_player(@player2)
    # @player2.name = session[:player2name]

    player_name = params[:player1name]
    player = Player.new(player_name)
    player.player_board = PlayerBoard.new
    GAME.add_player player


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
    # raise GAME.inspect
    board_to_be_displayed = GAME.player1.player_board
    # raise board_to_be_displayed.inspect
    @cells =board_to_be_displayed.grid.values.map{|cell| cell.content}.each_slice(10).to_a
  #   @grid = {}
  #     ("A".."J").to_a.each do |letter|
  #     (1..10).to_a.each do |number|
  #     @grid["#{letter}#{number}"] = @cell
  #   end
  # end
  # @grid.inspect
      # @cell_content = @cell.values.map{|cell| cell.content}.each_slice(10).to_a
  # @player_board1 = PlayerBoard.new
  # @opponent_board1 = OpponentBoard.new
    erb :game
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
