class Group < ApplicationRecord
  belongs_to :creator , class_name: 'User'
  belongs_to :friend
end
