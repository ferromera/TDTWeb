#coding: utf-8
include PlayersHelper
class BidsController < ApplicationController
   before_filter :signed_in_user
   before_filter :correct_user,   only: [:acept]
   
  def create
    @bid=Bid.new
    if current_user.team.nil?
       flash[:error]="Debe crear un equipo primero"
       redirect_to root_path
    else
      @bid.bidder=current_user.team
      @bid.money=params[:bid][:money]
      @bid.player=Player.find(params[:bid][:player])
      @bid.offered=@bid.player.team
      @bid.description=params[:bid][:description]
      if @bid.save
        flash[:success]="La oferta se realizó correctamente!"
        redirect_to @bid.player
      else
        flash[:error]="Ocurrió un error al realizar la oferta."
        redirect_to @bid.player
      end
    end
    
  end
  def acept
    @bid=Bid.find(params[:id])
    if @bid.bidder.money < @bid.money
       flash[:error]="#{@bid.bidder.name} no tiene presupuesto para realizar la compra."
    else
      @bid.player.team=@bid.bidder
      @bid.player.club=@bid.bidder.name
      @bid.bidder.money-=@bid.money
      @bid.offered.money+=@bid.money
      if @bid.player.save and @bid.bidder.save and @bid.offered.save and @bid.delete
        flash[:success]="La transacción se realizó exitosamente."
        News.create(content:"#{@bid.bidder.name} ha comprado a #{@bid.player.name} al #{@bid.offered.name} por $#{(@bid.money/1E6).round(2)}M.")
        redirect_to "/teams/#{current_user.team.id}/negotiations"
      else
        flash[:error]="Ocurrió un error al realizar la transacción."
        redirect_to "/teams/#{current_user.team.id}/negotiations"
      end
    end
  end
  def destroy
    @bid=Bid.find(params[:id])
    @bid.delete
    redirect_to "/teams/#{current_user.team.id}/negotiations"
  end
  private 
  def correct_user
    @user = Bid.find(params[:id]).offered.user
      redirect_to current_user, flash: { error: "No tiene autorización para realizar esta acción" }  unless current_user?(@user)
  end
end