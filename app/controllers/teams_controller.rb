#coding: utf-8
include TeamsHelper
class TeamsController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: [:edit, :update,:dorsals,:updateDorsals,:updateAlignment,:resetAlignment]
  def new
    @team = Team.new
  end
   def create
    @team = Team.new(name: params[:team][:name])
    @team.emblem= matchEmblem @team
    @team.user=current_user
    if @team.save
      flash[:success] = "Su equipo se creo correctamente !"
      News.create(content:"#{@team.user.name} #{@team.user.lastname} ha creado su equipo: #{@team.name}.")
      redirect_to @team
    else
      render 'new'
    end
  end
  def show
    @team = Team.find(params[:id])
    @clashes=Clash.all
  end
  def edit
    @team = Team.find(params[:id])
  end
  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(name: params[:team][:name])
      @team.emblem= matchEmblem @team
      if @team.save
        flash[:success] = "Equipo Actualizado"
        News.create(content:"#{@team.user.name} #{@team.user.lastname} ha actualizado su equipo: #{@team.name}.")
        redirect_to @team
      else
        render 'edit'
      end
    else
      render 'edit'
    end
  end
  def index
    @teams = Team.all(order: 'name ASC')
  end
  def plantilla
    @team = Team.find(params[:id])
  end
  def negotiations
    @team = Team.find(params[:id])
    @team.readBids
  end
  def strikers
    @team = Team.find(params[:id])
    @strikers= Striker.where(:team => @team.name)
  end
  def dorsals
    @team = Team.find(params[:id])
    @players= @team.players
  end
  def updateDorsals
    @team = Team.find(params[:id])
    setDorsals params
    redirect_to "/teams/#{@team.id}/plantilla"
  end
  def alignment
    @team = Team.find(params[:id])
    @players= @team.players.sort{|x,y| x.name<=>y.name}
  end
  def updateAlignment
    @team = Team.find(params[:id])
    setAlignmentPosition params
    redirect_to "/teams/#{@team.id}/alignment"
  end
  def resetAlignment
    @team = Team.find(params[:id])
    resetAlignmentPosition
    redirect_to "/teams/#{@team.id}/alignment"
  end
  private
  def correct_user
      @user = Team.find(params[:id]).user
      redirect_to current_user, flash: { error: "No tiene autorización para realizar esta acción" }  unless current_user?(@user)
    end
  
end
