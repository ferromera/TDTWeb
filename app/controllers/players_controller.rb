class PlayersController < ApplicationController
   before_filter :signed_in_user
  def index
    @players = Player.all(order: 'name ASC')
  end

  def show
      @player = Player.find(params[:id])
  end
end
