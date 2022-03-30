class Access < ApplicationRecord
    belongs_to :profile, :optional => true 
end
