class TournamentController < ApplicationController
  def show
    @tournament = Tournament.find(params[:id])
  end
end
