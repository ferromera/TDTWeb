#coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  protected
  def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_path, notice: "Inicie Sesión por favor"
      end
    end
end
