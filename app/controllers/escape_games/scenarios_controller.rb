class EscapeGames::ScenariosController < ApplicationController

  def show
    @scenario = EscapeGame.find(params[:escape_game_id]).scenarios.where(id: params[:id]).first
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

end
