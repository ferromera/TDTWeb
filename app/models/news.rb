class News < ActiveRecord::Base
  attr_accessible :content
  validate :announce, :on => :create

  def announce
      Team.all.each do |t|
        t.unreadNews=true
        t.save
      end
  end  
  
end
