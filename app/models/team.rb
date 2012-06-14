class Team < ActiveRecord::Base
  attr_accessible :name
  attr_accessor :photo_file_name
  attr_accessor :photo_content_type
  attr_accessor :photo_file_size
  attr_accessor :photo_updated_at

  validates :name , presence: true
  belongs_to :user
  has_many :players
  has_attached_file :emblem , styles: { small: "128x128>" , thumb: "64x64>"},
                              url: "/assets/teams/:id/:style/:basename.:extension",
                              path: ":rails_root/public/assets/teams/:id/:style/:basename.:extension",
                              default_url: '/assets/teams/default_emblem_:style.png'
end
