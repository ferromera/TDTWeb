class Team < ActiveRecord::Base
  attr_accessible :name

  validates :name , presence: true
  belongs_to :user
  has_many :players
  has_many :bids_recieved, class_name: "Bid", foreign_key: 'offered_id'
  has_many :bids_made, class_name: "Bid", foreign_key: 'bidder_id'
end
