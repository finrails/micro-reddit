class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 240 }
  validates :body, presence: true, length: { minimum: 5, maximum: 500 }
  validates :user_id, presence: true

  belongs_to :user
  has_many :comments
end
