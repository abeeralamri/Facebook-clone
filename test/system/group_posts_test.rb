require "application_system_test_case"

class GroupPostsTest < ApplicationSystemTestCase
  setup do
    @group_post = group_posts(:one)
  end

  test "visiting the index" do
    visit group_posts_url
    assert_selector "h1", text: "Group posts"
  end

  test "should create group post" do
    visit group_posts_url
    click_on "New group post"

    fill_in "Content", with: @group_post.content
    fill_in "Group", with: @group_post.group_id
    fill_in "User", with: @group_post.user_id
    click_on "Create Group post"

    assert_text "Group post was successfully created"
    click_on "Back"
  end

  test "should update Group post" do
    visit group_post_url(@group_post)
    click_on "Edit this group post", match: :first

    fill_in "Content", with: @group_post.content
    fill_in "Group", with: @group_post.group_id
    fill_in "User", with: @group_post.user_id
    click_on "Update Group post"

    assert_text "Group post was successfully updated"
    click_on "Back"
  end

  test "should destroy Group post" do
    visit group_post_url(@group_post)
    click_on "Destroy this group post", match: :first

    assert_text "Group post was successfully destroyed"
  end
end
