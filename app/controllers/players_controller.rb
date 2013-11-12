#coding: utf-8
include PlayersHelper
require 'will_paginate/array'
class PlayersController < ApplicationController
   before_filter :signed_in_user
   
   
   
   
  def index
    if params[:player].nil?
        @players =Player.find(:all, order: "name ASC")
    else
      @players = case
      when params[:player][:order]=="nombreA" then Player.find(:all, order: "name ASC")
      when params[:player][:order]=="nombreD" then Player.find(:all, order: "name DESC")
      when params[:player][:order]=="posicionA" then Player.find(:all, order: "position ASC")
      when params[:player][:order]=="posicionD" then Player.find(:all, order: "position DESC")
      when params[:player][:order]=="edadA" then Player.find(:all, order: "age ASC")
      when params[:player][:order]=="edadD" then Player.find(:all, order: "age DESC")
      when params[:player][:order]=="nacionalidadA" then Player.find(:all, order: "nationality ASC")
      when params[:player][:order]=="nacionalidadD" then Player.find(:all, order: "nationality DESC")
      when params[:player][:order]=="clubA" then Player.find(:all, order: "club ASC")
      when params[:player][:order]=="clubD" then Player.find(:all, order: "club DESC")
      when params[:player][:order]=="valoracionA" then Player.find(:all, order: "overallrating ASC")
      when params[:player][:order]=="valoracionD" then Player.find(:all, order: "overallrating DESC")
      end
    end
    @players = name_filter @players ,params[:name] 
    @players = pos_filter @players ,params[:position] 
    @players = age_filter @players ,params[:agemin] ,params[:agemax]
    @players = rat_filter @players ,params[:ratmin] ,params[:ratmax]
    @players = tdt_team_filter @players ,params[:TDTteam]
    @players = @players.paginate(:page => params[:page],:per_page   => 500)
   

  end

  def show
      @player = Player.find(params[:id])
  end
  def purchase
    if current_user.team.nil?
      flash[:error] = "Debe crear un equipo para poder comprar."
      redirect_to current_user
    else
      @player=Player.find(params[:id])
      
      
      if @player.team != nil then
        flash[:error] = "El jugador pertenece a otro equipo, realice una oferta."
      else
        if current_user.team.money < (getPrice (@player.overallrating))* 1E6
           flash[:error] = "Presupuesto insuficiente."
        else
            @player.team=current_user.team;
            @player.club=current_user.team.name;
            current_user.team.money-= (getPrice @player.overallrating)* 1E6
            if @player.save and current_user.team.save
              flash[:success] = "La compra se realizó exitosamente."
              News.create(content:"#{@player.team.name} ha comprado a #{@player.name} por $#{(getPrice (@player.overallrating))}M.")
            else
              flash[:error] = "Error al realizar la compra."
            end
        end
      end
    end
    redirect_to @player
  end
  def sell
     if current_user.team.nil?
      flash[:error] = "Debe crear un equipo para poder vender."
      redirect_to current_user
    else
      @player=Player.find(params[:id])
      
      if current_user.team != @player.team 
         flash[:error] = "Este jugador no es tuyo."
      else
          @player.team=nil
          @player.club=""
          current_user.team.money+= (getSellingPrice @player.overallrating)* 1E6
        if @player.save and current_user.team.save
          flash[:success] = "La venta se realizó exitosamente."
          News.create(content:"#{current_user.team.name} ha vendido a #{@player.name} por $#{(getSellingPrice (@player.overallrating))}M.")
        else
          flash[:error] = "Error al realizar la venta."
        end
      end
    end
     redirect_to @player
  end
 
  
    
   
end
