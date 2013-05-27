#coding: utf-8

class ClashesController < ApplicationController
  def index
    @clashes=Clash.all
  end
end