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
    @player1 = session[:player1]
  	erb :index
  end

  post '/' do
    session[:player1] = Player.new
    @player1 = session[:player1]
    @player1.name = params[:player1name]
    @player1.player_board = PlayerBoard.new
    GAME.add_player(@player1)
    erb :index
  end

  get '/new_player' do
    erb :new_player
  end

  get '/game' do
    @player1 = session[:player1]
    board_to_be_displayed = @player1.player_board
    @cells = board_to_be_displayed.grid.values.map{|cell| cell.content}.each_slice(10).to_a
    erb :game
  end 

  post '/add_ships' do
    @player1 = session[:player1]
    @player1.add_ships
    redirect '/game'
  end

  get '/place_aircraft_carrier' do
    @player1 = session[:player1]
    @ship = @player1.ships[0]
    @size = 5
    erb :place 
  end

  post '/place_aircraft_carrier' do
    @size = 5
    @player1 = session[:player1]
    @cell1 = params[:cell1]
    @cell2 = params[:cell2]
    @cell3 = params[:cell3]
    @cell4 = params[:cell4]
    @cell5 = params[:cell5]
    @ship = @player1.ships[0]
    @player1.player_board.set_a_boat_size_5(@cell1, @cell2, @cell3, @cell4, @cell5, @ship)
    redirect '/game'
  end

  get '/place_battleship' do
    @player1 = session[:player1]
    @size = 4
    erb :place 
  end

  post '/place_battleship' do 
    @player1 = session[:player1]
    @cell1 = params[:cell1]
    @cell2 = params[:cell2]
    @cell3 = params[:cell3]
    @cell4 = params[:cell4]
    @ship = @player1.ships[1]
    @player1.player_board.set_a_boat_size_4(@cell1, @cell2, @cell3, @cell4, @ship)
    redirect '/game'
  end 

  get '/place_submarine' do
    @player1 = session[:player1]
    @size = 3
    erb :place 
  end

  post '/place_submarine' do 
    @player1 = session[:player1]
    @cell1 = params[:cell1]
    @cell2 = params[:cell2]
    @cell3 = params[:cell3]
    @ship = @player1.ships[2]
    @player1.player_board.set_a_boat_size_3(@cell1, @cell2, @cell3, @ship)
    redirect '/game'
  end 

  get '/place_destroyer' do
    @player1 = session[:player1]
    @size = 3
    erb :place 
  end

  post '/place_destroyer' do 
    @player1 = session[:player1]
    @cell1 = params[:cell1]
    @cell2 = params[:cell2]
    @cell3 = params[:cell3]
    @ship = @player1.ships[3]
    @player1.player_board.set_a_boat_size_3(@cell1, @cell2, @cell3, @ship)
    redirect '/game'
  end 

  get '/place_patrol_boat' do
    @player1 = session[:player1]
    @size = 2
    erb :place 
  end

  post '/place_patrol_boat' do 
    @player1 = session[:player1]
    @cell1 = params[:cell1]
    @cell2 = params[:cell2]
    @ship = @player1.ships[2]
    @player1.player_board.set_a_boat_size_2(@cell1, @cell2, @ship)
    redirect '/game'
  end 


  # start the server if ruby file executed directly
  run! if app_file == $0
end




