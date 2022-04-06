class Post < ApplicationRecord
    belongs_to :user, optional: true 
    has_many_attached :photo
    has_many :likes, dependent: :destroy
    has_many :dislikes, dependent: :destroy
    has_many :wows, dependent: :destroy
    has_many :sads, dependent: :destroy
    has_many :loveys, dependent: :destroy
    has_many :angrys, dependent: :destroy
    has_many :comments

    has_noticed_notifications model_name: 'Notification'
    has_many :notifications, through: :user, dependent: :destroy
  end
  
