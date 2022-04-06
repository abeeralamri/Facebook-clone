require 'rails_helper'

RSpec.describe User, type: :model do 
    describe 'user registration' do 
        it "can register if password confimation exist" do 
            user = build(:user) 
            expect(user).to be_valid # user.valid?Pass if is true end
        end

        it "can register if first name or last name exist " do 
            user = build(:user) 
            expect(user).to be_valid # user.valid?Pass if is true end
        end
    end
end