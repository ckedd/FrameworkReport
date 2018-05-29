class Review < ApplicationRecord
  has_many :comments
  belongs_to :user
  belongs_to :package
  validates :rating, presence: true, numericality: { numbers_only: true, in: 1..5 }
  validates :general_content, presence: true, length: { minimum: 10, maximum: 300 }
  validates :pros_content, presence: true, length: { minimum: 10, maximum: 100 }
  validates :cons_content, presence: true, length: { minimum: 10, maximum: 100 }
end
