#coding: utf-8

class NewsController < ApplicationController
  before_filter :signed_in_user

  def index
    @news = News.paginate(page: params[:page], order: "created_at DESC")
  end
  
end