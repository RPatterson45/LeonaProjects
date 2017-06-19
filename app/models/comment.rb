class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  delegate :first_name, to: :user, prefix: true, allow_nil: true

  scope :rating_desc, -> { order(rating: :desc) }
end
