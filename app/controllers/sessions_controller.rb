#coding: utf-8
class SessionsController < ApplicationController
 
def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      if ! sign_in user
        flash[:error] = 'No puede iniciar sesión porque su cuenta está en proceso de autorización.'
        redirect_to root_path
      else 
        redirect_back_or user
      end
      
    else
      flash.now[:error] = 'Combinación correo electrónico / contraseña incorrecta'
      render 'new'
    end
  end
  def destroy
    sign_out
    redirect_to root_path
  end
end
