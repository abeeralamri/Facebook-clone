class Group < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :memebr, class_name: 'User', optional: true
  has_many :posts, dependent: :destroy
  has_many :group_posts

  has_one_attached :cover


  #Validation
  validates :name, presence: true


end
