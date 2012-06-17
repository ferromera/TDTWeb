require 'will_paginate/array'
class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = Micropost.all.paginate(page: params[:page])
    end
  end

  def about
  end

  def help
  end
  
  def contact
  end
end
