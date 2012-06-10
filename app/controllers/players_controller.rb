class PlayersController < ApplicationController
  def index
    @players = Player.all(order: 'name ASC')
  end

  def show
      @player = Player.find(params[:id])
  end
end
