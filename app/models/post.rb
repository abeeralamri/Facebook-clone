class Post < ApplicationRecord
    belongs_to :user, optional: true 
    has_many_attached :photo
    belongs_to :group, optional: true

    has_many :likes, dependent: :destroy
    has_many :dislikes, dependent: :destroy
    has_many :wows, dependent: :destroy
    has_many :sads, dependent: :destroy
    has_many :loveys, dependent: :destroy
    has_many :angrys, dependent: :destroy
    has_many :comments

    #Validation
    validates :text, presence: true

end
