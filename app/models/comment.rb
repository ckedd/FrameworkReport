class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review
  validates :content, presence: true, length: { minimum: 1, maximum: 150 }
end
