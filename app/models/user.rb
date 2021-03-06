# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  lastname   :string(255)
#  team       :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :lastname, :name, :team, :password, :password_confirmation
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  validates :name, presence: true , length: { maximum: 40 }
  validates :email, presence: true,  length: { maximum: 40 }
  validates :lastname, presence: true, length: { maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  length: { maximum: 40 }, 
        format: { with: VALID_EMAIL_REGEX },  uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  has_one :team
  has_many :microposts, dependent: :destroy
  def feed
    Micropost.where("user_id = ?", id)
  end
  
  private
    
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
