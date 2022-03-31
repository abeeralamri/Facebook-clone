class Profile < ApplicationRecord
    belongs_to :user, :optional => true
    has_one_attached :avatar
    has_one :accesses
    
    accepts_nested_attributes_for :user
    
end
