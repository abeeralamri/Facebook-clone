require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "Post should be save success" do
    post = Post.new
    post.text = "Hi friend"

    assert post.save
  end

  test "Post should not be save" do
    post = Post.new
    post.text = ""

    assert_not  post.save
  end

  
  
end
