#coding: utf-8
class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  end

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Mensaje creado!"
      redirect_to root_path
    else
        @micropost.errors.full_messages.each do |msg|
          case
          when msg =="Content is too long (maximum is 140 characters)"
            flash[:error]="El mensaje es demasiado largo, el máximo es 140 caracteres."
          when msg =="Content can't be blank"
            flash[:error]="El mensaje no puede estar vacio."
          end
        end
      redirect_to root_path
    end
  end

  def destroy
  end
end