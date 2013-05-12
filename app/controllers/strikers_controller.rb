#coding: utf-8

class StrikersController < ApplicationController
  def index
    @strikers = Striker.all 
  end
end