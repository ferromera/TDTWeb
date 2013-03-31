class Tournament < ActiveRecord::Base
  attr_accessible :name, :winner, :scorer
  has_many :standings
end
