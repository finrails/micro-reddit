class Comment < ApplicationRecord
  has_many :replies, class_name: 'Comment', foreign_key: 'comment_author_id'

  belongs_to :comment_author, class_name: 'Comment', optional: true
  belongs_to :post

end
