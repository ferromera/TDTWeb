class Standing < ActiveRecord::Base
  attr_accessible :draw, :goalsagainst, :goalsfor, :lost, :played, :points, :teamname, :won, :prize
  belongs_to :tournament
end
