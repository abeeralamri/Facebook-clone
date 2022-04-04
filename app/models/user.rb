class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  after_create :init_profile


  has_many :post, dependent: :destroy, foreign_key: 'user_id'
  has_many :friend_lists
  has_many :comment, dependent: :destroy
  
  def init_profile
    self.build_profile.save(validate: false)
  end
end
