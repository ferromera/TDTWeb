class Bid < ActiveRecord::Base
  attr_accessible :description, :money, :hasBeenRead
  belongs_to :bidder , class_name: "Team" ,foreign_key: 'bidder_id'
  belongs_to :offered , class_name: "Team", foreign_key: 'offered_id'
  belongs_to :player
  
  validates :money , presence: true
  
  def read
    self[:hasBeenRead]=true
    save
  end
  def readMade
    if self[:refused]==true then
      self[:readrefused]=true
    end
    save
  end
  def refuse
    self[:refused]=true
    self[:readrefuse]=false
  end
  def hasNotBeenRead
    return (not self[:hasBeenRead])
  end
end
