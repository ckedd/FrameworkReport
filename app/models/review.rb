class Review < ApplicationRecord
  has_many :comments
  belongs_to :user
  belongs_to :package
  vindicates :rating, presence: true, numericality: { numbers_only: true, in: 1..5 }
  vindicates :general_content, presence: true, length: { minimum: 10, maximum: 300 }
  vindicates :pros_content, presence: true, length: { minimum: 10, maximum: 100 }
  vindicates :cons_content, presence: true, length: { minimum: 10, maximum: 100 }
end
