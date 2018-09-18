class EscapeGamesController < ApplicationController

  before_action :set_escape_game, only: [:show, :edit, :update, :destroy]

  def index
    @escape_games = EscapeGame.all
  end

  def show
  end

  def new
    @escape_game = EscapeGame.new
  end

  def create
    @escape_game = EscapeGame.create(parameters)
    if @escape_game.valid?
      redirect_to escape_game_path(@escape_game)
    else
      render :new
    end
  end

  def destroy
    @escape_game.destroy
    redirect_to escape_games_path
  end

  def edit
  end

  def update
    if @escape_game.update_attributes(parameters)
      redirect_to escape_game_path(@escape_game)
    else
      render :edit
    end
  end

  def parameters
    attribute_list = EscapeGame.attribute_names
    params.require(:escape_game).permit(attribute_list.delete_if { |a| a == 'id' || a == 'updated_at' || a == 'created_at' })
  end

  def set_escape_game
    @escape_game = EscapeGame.find(params[:id])
  end

end
