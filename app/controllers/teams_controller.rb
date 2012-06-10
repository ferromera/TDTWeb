class TeamsController < ApplicationController
  def new
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
  end
end
