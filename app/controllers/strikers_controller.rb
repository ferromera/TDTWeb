#coding: utf-8
include StrikersHelper
class StrikersController < ApplicationController
  def index
    @strikers = Striker.all 
  end
  def byplayer
    @strikers = Striker.all
  end
end