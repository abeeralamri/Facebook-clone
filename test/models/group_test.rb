require "test_helper"

class GroupTest < ActiveSupport::TestCase
  test "group should be save success" do
    group = Group.new
    group.user_id = 33
    group.member_id = 31
    group.name = "My friends group"

    assert group.save
  end

  test "group should not be save" do
    group = Group.new
 
    group.name = ""

    assert_not  group.save
  end
end
