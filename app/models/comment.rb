class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :body, presence: true
  validates :user, presence: true
  validates :post, presence: true

  delegate :first_name, to: :user, prefix: true, allow_nil: true

  scope :rating_desc, -> { order(rating: :desc) }
end
