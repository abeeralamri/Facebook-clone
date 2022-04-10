class Comment < ApplicationRecord
    belongs_to :post
    belongs_to  :parent, class_name: 'Comment', optional: true
    has_many    :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy


    after_create_commit :notify_recipient
  before_destroy :cleanup_notifications
  has_noticed_notifications model_name: 'Notification'

  private

  def notify_recipient
    CommentNotification.with(comment: self, post: post).deliver_later(post.user)
  end

  def cleanup_notifications
    notifications_as_comment.destroy_all
  end
end

