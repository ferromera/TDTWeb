#coding: utf-8
include PlayersHelper
class PlayersController < ApplicationController
   before_filter :signed_in_user
  def index
    @players = Player.all(order: 'name ASC')
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
      if current_user.team.money < (getPrice (@player.overallRating))* 1E6
         flash[:error] = "Presupuesto insuficiente."
      else
          @player.team=current_user.team;
      @player.club=current_user.team.name;
      current_user.team.money-= (getPrice @player.overallRating)* 1E6
        if @player.save and current_user.team.save
          flash[:success] = "La compra se realizó exitosamente."
          News.create(content:"#{@player.team.name} ha comprado a #{@player.name} por $#{(getPrice (@player.overallRating))}M.")
        else
          flash[:error] = "Error al realizar la compra."
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
          current_user.team.money+= (getSellingPrice @player.overallRating)* 1E6
        if @player.save and current_user.team.save
          flash[:success] = "La venta se realizó exitosamente."
          News.create(content:"#{@player.team.name} ha vendido a #{@player.name} por $#{(getSellingPrice (@player.overallRating))}M.")
        else
          flash[:error] = "Error al realizar la venta."
        end
      end
    end
     redirect_to @player
  end

end
