class Team < ActiveRecord::Base
  attr_accessible :name,:unreadNews

  validates :name , presence: true
  belongs_to :user
  has_many :players
  has_many :bids_recieved, class_name: "Bid", foreign_key: 'offered_id'
  has_many :bids_made, class_name: "Bid", foreign_key: 'bidder_id'
  
  def hasNewBids 
    bids_recieved.each do |b|
      if b.hasNotBeenRead
        return true
      end
    end
    bids_made.each do |b|
      if b.refused and b.readrefused==false
        return true
      end
    end
    return false
  end
  def readBids
    bids_recieved.each do |b|
      b.read
    end
    bids_made.each do |b|
      b.readMade
    end
    
  end
  def hasUnreadNews
    self[:unreadNews]
  end
end
