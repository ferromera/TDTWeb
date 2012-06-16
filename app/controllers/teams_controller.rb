#coding: utf-8
include TeamsHelper
class TeamsController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: [:edit, :update]
  def new
    @team = Team.new
  end
   def create
    @team = Team.new(name: params[:team][:name])
    @team.emblem= matchEmblem @team
    @team.user=current_user
    if @team.save
      flash[:success] = "Su equipo se creo correctamente !"
      redirect_to @team
    else
      render 'new'
    end
  end
  def show
    @team = Team.find(params[:id])
  end
  def edit
    @team = Team.find(params[:id])
  end
  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(name: params[:team][:name])
      flash[:success] = "Equipo Actualizado"
      redirect_to @team
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
  
  private
  def correct_user
      @user = Team.find(params[:id]).user
      redirect_to current_user, flash: { error: "No tiene autorización para realizar esta acción" }  unless current_user?(@user)
    end
  
end
