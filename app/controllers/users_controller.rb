#coding: utf-8
class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy, :show]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy

  def new
    @user = User.new
    
  end
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Se ha enviado la solicitud de registración, se le notificará por mail cuando este aprobada."
      News.create(content:"#{@user.name} #{@user.lastname} se ha unido a Torneo Dream Team.")
      redirect_to root_path
    else
      render 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Perfil Actualizado"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  def index
    @users = User.paginate(page: params[:page])
  end
  def destroy
    @user=User.find(params[:id]).name
    name=@user.name
    lastname=@user.lastname
    @user.destroy
    flash[:success] = "User destroyed."
    News.create(content:"#{name} #{lastname} ya no es parte de Torneo Dream Team.")
    redirect_to users_path
  end
   
  private
     def correct_user
      @user = User.find(params[:id])
      redirect_to current_user, flash: { error: "No tiene autorización para realizar esta acción" }  unless current_user?(@user)
    end
     def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
   
end
