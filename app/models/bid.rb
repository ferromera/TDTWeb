class Bid < ActiveRecord::Base
  attr_accessible :description, :money
  belongs_to :bidder , class_name: "Team" ,foreign_key: 'bidder_id'
  belongs_to :offered , class_name: "Team", foreign_key: 'offered_id'
  belongs_to :player
  
  validates :money , presence: true
  
end
