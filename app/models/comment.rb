class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review
  vindicates :content, presence: true, length: { minimum: 1, maximum: 150 }
end
