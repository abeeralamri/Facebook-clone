class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  after_create :init_profile

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :post, dependent: :destroy, foreign_key: 'user_id'
  
  has_many :friends
  has_many :confirmed_friends, -> { where(friends: { friendship_status: true }) }, through: :friends, source: :friend
  has_many :inverse_friends, class_name: 'Friend', foreign_key: 'friend_id'
  has_many :inverse_confirmed_friends, -> { where(friendships: { friendship_status: true }) }, through: :inverse_friends, source: :user

  def init_profile
    self.build_profile.save(validate: false)
  end
end
